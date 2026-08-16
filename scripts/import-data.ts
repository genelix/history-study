import fs from 'fs';
import path from 'path';
import { Client } from 'pg';
import dotenv from 'dotenv';

dotenv.config({ path: '.env.local' });

async function runMigrationAndImport() {
  const dbUrl = process.env.DATABASE_URL;
  if (!dbUrl) {
    console.error('❌ DATABASE_URL is not set in .env.local!');
    process.exit(1);
  }

  console.log('🚀 [ChronoScope] Connecting to Supabase PostgreSQL...');
  const client = new Client({
    connectionString: dbUrl,
    ssl: { rejectUnauthorized: false },
  });

  try {
    await client.connect();
    console.log('✅ Connected to Database successfully.');

    // 1. DDL 마이그레이션 실행
    const migrationPath = path.join(process.cwd(), 'supabase/migrations/20260816000000_init_chronoscope_schema.sql');
    const ddlSql = fs.readFileSync(migrationPath, 'utf-8');
    console.log('📦 Executing schema migration DDL...');
    await client.query(ddlSql);
    console.log('✅ Schema migration completed.');

    // 2. 시드 데이터 읽기 및 인서트
    const seedPath = path.join(process.cwd(), 'data/seed/historical_events.json');
    const events = JSON.parse(fs.readFileSync(seedPath, 'utf-8'));
    console.log(`📥 Ingesting ${events.length} historical events...`);

    for (const evt of events) {
      // 2-1. Events 테이블 Upsert
      const insertEventQuery = `
        INSERT INTO events (
          id, title, title_en, region_id, sub_region, category_id, importance,
          year_start, year_end, date_precision, summary, historical_significance,
          cause, consequence, confidence, review_status
        ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16)
        ON CONFLICT (id) DO UPDATE SET
          title = EXCLUDED.title,
          title_en = EXCLUDED.title_en,
          region_id = EXCLUDED.region_id,
          sub_region = EXCLUDED.sub_region,
          category_id = EXCLUDED.category_id,
          importance = EXCLUDED.importance,
          year_start = EXCLUDED.year_start,
          year_end = EXCLUDED.year_end,
          date_precision = EXCLUDED.date_precision,
          summary = EXCLUDED.summary,
          historical_significance = EXCLUDED.historical_significance,
          cause = EXCLUDED.cause,
          consequence = EXCLUDED.consequence,
          confidence = EXCLUDED.confidence,
          review_status = EXCLUDED.review_status,
          updated_at = NOW();
      `;

      await client.query(insertEventQuery, [
        evt.id,
        evt.title,
        evt.title_en || null,
        evt.region_id,
        evt.sub_region || null,
        evt.category_id,
        evt.importance,
        evt.year_start,
        evt.year_end,
        evt.date_precision || 'exact',
        evt.summary,
        evt.historical_significance || null,
        evt.cause || null,
        evt.consequence || null,
        evt.confidence || 'HIGH',
        'APPROVED',
      ]);

      // 2-2. People & Event_People 처리
      if (evt.related_people && Array.isArray(evt.related_people)) {
        for (const p of evt.related_people) {
          const insertPersonQuery = `
            INSERT INTO people (id, name_ko, name_en, role_title)
            VALUES ($1, $2, $3, $4)
            ON CONFLICT (id) DO UPDATE SET
              name_ko = EXCLUDED.name_ko,
              role_title = EXCLUDED.role_title;
          `;
          await client.query(insertPersonQuery, [p.id, p.name_ko, p.name_en || null, p.role_title || null]);

          const insertEventPeopleQuery = `
            INSERT INTO event_people (event_id, person_id, relationship)
            VALUES ($1, $2, $3)
            ON CONFLICT (event_id, person_id) DO NOTHING;
          `;
          await client.query(insertEventPeopleQuery, [evt.id, p.id, p.role_title || 'KEY_FIGURE']);
        }
      }

      // 2-3. Sources 처리
      if (evt.sources && Array.isArray(evt.sources)) {
        for (const s of evt.sources) {
          const insertSourceQuery = `
            INSERT INTO sources (event_id, title, author, publisher, url)
            VALUES ($1, $2, $3, $4, $5);
          `;
          await client.query(insertSourceQuery, [
            evt.id,
            s.title,
            s.author || null,
            s.publisher || null,
            s.url || null,
          ]);
        }
      }

      // 2-4. Event Relations 처리
      if (evt.related_events && Array.isArray(evt.related_events)) {
        for (const rel of evt.related_events) {
          const insertRelQuery = `
            INSERT INTO event_relations (source_event_id, target_event_id, relation_type, description)
            VALUES ($1, $2, $3, $4);
          `;
          try {
            await client.query(insertRelQuery, [
              evt.id,
              rel.target_event_id,
              rel.relation_type,
              rel.description || null,
            ]);
          } catch {
            // target_event_id가 아직 없는 경우 등 무시
          }
        }
      }
    }

    const countRes = await client.query('SELECT COUNT(*) FROM events;');
    console.log(`\n🎉 [Import Success] Total events in Supabase DB: ${countRes.rows[0].count}`);
  } catch (err) {
    console.error('❌ Error during migration/import:', err);
  } finally {
    await client.end();
  }
}

runMigrationAndImport();
