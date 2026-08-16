'use client';

import React from 'react';
import { RegionId, HistoricalEvent } from '@/types/database.types';
import { TimelineDimensions, calculateEventLanes, PlacedEvent } from '@/lib/timeline/coordinates';
import { EventItem } from './EventItem';
import { KoreanKingsTrack } from './KoreanKingsTrack';
import { ChineseDynastiesTrack } from './ChineseDynastiesTrack';

interface TimelineTrackProps {
  regionId: RegionId;
  title: string;
  flag: string;
  events: HistoricalEvent[];
  dimensions: TimelineDimensions;
  selectedEventId: string | null;
  onSelectEvent: (event: PlacedEvent) => void;
}

const REGION_STYLES: Record<
  RegionId,
  {
    bgGradient: string;
    border: string;
    badgeBg: string;
    badgeBorder: string;
    badgeText: string;
    leftAccent: string;
  }
> = {
  WEST: {
    bgGradient: 'bg-gradient-to-r from-indigo-950/40 via-slate-950/60 to-indigo-950/20 bg-gradient-to-b from-indigo-950/30 via-slate-950/50 to-slate-950/90',
    border: 'border-b border-indigo-900/40',
    badgeBg: 'bg-indigo-950/90',
    badgeBorder: 'border-indigo-700/60',
    badgeText: 'text-indigo-200',
    leftAccent: 'border-l-2 border-l-indigo-500/80',
  },
  CHINA: {
    bgGradient: 'bg-gradient-to-r from-rose-950/35 via-slate-950/60 to-rose-950/15 bg-gradient-to-b from-rose-950/25 via-slate-950/50 to-slate-950/90',
    border: 'border-b border-rose-900/40',
    badgeBg: 'bg-rose-950/90',
    badgeBorder: 'border-rose-700/60',
    badgeText: 'text-rose-200',
    leftAccent: 'border-l-2 border-l-rose-500/80',
  },
  KOREA: {
    bgGradient: 'bg-gradient-to-r from-sky-950/40 via-slate-950/60 to-sky-950/20 bg-gradient-to-b from-sky-950/30 via-slate-950/50 to-slate-950/90',
    border: 'border-b border-sky-900/40',
    badgeBg: 'bg-sky-950/90',
    badgeBorder: 'border-sky-700/60',
    badgeText: 'text-sky-200',
    leftAccent: 'border-l-2 border-l-sky-500/80',
  },
  OTHER_REGIONS: {
    bgGradient: 'bg-gradient-to-r from-amber-950/35 via-slate-950/60 to-amber-950/15 bg-gradient-to-b from-amber-950/25 via-slate-950/50 to-slate-950/90',
    border: 'border-b border-amber-900/40',
    badgeBg: 'bg-amber-950/90',
    badgeBorder: 'border-amber-700/60',
    badgeText: 'text-amber-200',
    leftAccent: 'border-l-2 border-l-amber-500/80',
  },
  CLIMATE: {
    bgGradient: 'bg-gradient-to-r from-teal-950/40 via-slate-950/60 to-teal-950/20 bg-gradient-to-b from-teal-950/30 via-slate-950/50 to-slate-950/90',
    border: 'border-b border-teal-900/40',
    badgeBg: 'bg-teal-950/90',
    badgeBorder: 'border-teal-700/60',
    badgeText: 'text-teal-200',
    leftAccent: 'border-l-2 border-l-teal-500/80',
  },
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

  const style = REGION_STYLES[regionId] || REGION_STYLES.WEST;

  return (
    <div
      className={`relative ${style.border} ${style.bgGradient} ${style.leftAccent} transition-all duration-300 hover:brightness-105`}
    >
      {/* 중국사 트랙인 경우 상단에 중국 역대 왕조 연표 전용 레인 렌더링 */}
      {regionId === 'CHINA' && <ChineseDynastiesTrack dimensions={dimensions} />}

      {/* 한국사 트랙인 경우 상단에 역대 국왕 재위 연표 전용 레인 렌더링 */}
      {regionId === 'KOREA' && <KoreanKingsTrack dimensions={dimensions} />}

      {/* 트랙 고정 좌측 헤더 */}
      <div
        className={`sticky left-4 z-20 top-2 inline-flex items-center gap-2 rounded-lg border ${style.badgeBorder} ${style.badgeBg} px-3 py-1.5 text-xs font-extrabold shadow-lg backdrop-blur-md mb-2 mt-2 pointer-events-none select-none`}
      >
        <span className="text-sm drop-shadow-sm">{flag}</span>
        <span className={`${style.badgeText} tracking-wide`}>{title}</span>
        <span className="rounded-full bg-slate-900/90 border border-slate-700/60 px-2 py-0.2 text-[10px] text-slate-300 font-mono font-semibold">
          {events.length}
        </span>
      </div>

      {/* 이벤트 배치 영역 */}
      <div
        style={{ width: `${dimensions.widthPx}px`, height: `${trackHeight}px` }}
        className="relative overflow-visible"
      >
        {placedEvents.length === 0 ? (
          <div className="absolute inset-0 flex items-center justify-center text-xs text-slate-500 italic select-none">
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
