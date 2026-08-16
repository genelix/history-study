'use client';

import React from 'react';
import { TimelineDimensions, generateTimelineTicks, yearToPixel } from '@/lib/timeline/coordinates';

interface TimelineRulerProps {
  dimensions: TimelineDimensions;
  zoomLevel: '1000' | '100' | '10';
  currentCenterYear: number;
}

const HISTORICAL_PERIODS = [
  { name: '고대 문명', start: -3000, end: 500, color: 'bg-emerald-950/30 text-emerald-300 border-emerald-800/40' },
  { name: '중세 시대', start: 500, end: 1450, color: 'bg-indigo-950/30 text-indigo-300 border-indigo-800/40' },
  { name: '근세 (르네상스/대항해)', start: 1450, end: 1750, color: 'bg-purple-950/30 text-purple-300 border-purple-800/40' },
  { name: '근대 (혁명과 산업화)', start: 1750, end: 1914, color: 'bg-amber-950/30 text-amber-300 border-amber-800/40' },
  { name: '현대 (세계대전/정보화)', start: 1914, end: 2030, color: 'bg-cyan-950/30 text-cyan-300 border-cyan-800/40' },
];

export const TimelineRuler: React.FC<TimelineRulerProps> = ({
  dimensions,
  zoomLevel,
  currentCenterYear,
}) => {
  const ticks = generateTimelineTicks(dimensions, zoomLevel);
  const centerPixelX = yearToPixel(currentCenterYear, dimensions);

  return (
    <div className="sticky top-0 z-30 w-full border-b border-slate-800 bg-slate-950/95 backdrop-blur-md">
      {/* 시대 구분 밴드 */}
      <div className="relative h-6 w-full overflow-hidden border-b border-slate-900">
        {HISTORICAL_PERIODS.map((period) => {
          const leftPx = yearToPixel(period.start, dimensions);
          const rightPx = yearToPixel(period.end, dimensions);
          const widthPx = rightPx - leftPx;

          if (widthPx <= 10 || rightPx < 0 || leftPx > dimensions.widthPx) return null;

          return (
            <div
              key={period.name}
              style={{ left: `${leftPx}px`, width: `${widthPx}px` }}
              className={`absolute top-0 bottom-0 flex items-center justify-center border-r text-[10px] font-semibold truncate px-1 select-none ${period.color}`}
            >
              {period.name}
            </div>
          );
        })}
      </div>

      {/* 연도 눈금자 */}
      <div className="relative h-9 w-full select-none">
        {ticks.map((tick, idx) => {
          if (tick.pixelX < -50 || tick.pixelX > dimensions.widthPx + 50) return null;

          return (
            <div
              key={`${tick.year}-${idx}`}
              style={{ left: `${tick.pixelX}px` }}
              className="absolute bottom-0 flex flex-col items-center -translate-x-1/2"
            >
              {tick.isMajor && (
                <span className="text-[10px] font-mono font-medium text-slate-400 mb-0.5">
                  {tick.label}
                </span>
              )}
              <div
                className={`w-px ${
                  tick.isMajor ? 'h-3.5 bg-slate-500' : 'h-1.5 bg-slate-800'
                }`}
              />
            </div>
          );
        })}

        {/* 현재 중심 연도 마커 인디케이터 */}
        {centerPixelX >= 0 && centerPixelX <= dimensions.widthPx && (
          <div
            style={{ left: `${centerPixelX}px` }}
            className="absolute top-0 bottom-0 w-0.5 bg-amber-400/80 shadow-[0_0_8px_rgba(251,191,36,0.6)] pointer-events-none z-30"
          >
            <div className="absolute -top-1 left-1/2 -translate-x-1/2 rounded bg-amber-400 px-1 py-0.2 text-[9px] font-bold text-slate-950 shadow">
              {currentCenterYear < 0 ? `BC ${Math.abs(currentCenterYear)}` : `AD ${currentCenterYear}`}
            </div>
          </div>
        )}
      </div>
    </div>
  );
};
