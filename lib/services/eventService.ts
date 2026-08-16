import { supabase } from '@/lib/supabase/client';
import { HistoricalEvent, TimelineFilterState, RegionId, CategoryId, ImportanceLevel } from '@/types/database.types';
import localSeedData from '@/data/seed/historical_events.json';

export class HistoricalEventService {
  /**
   * 필터 및 시간 범위에 해당하는 이벤트 목록을 조회합니다.
   * Supabase DB 조회를 우선 시도하며, 실패 시 로컬 시드 데이터를 필터링하여 반환합니다.
   */
  static async getEvents(
    filters: TimelineFilterState,
    windowStart?: number,
    windowEnd?: number
  ): Promise<HistoricalEvent[]> {
    try {
      let query = supabase
        .from('events')
        .select(`
          *,
          people:event_people(relationship, person:people(*)),
          relations:event_relations!event_relations_source_event_id_fkey(*),
          sources(*)
        `)
        .eq('review_status', 'APPROVED');

      if (filters.regions.length > 0) {
        query = query.in('region_id', filters.regions);
      }
      if (filters.categories.length > 0) {
        query = query.in('category_id', filters.categories);
      }
      if (filters.importanceLevels.length > 0) {
        query = query.in('importance', filters.importanceLevels);
      }

      // 시간 범위 필터 (오버랩 조건: event_start <= windowEnd && event_end >= windowStart)
      if (windowStart !== undefined && windowEnd !== undefined) {
        query = query.lte('year_start', windowEnd).gte('year_end', windowStart);
      }

      const { data, error } = await query;

      if (!error && data && data.length > 0) {
        return data as HistoricalEvent[];
      }
    } catch (err) {
      console.warn('⚠️ Supabase fetch fallback to local curated data:', err);
    }

    // Supabase 연결 실패 또는 데이터가 아직 없는 경우 로컬 데이터 fallback
    return this.getLocalFilteredEvents(filters, windowStart, windowEnd);
  }

  /**
   * 로컬 시드 데이터 필터링 및 검색
   */
  static getLocalFilteredEvents(
    filters: TimelineFilterState,
    windowStart?: number,
    windowEnd?: number
  ): HistoricalEvent[] {
    const rawList = localSeedData as unknown as HistoricalEvent[];

    return rawList.filter((event) => {
      // 1. 지역 필터
      if (filters.regions.length > 0 && !filters.regions.includes(event.region_id)) {
        return false;
      }

      // 2. 카테고리 필터
      if (filters.categories.length > 0 && !filters.categories.includes(event.category_id)) {
        return false;
      }

      // 3. 중요도 필터
      if (filters.importanceLevels.length > 0 && !filters.importanceLevels.includes(event.importance)) {
        return false;
      }

      // 4. 시간 범위 필터 (교집합 검사)
      if (windowStart !== undefined && windowEnd !== undefined) {
        if (event.year_start > windowEnd || event.year_end < windowStart) {
          return false;
        }
      }

      // 5. 검색어 필터
      if (filters.searchQuery && filters.searchQuery.trim() !== '') {
        const query = filters.searchQuery.toLowerCase().trim();
        const inTitle = event.title.toLowerCase().includes(query);
        const inSummary = event.summary.toLowerCase().includes(query);
        const inSubRegion = event.sub_region?.toLowerCase().includes(query) || false;
        const inSignificance = event.historical_significance?.toLowerCase().includes(query) || false;
        const inPeople = event.people?.some((p) => p.name_ko.toLowerCase().includes(query)) || false;

        if (!inTitle && !inSummary && !inSubRegion && !inSignificance && !inPeople) {
          return false;
        }
      }

      return true;
    });
  }

  /**
   * 단일 이벤트 상세 조회
   */
  static async getEventById(id: string): Promise<HistoricalEvent | null> {
    try {
      const { data, error } = await supabase
        .from('events')
        .select(`
          *,
          people:event_people(relationship, person:people(*)),
          relations:event_relations!event_relations_source_event_id_fkey(*),
          sources(*)
        `)
        .eq('id', id)
        .single();

      if (!error && data) {
        return data as HistoricalEvent;
      }
    } catch {
      // fallback
    }

    const found = (localSeedData as unknown as HistoricalEvent[]).find((e) => e.id === id);
    return found || null;
  }

  /**
   * 특정 연도/세기의 동시대 통섭 사건들을 모아서 반환합니다.
   */
  static getSynchronousEvents(centerYear: number, spanYears: number = 100): {
    west: HistoricalEvent[];
    china: HistoricalEvent[];
    korea: HistoricalEvent[];
    climate: HistoricalEvent[];
  } {
    const halfSpan = spanYears / 2;
    const start = centerYear - halfSpan;
    const end = centerYear + halfSpan;

    const all = localSeedData as unknown as HistoricalEvent[];
    const inRange = all.filter((e) => !(e.year_start > end || e.year_end < start));

    return {
      west: inRange.filter((e) => e.region_id === 'WEST'),
      china: inRange.filter((e) => e.region_id === 'CHINA'),
      korea: inRange.filter((e) => e.region_id === 'KOREA'),
      climate: inRange.filter((e) => e.region_id === 'CLIMATE' || e.category_id === 'CLIMATE_ENVIRONMENT'),
    };
  }
}
