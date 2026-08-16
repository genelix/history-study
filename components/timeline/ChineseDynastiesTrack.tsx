'use client';

import React, { useState } from 'react';
import { TimelineDimensions, yearToPixel } from '@/lib/timeline/coordinates';
import { CHINESE_DYNASTIES, ChineseDynasty } from '@/lib/timeline/chineseDynasties';
import { Castle, Sparkles } from 'lucide-react';

interface ChineseDynastiesTrackProps {
  dimensions: TimelineDimensions;
}

const PERIOD_STYLES: Record<
  ChineseDynasty['periodGroup'],
  { bg: string; border: string; text: string; badgeBg: string; shadow: string }
> = {
  ANCIENT: {
    bg: 'bg-gradient-to-r from-amber-950/90 to-amber-900/80 hover:from-amber-900 hover:to-amber-800',
    border: 'border-amber-500/70',
    text: 'text-amber-200',
    badgeBg: 'bg-amber-950 text-amber-300 border border-amber-500/40',
    shadow: 'rgba(245, 158, 11, 0.25)',
  },
  HAN: {
    bg: 'bg-gradient-to-r from-red-950/90 to-red-900/80 hover:from-red-900 hover:to-red-800',
    border: 'border-red-500/70',
    text: 'text-red-200',
    badgeBg: 'bg-red-950 text-red-300 border border-red-500/40',
    shadow: 'rgba(239, 68, 68, 0.25)',
  },
  WEI_JIN: {
    bg: 'bg-gradient-to-r from-purple-950/90 to-purple-900/80 hover:from-purple-900 hover:to-purple-800',
    border: 'border-purple-500/70',
    text: 'text-purple-200',
    badgeBg: 'bg-purple-950 text-purple-300 border border-purple-500/40',
    shadow: 'rgba(168, 85, 247, 0.25)',
  },
  SUI_TANG: {
    bg: 'bg-gradient-to-r from-yellow-950/90 to-amber-900/80 hover:from-yellow-900 hover:to-amber-800',
    border: 'border-yellow-400/80',
    text: 'text-yellow-200',
    badgeBg: 'bg-yellow-950 text-yellow-300 border border-yellow-500/40',
    shadow: 'rgba(234, 179, 8, 0.3)',
  },
  SONG_YUAN: {
    bg: 'bg-gradient-to-r from-emerald-950/90 to-teal-900/80 hover:from-emerald-900 hover:to-teal-800',
    border: 'border-emerald-500/70',
    text: 'text-emerald-200',
    badgeBg: 'bg-emerald-950 text-emerald-300 border border-emerald-500/40',
    shadow: 'rgba(16, 185, 129, 0.25)',
  },
  MING_QING: {
    bg: 'bg-gradient-to-r from-rose-950/90 to-rose-900/80 hover:from-rose-900 hover:to-rose-800',
    border: 'border-rose-500/80',
    text: 'text-rose-200',
    badgeBg: 'bg-rose-950 text-rose-300 border border-rose-500/40',
    shadow: 'rgba(244, 63, 94, 0.3)',
  },
  MODERN: {
    bg: 'bg-gradient-to-r from-sky-950/90 to-blue-900/80 hover:from-sky-900 hover:to-blue-800',
    border: 'border-sky-500/70',
    text: 'text-sky-200',
    badgeBg: 'bg-sky-950 text-sky-300 border border-sky-500/40',
    shadow: 'rgba(14, 165, 233, 0.25)',
  },
};

