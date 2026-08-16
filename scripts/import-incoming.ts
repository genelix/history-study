import fs from 'fs';
import path from 'path';

interface IncomingEvent {
  id: string;
  title: string;
  title_en?: string;
  yearStart?: number;
  year_start?: number;
  yearEnd?: number;
  year_end?: number;
  region?: string;
  region_id?: string;
  sub_region?: string;
  category?: string;
  category_id?: string;
  importance: 'A' | 'B' | 'C';
  precision?: string;
  date_precision?: 'exact' | 'approximate' | 'range' | 'unknown';
  summary: string;
  historicalSignificance?: string;
  historical_significance?: string;
  cause?: string;
  consequence?: string;
  relatedPeople?: (string | { id: string; name_ko: string; role_title?: string })[];
  related_people?: { id: string; name_ko: string; role_title?: string }[];
  relatedEvents?: (string | { target_event_id: string; relation_type?: string })[];
  related_events?: { target_event_id: string; relation_type?: string }[];
  sources?: (string | { title: string; author?: string; publisher?: string; url?: string })[];
  notes?: string;
}

export function convertAndMergeIncomingData(incomingJsonPath: string) {
  console.log(`🚀 [HistoryGrid] Processing incoming data from: ${incomingJsonPath}`);

  if (!fs.existsSync(incomingJsonPath)) {
    console.error(`❌ File not found: ${incomingJsonPath}`);
    return;
  }

  let raw = fs.readFileSync(incomingJsonPath, 'utf-8').trim();

  // HTML 태그 등이 섞여있는 경우 순수 JSON 블록 추출
  if (raw.startsWith('<') || raw.includes('<html>')) {
    const jsonMatch = raw.match(/(\{[\s\S]*\}|\[[\s\S]*\])/);
    if (jsonMatch) {
      raw = jsonMatch[0];
    }
  }

  let parsed: any;
  try {
    parsed = JSON.parse(raw);
  } catch (err) {
    console.error('❌ Failed to parse JSON:', err);
    return;
  }

  // 배열 추출 (최상위가 배열이거나, { events: [] }, { data: [] } 등 객체인 경우)
  let incomingList: IncomingEvent[] = [];
  if (Array.isArray(parsed)) {
    incomingList = parsed;
  } else if (parsed && typeof parsed === 'object') {
    if (Array.isArray(parsed.events)) {
      incomingList = parsed.events;
    } else if (Array.isArray(parsed.data)) {
      incomingList = parsed.data;
    } else if (parsed.id && parsed.title) {
      incomingList = [parsed];
    } else {
      console.error('❌ Could not find events array in JSON object.');
      return;
    }
  }

  const seedPath = path.join(process.cwd(), 'data/seed/historical_events.json');
  let existingList: any[] = [];
  if (fs.existsSync(seedPath)) {
    existingList = JSON.parse(fs.readFileSync(seedPath, 'utf-8'));
  }

  const eventMap = new Map<string, any>();
  existingList.forEach((e) => eventMap.set(e.id, e));

  let addedCount = 0;
  let updatedCount = 0;

  incomingList.forEach((item) => {
    let start = item.year_start ?? item.yearStart ?? 1;
    let end = item.year_end ?? item.yearEnd ?? start;

    // 연도 논리 보정 (start <= end)
    if (start > end) {
      const temp = start;
      start = end;
      end = temp;
    }

    // 0년 보정
    if (start === 0) start = 1;
    if (end === 0) end = 1;

    const region = item.region_id ?? item.region ?? 'WEST';
    const category = item.category_id ?? item.category ?? 'POLITICS';
    
    const rawPrecision = item.date_precision ?? item.precision ?? 'exact';
    const validPrecisions = ['exact', 'approximate', 'range', 'unknown'];
    const precision = validPrecisions.includes(rawPrecision) ? rawPrecision : 'approximate';
    const significance = item.historical_significance ?? item.historicalSignificance;

    // related_people 변환
    const rawPeople = item.related_people ?? item.relatedPeople ?? [];
    const people = rawPeople.map((p) => {
      if (typeof p === 'string') {
        const id = p.toLowerCase().replace(/[^a-z0-9가-힣]/g, '-');
        return { id, name_ko: p, role_title: '주요 인물' };
      }
      return p;
    });

    // related_events 변환
    const rawEvents = item.related_events ?? item.relatedEvents ?? [];
    const relations = rawEvents.map((r) => {
      if (typeof r === 'string') {
        return { target_event_id: r, relation_type: 'SYNCHRONOUS' };
      }
      return r;
    });

    // sources 변환
    const rawSources = item.sources ?? [];
    const sources = rawSources.map((s) => {
      if (typeof s === 'string') {
        return { title: s };
      }
      return s;
    });

    const formatted = {
      id: item.id,
      title: item.title,
      title_en: item.title_en,
      region_id: region,
      sub_region: item.sub_region,
      category_id: category,
      importance: item.importance || 'A',
      year_start: start,
      year_end: end,
      date_precision: precision,
      summary: item.summary,
      historical_significance: significance,
      cause: item.cause,
      consequence: item.consequence,
      confidence: 'HIGH',
      related_people: people,
      related_events: relations,
      sources: sources,
    };

    if (eventMap.has(item.id)) {
      updatedCount++;
    } else {
      addedCount++;
    }

    eventMap.set(item.id, formatted);
  });

  const merged = Array.from(eventMap.values());
  // 연도순 정렬
  merged.sort((a, b) => {
    if (a.year_start !== b.year_start) return a.year_start - b.year_start;
    return a.year_end - b.year_end;
  });

  // 1. data/seed/historical_events.json 저장
  fs.writeFileSync(seedPath, JSON.stringify(merged, null, 2), 'utf-8');
  console.log(`✅ [Merge Completed] Added: ${addedCount}, Updated: ${updatedCount}, Total Events: ${merged.length}`);

  // 2. supabase/seed/seed_data.sql 재생성
  generateSeedSql(merged);
}

function generateSeedSql(events: any[]) {
  const sqlLines: string[] = ['-- HistoryGrid Seed Data SQL', 'BEGIN;'];

  for (const e of events) {
    const title = (e.title || '').replace(/'/g, "''");
    const title_en = (e.title_en || '').replace(/'/g, "''");
    const sub_region = (e.sub_region || '').replace(/'/g, "''");
    const summary = (e.summary || '').replace(/'/g, "''");
    const signif = (e.historical_significance || '').replace(/'/g, "''");
    const cause = (e.cause || '').replace(/'/g, "''");
    const consequence = (e.consequence || '').replace(/'/g, "''");

    sqlLines.push(`
INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('${e.id}', '${title}', '${title_en}', '${e.region_id}', '${sub_region}', '${e.category_id}', '${e.importance}', ${e.year_start}, ${e.year_end}, '${e.date_precision || 'exact'}', '${summary}', '${signif}', '${cause}', '${consequence}', '${e.confidence || 'HIGH'}', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();
`);
  }

  sqlLines.push('COMMIT;');

  const sqlPath = path.join(process.cwd(), 'supabase/seed/seed_data.sql');
  fs.writeFileSync(sqlPath, sqlLines.join('\n'), 'utf-8');
  console.log('✅ Generated supabase/seed/seed_data.sql successfully.');
}

// 직접 실행 시 첫 번째 인자 파일 처리
const targetFile = process.argv[2] || path.join(process.cwd(), 'data/incoming/new_events.json');
if (fs.existsSync(targetFile)) {
  convertAndMergeIncomingData(targetFile);
}
