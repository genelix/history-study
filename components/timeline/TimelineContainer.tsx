'use client';

import React, { useRef, useState, useEffect, useMemo } from 'react';
import { RegionId, HistoricalEvent } from '@/types/database.types';
import { TimelineDimensions, ZOOM_CONFIGS, PlacedEvent } from '@/lib/timeline/coordinates';
import { TimelineRuler } from './TimelineRuler';
import { TimelineTrack } from './TimelineTrack';

interface TimelineContainerProps {
  events: HistoricalEvent[];
  zoomLevel: '1000' | '100' | '10';
  currentCenterYear: number;
  selectedEventId: string | null;
  activeRegions: RegionId[];
  onSelectEvent: (event: PlacedEvent) => void;
  onCenterYearChange: (newCenter: number) => void;
}

const REGION_METAS: { id: RegionId; title: string; flag: string }[] = [
  { id: 'WEST', title: '서양사 (Western)', flag: '🏛️' },
  { id: 'CHINA', title: '중국사 (Chinese)', flag: '🏯' },
  { id: 'KOREA', title: '한국사 (Korean)', flag: '🇰🇷' },
  { id: 'CLIMATE', title: '기후·환경 (Climate & Nature)', flag: '🌍' },
];

export const TimelineContainer: React.FC<TimelineContainerProps> = ({
  events,
  zoomLevel,
  currentCenterYear,
  selectedEventId,
  activeRegions,
  onSelectEvent,
  onCenterYearChange,
}) => {
  const containerRef = useRef<HTMLDivElement>(null);
  const [containerWidth, setContainerWidth] = useState<number>(1400);
  const [isDragging, setIsDragging] = useState(false);
  const [dragStartX, setDragStartX] = useState(0);
  const [dragStartYear, setDragStartYear] = useState(0);

  // 컨테이너 리사이즈 감지
  useEffect(() => {
    const handleResize = () => {
      if (containerRef.current) {
        setContainerWidth(Math.max(1200, containerRef.current.clientWidth));
      }
    };
    handleResize();
    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []);

  // 줌 레벨에 따른 연도 범위 및 픽셀 너비 계산
  const zoomConfig = ZOOM_CONFIGS[zoomLevel];
  const spanYears = zoomConfig.defaultSpanYears;

  const dimensions: TimelineDimensions = useMemo(() => {
    const windowStart = currentCenterYear - spanYears / 2;
    const windowEnd = currentCenterYear + spanYears / 2;
    return {
      windowStart,
      windowEnd,
      widthPx: containerWidth,
    };
  }, [currentCenterYear, spanYears, containerWidth]);

  // 마우스 드래그 패닝 핸들러
  const handleMouseDown = (e: React.MouseEvent) => {
    if ((e.target as HTMLElement).closest('.cursor-pointer')) return; // 이벤트 카드 클릭 시 드래그 방지
    setIsDragging(true);
    setDragStartX(e.clientX);
    setDragStartYear(currentCenterYear);
  };

  const handleMouseMove = (e: React.MouseEvent) => {
    if (!isDragging) return;
    const deltaX = e.clientX - dragStartX;
    const deltaYears = (deltaX / containerWidth) * spanYears;
    onCenterYearChange(Math.round(dragStartYear - deltaYears));
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

  // 휠 스크롤을 통한 시간축 이동
  const handleWheel = (e: React.WheelEvent) => {
    if (Math.abs(e.deltaX) > Math.abs(e.deltaY)) {
      const step = (e.deltaX / containerWidth) * spanYears * 0.5;
      onCenterYearChange(Math.round(currentCenterYear + step));
    } else if (e.shiftKey) {
      const step = (e.deltaY / containerWidth) * spanYears * 0.5;
      onCenterYearChange(Math.round(currentCenterYear + step));
    }
  };

  // 지역별 이벤트 분류
  const eventsByRegion = useMemo(() => {
    const map: Record<RegionId, HistoricalEvent[]> = {
      WEST: [],
      CHINA: [],
      KOREA: [],
      CLIMATE: [],
    };
    events.forEach((evt) => {
      if (evt.region_id === 'CLIMATE' || evt.category_id === 'CLIMATE_ENVIRONMENT') {
        map.CLIMATE.push(evt);
      } else if (map[evt.region_id]) {
        map[evt.region_id].push(evt);
      }
    });
    return map;
  }, [events]);

  const visibleRegions = REGION_METAS.filter((r) => activeRegions.includes(r.id));

  return (
    <div
      ref={containerRef}
      onMouseDown={handleMouseDown}
      onMouseMove={handleMouseMove}
      onMouseUp={handleMouseUp}
      onMouseLeave={handleMouseUp}
      onWheel={handleWheel}
      className={`relative flex-1 overflow-x-auto overflow-y-auto bg-slate-950/90 select-none ${
        isDragging ? 'cursor-grabbing' : 'cursor-grab'
      }`}
    >
      <div style={{ minWidth: `${containerWidth}px` }} className="flex flex-col">
        {/* 상단 눈금자 */}
        <TimelineRuler
          dimensions={dimensions}
          zoomLevel={zoomLevel}
          currentCenterYear={currentCenterYear}
        />

        {/* 4개 지역 트랙 */}
        <div className="flex flex-col divide-y divide-slate-900/60 pb-16">
          {visibleRegions.map((meta) => (
            <TimelineTrack
              key={meta.id}
              regionId={meta.id}
              title={meta.title}
              flag={meta.flag}
              events={eventsByRegion[meta.id] || []}
              dimensions={dimensions}
              selectedEventId={selectedEventId}
              onSelectEvent={onSelectEvent}
            />
          ))}
        </div>
      </div>
    </div>
  );
};
