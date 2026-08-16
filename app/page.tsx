'use client';

import React, { useState, useEffect, useMemo } from 'react';
import { HistoricalEvent, TimelineFilterState, RegionId, CategoryId, ImportanceLevel } from '@/types/database.types';
import { HistoricalEventService } from '@/lib/services/eventService';
import { HeaderNav } from '@/components/navigation/HeaderNav';
import { FilterSidebar } from '@/components/filters/FilterSidebar';
import { TimelineContainer } from '@/components/timeline/TimelineContainer';
import { EventDetailPanel } from '@/components/event-detail/EventDetailPanel';
import { SyncComparisonModal } from '@/components/synchronous/SyncComparisonModal';
import { PlacedEvent, ZOOM_CONFIGS } from '@/lib/timeline/coordinates';

export default function ChronoScopeHome() {
  const [filterState, setFilterState] = useState<TimelineFilterState>({
    regions: ['WEST', 'CHINA', 'KOREA', 'OTHER_REGIONS', 'CLIMATE'],
    categories: [
      'POLITICS',
      'PERSON',
      'INSTITUTION',
      'RELIGION',
      'SCIENCE',
      'ART_CULTURE',
      'CLIMATE_ENVIRONMENT',
      'ECONOMY',
    ],
    importanceLevels: ['A', 'B', 'C'],
    zoomLevel: '100', // 기본 100년 모드
    searchQuery: '',
    currentYearCenter: 1400, // 기본 중심 연도: 1400년 (르네상스/조선건국/명나라 격변기)
  });

  const [allEvents, setAllEvents] = useState<HistoricalEvent[]>([]);
  const [isFilterOpen, setIsFilterOpen] = useState(true);
  const [selectedEvent, setSelectedEvent] = useState<HistoricalEvent | null>(null);
  const [isSyncModalOpen, setIsSyncModalOpen] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  const [isMounted, setIsMounted] = useState(false);

  useEffect(() => {
    setIsMounted(true);
  }, []);

  // 이벤트 데이터 로드
  useEffect(() => {
    async function loadData() {
      setIsLoading(true);
      const events = await HistoricalEventService.getEvents(filterState);
      setAllEvents(events);
      setIsLoading(false);
    }
    loadData();
  }, []);

  // 줌 레벨 변경 시 중요도 필터 자동 연동 (세부계획서 원칙)
  const handleZoomChange = (level: '1000' | '100' | '10') => {
    let levels: ImportanceLevel[] = ['A', 'B', 'C'];
    if (level === '1000') {
      levels = ['A'];
    } else if (level === '100') {
      levels = ['A', 'B'];
    } else if (level === '10') {
      levels = ['A', 'B', 'C'];
    }

    setFilterState((prev) => ({
      ...prev,
      zoomLevel: level,
      importanceLevels: levels,
    }));
  };

  // 검색어 변경
  const handleSearchChange = (query: string) => {
    setFilterState((prev) => ({
      ...prev,
      searchQuery: query,
    }));
  };

  // 연도 직접 점프 (최소 BC 3000년 ~ 최대 AD 2050년 바운딩)
  const handleJumpToYear = (year: number) => {
    const bounded = Math.max(-3000, Math.min(2050, year));
    setFilterState((prev) => ({
      ...prev,
      currentYearCenter: bounded,
    }));
  };

  // 필터링된 이벤트 목록
  const filteredEvents = useMemo(() => {
    return HistoricalEventService.getLocalFilteredEvents(filterState);
  }, [filterState]);

  // 검색 시 첫 번째 매칭 이벤트로 자동 점프
  useEffect(() => {
    if (filterState.searchQuery.trim() !== '' && filteredEvents.length > 0) {
      const firstMatch = filteredEvents[0];
      setFilterState((prev) => ({
        ...prev,
        currentYearCenter: Math.max(-3000, Math.min(2050, firstMatch.year_start)),
      }));
    }
  }, [filterState.searchQuery, filteredEvents]);

  const handleSelectEvent = (event: PlacedEvent | HistoricalEvent) => {
    setSelectedEvent(event);
  };

  const handleSelectRelatedEventId = async (id: string) => {
    const found = await HistoricalEventService.getEventById(id);
    if (found) {
      setSelectedEvent(found);
      handleJumpToYear(found.year_start);
    }
  };

  if (!isMounted) {
    return (
      <div className="flex h-screen w-screen flex-col items-center justify-center bg-slate-950 text-slate-400 font-sans">
        <div className="flex items-center gap-3 animate-pulse">
          <div className="h-8 w-8 rounded-lg bg-indigo-600/50" />
          <span className="text-sm font-semibold text-slate-300">HistoryGrid 역사 시간지도 로딩 중...</span>
        </div>
      </div>
    );
  }

  return (
    <div className="flex h-screen w-screen flex-col overflow-hidden bg-slate-950 text-slate-100 font-sans">
      {/* 상단 네비게이션 */}
      <HeaderNav
        currentCenterYear={filterState.currentYearCenter}
        zoomLevel={filterState.zoomLevel}
        searchQuery={filterState.searchQuery}
        isFilterOpen={isFilterOpen}
        totalFilteredCount={filteredEvents.length}
        onZoomChange={handleZoomChange}
        onSearchChange={handleSearchChange}
        onJumpToYear={handleJumpToYear}
        onOpenSyncModal={() => setIsSyncModalOpen(true)}
        onToggleFilter={() => setIsFilterOpen(!isFilterOpen)}
      />

      {/* 메인 작업 영역: 필터 사이드바 + 타임라인 뷰포트 */}
      <div className="relative flex flex-1 overflow-hidden">
        {/* 접이식 필터 사이드바 */}
        <FilterSidebar
          filterState={filterState}
          onFilterChange={setFilterState}
          totalFilteredCount={filteredEvents.length}
          isOpen={isFilterOpen}
          onToggle={() => setIsFilterOpen(false)}
        />

        {/* 사이드바가 닫혔을 때 표시되는 좌측 상단 플로팅 필터 열기 버튼 */}
        {!isFilterOpen && (
          <>
            <button
              onClick={() => setIsFilterOpen(true)}
              title="통섭 필터 패널 열기"
              className="absolute left-3 top-3 z-30 flex items-center gap-2 rounded-xl border border-indigo-500/50 bg-slate-900/95 px-3 py-2 text-xs font-bold text-indigo-100 shadow-2xl backdrop-blur-md hover:bg-indigo-950 hover:text-white hover:border-indigo-400 transition-all hover:scale-105 animate-in fade-in"
            >
              <span>🎛️ 필터 패널 열기</span>
              <span className="rounded-md bg-indigo-600/80 px-2 py-0.5 text-[11px] text-white font-mono font-semibold shadow-inner">
                {filteredEvents.length}
              </span>
            </button>

            {/* 좌측 중앙 고정 도킹 탭 핸들 */}
            <button
              onClick={() => setIsFilterOpen(true)}
              title="필터 패널 펼치기"
              className="absolute left-0 top-1/3 -translate-y-1/2 z-30 hidden sm:flex flex-col items-center gap-1.5 rounded-r-xl border-y border-r border-indigo-400/60 bg-gradient-to-b from-indigo-600 to-indigo-800 py-3.5 px-1.5 text-[11px] font-bold text-white shadow-2xl hover:from-indigo-500 hover:to-indigo-700 hover:pl-2.5 transition-all cursor-pointer group"
            >
              <span className="text-xs transition-transform group-hover:translate-x-0.5">▶</span>
              <span className="[writing-mode:vertical-lr] tracking-widest text-[10px] text-indigo-100 font-semibold">
                필터 열기
              </span>
            </button>
          </>
        )}

        <main className="relative flex flex-1 flex-col overflow-hidden">
          <TimelineContainer
            events={filteredEvents}
            zoomLevel={filterState.zoomLevel}
            currentCenterYear={filterState.currentYearCenter}
            selectedEventId={selectedEvent?.id || null}
            activeRegions={filterState.regions}
            onSelectEvent={handleSelectEvent}
            onCenterYearChange={handleJumpToYear}
          />
        </main>
      </div>

      {/* 우측 슬라이드형 이벤트 상세 정보 패널 */}
      <EventDetailPanel
        event={selectedEvent}
        onClose={() => setSelectedEvent(null)}
        onSelectRelatedEventId={handleSelectRelatedEventId}
        onJumpToEventYear={handleJumpToYear}
      />

      {/* 동시대 통섭 비교 모달 */}
      <SyncComparisonModal
        isOpen={isSyncModalOpen}
        onClose={() => setIsSyncModalOpen(false)}
        onSelectEvent={handleSelectEvent}
      />
    </div>
  );
}