export const ChineseDynastiesTrack: React.FC<ChineseDynastiesTrackProps> = ({ dimensions }) => {
  const [hoveredDynasty, setHoveredDynasty] = useState<ChineseDynasty | null>(null);
  const [cursorX, setCursorX] = useState<number>(0);

  // 현재 뷰포트 범위 내에 걸치는 왕조들만 필터링
  const visibleDynasties = CHINESE_DYNASTIES.filter((dynasty) => {
    return dynasty.endYear >= dimensions.windowStart && dynasty.startYear <= dimensions.windowEnd;
  });

  return (
    <div className="relative border-b border-rose-900/40 bg-gradient-to-r from-rose-950/40 via-slate-950/50 to-rose-950/20 py-1.5 px-0 select-none">
      {/* 고정 타이틀 뱃지 */}
      <div className="sticky left-4 z-20 top-1 inline-flex items-center gap-1.5 rounded-md border border-rose-500/30 bg-slate-900/90 px-2 py-0.5 text-[11px] font-bold text-rose-300 shadow-sm backdrop-blur-md mb-1 pointer-events-none">
        <Castle className="h-3 w-3 text-rose-400" />
        <span>중국사 역대 왕조 연표</span>
        <span className="text-[10px] font-normal text-slate-400">
          (상·주·진·한·수·당·송·원·명·청)
        </span>
      </div>

      {/* 왕조 바 배치 캔버스 */}
      <div
        style={{ width: `${dimensions.widthPx}px`, height: '32px' }}
        className="relative overflow-visible"
      >
        {visibleDynasties.map((dynasty) => {
          const leftPx = yearToPixel(dynasty.startYear, dimensions);
          const rightPx = yearToPixel(dynasty.endYear, dimensions);
          const widthPx = Math.max(28, rightPx - leftPx);
          const style = PERIOD_STYLES[dynasty.periodGroup] || PERIOD_STYLES.HAN;

          return (
            <div
              key={dynasty.id}
              style={{
                left: `${leftPx}px`,
                width: `${widthPx}px`,
                top: '2px',
              }}
              className="absolute group z-10 cursor-pointer transition-all hover:z-[80] hover:scale-[1.02]"
              onMouseEnter={(e) => {
                const rect = e.currentTarget.getBoundingClientRect();
                setCursorX(Math.max(10, Math.min(widthPx - 10, e.clientX - rect.left)));
                setHoveredDynasty(dynasty);
              }}
              onMouseMove={(e) => {
                const rect = e.currentTarget.getBoundingClientRect();
                setCursorX(Math.max(10, Math.min(widthPx - 10, e.clientX - rect.left)));
              }}
              onMouseLeave={() => setHoveredDynasty(null)}
            >
              {/* 왕조 블록 바 */}
              <div
                className={`h-6 rounded border ${style.border} ${style.bg} px-1.5 py-0.5 flex items-center justify-between text-[11px] font-bold text-slate-100 shadow-sm overflow-hidden whitespace-nowrap`}
                style={{ boxShadow: `0 0 10px ${style.shadow}` }}
              >
                <div className="sticky left-1 flex items-center gap-1 bg-slate-950/70 backdrop-blur-[2px] px-1 py-0.2 rounded shrink-0">
                  <span>{dynasty.name}</span>
                  <span className="text-[9.5px] opacity-75 font-normal">({dynasty.name_hanja})</span>
                </div>

                {widthPx > 80 && (
                  <span className="sticky right-1 text-[9.5px] font-mono text-slate-200/90 ml-1 shrink-0 bg-slate-950/70 backdrop-blur-[2px] px-1 rounded">
                    {dynasty.startYear < 0 ? `BC${Math.abs(dynasty.startYear)}` : dynasty.startYear}~
                    {dynasty.endYear < 0 ? `BC${Math.abs(dynasty.endYear)}` : dynasty.endYear}
                  </span>
                )}
              </div>

              {/* 왕조 상세 호버 툴팁 */}
              {hoveredDynasty?.id === dynasty.id && (
                <div
                  style={{
                    left: `${cursorX}px`,
                    transform: 'translateX(-50%)',
                  }}
                  className="absolute top-full mt-2 z-[90] pointer-events-none min-w-[300px] max-w-sm rounded-xl border border-rose-500/40 bg-slate-950/98 p-3.5 text-xs text-slate-100 shadow-2xl backdrop-blur-2xl animate-in fade-in zoom-in-95 duration-100"
                >
                  <div className="flex items-center justify-between gap-2 border-b border-slate-800/90 pb-2 mb-2">
                    <div className="flex items-center gap-1.5">
                      <span className={`text-[10px] font-bold px-2 py-0.5 rounded ${style.badgeBg}`}>
                        {dynasty.name_hanja}
                      </span>
                      <span className="font-extrabold text-rose-300 text-sm">{dynasty.fullName}</span>
                    </div>
                    <span className="text-[10px] font-mono bg-slate-900 px-2 py-0.5 rounded border border-slate-800 text-amber-300 font-bold">
                      {dynasty.startYear < 0 ? `BC ${Math.abs(dynasty.startYear)}년` : `${dynasty.startYear}년`} ~{' '}
                      {dynasty.endYear < 0 ? `BC ${Math.abs(dynasty.endYear)}년` : `${dynasty.endYear}년`}
                    </span>
                  </div>

                  <div className="grid grid-cols-2 gap-2 text-[11px] mb-2 bg-slate-900/70 p-2 rounded-lg border border-slate-800/80">
                    <div>
                      <span className="text-slate-400 font-semibold mr-1">수도:</span>
                      <span className="text-slate-200 font-medium">{dynasty.capital}</span>
                    </div>
                    <div>
                      <span className="text-slate-400 font-semibold mr-1">개창자:</span>
                      <span className="text-slate-200 font-medium">{dynasty.founder}</span>
                    </div>
                  </div>

                  <p className="text-[11.5px] text-slate-200/95 leading-relaxed break-keep">
                    {dynasty.characteristics}
                  </p>

                  {/* 말풍선 위쪽 화살표 */}
                  <div className="absolute left-1/2 -translate-x-1/2 -top-1.5 w-3 h-3 bg-slate-950 border-l border-t border-rose-500/40 transform rotate-45" />
                </div>
              )}
            </div>
          );
        })}
      </div>
    </div>
  );
};
