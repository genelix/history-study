'use client';

import React from 'react';
import { RegionId, HistoricalEvent } from '@/types/database.types';
import { TimelineDimensions, calculateEventLanes, PlacedEvent } from '@/lib/timeline/coordinates';
import { EventItem } from './EventItem';

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
  const placedEvents = calculateEventLanes(events, dimensions);
  
  // 최대 레인 수에 따라 트랙 높이 동적 계산 (기본 최소 120px)
  const maxLane = placedEvents.reduce((max, e) => Math.max(max, e.lane), 0);
  const trackHeight = Math.max(130, (maxLane + 1) * 38 + 24);

  const badge = REGION_BADGES[regionId] || REGION_BADGES.WEST;

  return (
    <div className="relative border-b border-slate-800/80 bg-slate-950/40 transition-all hover:bg-slate-900/20">
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
        className="relative overflow-hidden"
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
