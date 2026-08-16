'use client';

import React from 'react';
import { RegionId, HistoricalEvent } from '@/types/database.types';
import { TimelineDimensions, calculateEventLanes, PlacedEvent } from '@/lib/timeline/coordinates';
import { EventItem } from './EventItem';
import { KoreanKingsTrack } from './KoreanKingsTrack';

interface TimelineTrackProps {
  regionId: RegionId;
  title: string;
  flag: string;
  events: HistoricalEvent[];
  dimensions: TimelineDimensions;
  selectedEventId: string | null;
  onSelectEvent: (event: PlacedEvent) => void;
}

const REGION_BADGES: Record<RegionId, { bg: string; border: string; text: string }> = {
  WEST: { bg: 'bg-indigo-950/40', border: 'border-indigo-800/40', text: 'text-indigo-300' },
  CHINA: { bg: 'bg-rose-950/40', border: 'border-rose-800/40', text: 'text-rose-300' },
  KOREA: { bg: 'bg-sky-950/40', border: 'border-sky-800/40', text: 'text-sky-300' },
  CLIMATE: { bg: 'bg-teal-950/40', border: 'border-teal-800/40', text: 'text-teal-300' },
};

export const TimelineTrack: React.FC<TimelineTrackProps> = ({
  regionId,
  title,
  flag,
  events,
  dimensions,
  selectedEventId,
  onSelectEvent,
}) => {
  // 현재 가시 뷰포트 및 전후 버퍼 범위 내의 이벤트만 필터링하여 레인 배치 최적화
  const visibleEvents = React.useMemo(() => {
    const span = dimensions.windowEnd - dimensions.windowStart;
    const buffer = span * 0.8; // 좌우 80% 여유 버퍼
    const minYear = dimensions.windowStart - buffer;
    const maxYear = dimensions.windowEnd + buffer;
    return events.filter((e) => !(e.year_start > maxYear || e.year_end < minYear));
  }, [events, dimensions.windowStart, dimensions.windowEnd]);

  const placedEvents = React.useMemo(() => {
    return calculateEventLanes(visibleEvents, dimensions);
  }, [visibleEvents, dimensions]);
  
  // 최대 레인 수에 따라 트랙 높이 동적 계산 (기본 최소 140px, 레인당 40px)
  const maxLane = placedEvents.reduce((max, e) => Math.max(max, e.lane), 0);
  const trackHeight = Math.max(140, (maxLane + 1) * 40 + 24);

  const badge = REGION_BADGES[regionId] || REGION_BADGES.WEST;

  return (
    <div className="relative border-b border-slate-800/80 bg-slate-950/40 transition-all hover:bg-slate-900/20">
      {/* 한국사 트랙인 경우 상단에 역대 국왕 재위 연표 전용 레인 렌더링 */}
      {regionId === 'KOREA' && <KoreanKingsTrack dimensions={dimensions} />}

      {/* 트랙 고정 좌측 헤더 */}
      <div className="sticky left-4 z-20 top-2 inline-flex items-center gap-2 rounded-lg border px-2.5 py-1 text-xs font-bold shadow-md backdrop-blur-md mb-2 mt-2 pointer-events-none select-none bg-slate-900/90 border-slate-800">
        <span className="text-sm">{flag}</span>
        <span className={badge.text}>{title}</span>
        <span className="rounded-full bg-slate-800 px-1.5 py-0.2 text-[10px] text-slate-400 font-mono">
          {events.length}
        </span>
      </div>

      {/* 이벤트 배치 영역 */}
      <div
        style={{ width: `${dimensions.widthPx}px`, height: `${trackHeight}px` }}
        className="relative overflow-visible"
      >
        {placedEvents.length === 0 ? (
          <div className="absolute inset-0 flex items-center justify-center text-xs text-slate-600 italic select-none">
            해당 시대 범위에 등록된 사건이 없습니다.
          </div>
        ) : (
          placedEvents.map((evt) => (
            <EventItem
              key={evt.id}
              event={evt}
              onSelect={onSelectEvent}
              isSelected={selectedEventId === evt.id}
            />
          ))
        )}
      </div>
    </div>
  );
};
