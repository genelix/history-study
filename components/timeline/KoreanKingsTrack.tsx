'use client';

import React, { useState, useRef } from 'react';
import { TimelineDimensions, yearToPixel } from '@/lib/timeline/coordinates';
import { KOREAN_KINGS, KoreanKing } from '@/lib/timeline/koreanKings';
import { Crown } from 'lucide-react';

interface KoreanKingsTrackProps {
  dimensions: TimelineDimensions;
}

const DYNASTY_STYLES: Record<string, { bg: string; border: string; text: string; badgeBg: string }> = {
  GOGURYEO: { bg: 'bg-purple-900/70 hover:bg-purple-800', border: 'border-purple-400/60', text: 'text-purple-200', badgeBg: 'bg-purple-950 text-purple-300' },
  BAEKJE: { bg: 'bg-amber-800/70 hover:bg-amber-700', border: 'border-amber-400/60', text: 'text-amber-200', badgeBg: 'bg-amber-950 text-amber-300' },
  SILLA: { bg: 'bg-rose-900/70 hover:bg-rose-800', border: 'border-rose-400/60', text: 'text-rose-200', badgeBg: 'bg-rose-950 text-rose-300' },
  GAYA: { bg: 'bg-teal-900/70 hover:bg-teal-800', border: 'border-teal-400/60', text: 'text-teal-200', badgeBg: 'bg-teal-950 text-teal-300' },
  BALHAE: { bg: 'bg-indigo-900/70 hover:bg-indigo-800', border: 'border-indigo-400/60', text: 'text-indigo-200', badgeBg: 'bg-indigo-950 text-indigo-300' },
  GORYEO: { bg: 'bg-emerald-900/70 hover:bg-emerald-800', border: 'border-emerald-400/60', text: 'text-emerald-200', badgeBg: 'bg-emerald-950 text-emerald-300' },
  JOSEON: { bg: 'bg-sky-900/70 hover:bg-sky-800', border: 'border-sky-400/60', text: 'text-sky-200', badgeBg: 'bg-sky-950 text-sky-300' },
  KOREAN_EMPIRE: { bg: 'bg-red-900/70 hover:bg-red-800', border: 'border-red-400/60', text: 'text-red-200', badgeBg: 'bg-red-950 text-red-300' },
};

export const KoreanKingsTrack: React.FC<KoreanKingsTrackProps> = ({ dimensions }) => {
  const [hoveredKing, setHoveredKing] = useState<KoreanKing | null>(null);
  const [cursorX, setCursorX] = useState<number>(0);

  // 현재 뷰포트 범위 내에 걸치는 왕들만 필터링
  const visibleKings = KOREAN_KINGS.filter((king) => {
    return king.endYear >= dimensions.windowStart && king.startYear <= dimensions.windowEnd;
  });

  return (
    <div className="relative border-b border-sky-900/40 bg-gradient-to-r from-sky-950/40 via-slate-950/50 to-sky-950/20 py-1.5 px-0 select-none">
      {/* 고정 타이틀 뱃지 */}
      <div className="sticky left-4 z-20 top-1 inline-flex items-center gap-1.5 rounded-md border border-amber-500/30 bg-slate-900/90 px-2 py-0.5 text-[11px] font-bold text-amber-300 shadow-sm backdrop-blur-md mb-1 pointer-events-none">
        <Crown className="h-3 w-3 text-amber-400" />
        <span>한국사 역대 국왕 재위 연표</span>
        <span className="text-[10px] font-normal text-slate-400">
          (삼국·고려 주요 왕 & 조선 27대 전원)
        </span>
      </div>

      {/* 왕 재위 바 배치 캔버스 */}
      <div
        style={{ width: `${dimensions.widthPx}px`, height: '32px' }}
        className="relative overflow-visible"
      >
        {visibleKings.map((king) => {
          const leftPx = yearToPixel(king.startYear, dimensions);
          const rightPx = yearToPixel(king.endYear, dimensions);
          const widthPx = Math.max(24, rightPx - leftPx);
          const style = DYNASTY_STYLES[king.dynasty] || DYNASTY_STYLES.JOSEON;

          return (
            <div
              key={king.id}
              style={{
                left: `${leftPx}px`,
                width: `${widthPx}px`,
                top: '2px',
              }}
              className="absolute group z-10 cursor-pointer transition-all hover:z-[80] hover:scale-[1.02]"
              onMouseEnter={(e) => {
                const rect = e.currentTarget.getBoundingClientRect();
                setCursorX(Math.max(10, Math.min(widthPx - 10, e.clientX - rect.left)));
                setHoveredKing(king);
              }}
              onMouseMove={(e) => {
                const rect = e.currentTarget.getBoundingClientRect();
                setCursorX(Math.max(10, Math.min(widthPx - 10, e.clientX - rect.left)));
              }}
              onMouseLeave={() => setHoveredKing(null)}
            >
              {/* 왕 재위 블록 바 */}
              <div
                className={`h-6 rounded border ${style.border} ${style.bg} px-1.5 py-0.5 flex items-center justify-between text-[11px] font-bold text-slate-100 shadow-sm overflow-hidden whitespace-nowrap`}
              >
                <span className="sticky left-1 truncate bg-slate-950/60 backdrop-blur-[2px] px-1 rounded">
                  {king.name}
                </span>
                {widthPx > 70 && (
                  <span className="sticky right-1 text-[9.5px] font-mono text-slate-300/90 ml-1 shrink-0 bg-slate-950/60 backdrop-blur-[2px] px-0.5 rounded">
                    {king.startYear < 0 ? `BC${Math.abs(king.startYear)}` : king.startYear}~
                    {king.endYear < 0 ? `BC${Math.abs(king.endYear)}` : king.endYear}
                  </span>
                )}
              </div>

              {/* 국왕 상세 호버 툴팁 (마우스 위치 스마트 앵커링) */}
              {hoveredKing?.id === king.id && (
                <div
                  style={{
                    left: `${cursorX}px`,
                    transform: 'translateX(-50%)',
                  }}
                  className="absolute top-full mt-2 z-[90] pointer-events-none min-w-[280px] max-w-sm rounded-xl border border-slate-600/90 bg-slate-950/98 p-3 text-xs text-slate-100 shadow-2xl backdrop-blur-2xl animate-in fade-in zoom-in-95 duration-100"
                >
                  <div className="flex items-center justify-between gap-2 border-b border-slate-800/90 pb-1.5 mb-1.5">
                    <div className="flex items-center gap-1.5">
                      <span className={`text-[10px] font-bold px-1.5 py-0.5 rounded ${style.badgeBg}`}>
                        {king.dynastyLabel}
                      </span>
                      <span className="font-extrabold text-amber-300 text-sm">{king.name}</span>
                    </div>
                    <span className="text-[10px] font-mono bg-slate-900 px-1.5 py-0.5 rounded border border-slate-800 text-slate-300">
                      재위: {king.startYear < 0 ? `BC ${Math.abs(king.startYear)}년` : `${king.startYear}년`} ~{' '}
                      {king.endYear < 0 ? `BC ${Math.abs(king.endYear)}년` : `${king.endYear}년`}
                    </span>
                  </div>
                  <p className="text-[11.5px] text-slate-200 leading-relaxed break-keep">
                    {king.achievements}
                  </p>
                  {/* 말풍선 위쪽 화살표 */}
                  <div className="absolute left-1/2 -translate-x-1/2 -top-1.5 w-3 h-3 bg-slate-950 border-l border-t border-slate-600/90 transform rotate-45" />
                </div>
              )}
            </div>
          );
        })}
      </div>
    </div>
  );
};
