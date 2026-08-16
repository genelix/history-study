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
    regions: ['WEST', 'CHINA', 'KOREA', 'CLIMATE'],
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

  // 연도 직접 점프
  const handleJumpToYear = (year: number) => {
    setFilterState((prev) => ({
      ...prev,
      currentYearCenter: year,
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
        currentYearCenter: firstMatch.year_start,
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
          <span className="text-sm font-semibold text-slate-300">ChronoScope 역사 시간지도 로딩 중...</span>
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
        onZoomChange={handleZoomChange}
        onSearchChange={handleSearchChange}
        onJumpToYear={handleJumpToYear}
        onOpenSyncModal={() => setIsSyncModalOpen(true)}
      />

      {/* 메인 작업 영역: 필터 사이드바 + 타임라인 뷰포트 */}
      <div className="relative flex flex-1 overflow-hidden">
        <FilterSidebar
          filterState={filterState}
          onFilterChange={setFilterState}
          totalFilteredCount={filteredEvents.length}
        />

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
