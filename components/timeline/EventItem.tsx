'use client';

import React, { useState, useRef } from 'react';
import { PlacedEvent } from '@/lib/timeline/coordinates';
import { formatYearRange } from '@/lib/dates/yearFormatter';

interface EventItemProps {
  event: PlacedEvent;
  onSelect: (event: PlacedEvent) => void;
  isSelected: boolean;
}

const CATEGORY_COLORS: Record<string, { bg: string; border: string; text: string; glow: string; label: string }> = {
  POLITICS: { bg: 'from-amber-950/80 to-amber-900/60', border: 'border-amber-500/80', text: 'text-amber-300', glow: 'rgba(245, 158, 11, 0.35)', label: '정치·전쟁' },
  PERSON: { bg: 'from-pink-950/80 to-pink-900/60', border: 'border-pink-500/80', text: 'text-pink-300', glow: 'rgba(236, 72, 153, 0.35)', label: '인물' },
  INSTITUTION: { bg: 'from-blue-950/80 to-blue-900/60', border: 'border-blue-500/80', text: 'text-blue-300', glow: 'rgba(59, 130, 246, 0.35)', label: '제도·사회' },
  RELIGION: { bg: 'from-purple-950/80 to-purple-900/60', border: 'border-purple-500/80', text: 'text-purple-300', glow: 'rgba(168, 85, 247, 0.35)', label: '종교·사상' },
  SCIENCE: { bg: 'from-cyan-950/80 to-cyan-900/60', border: 'border-cyan-500/80', text: 'text-cyan-300', glow: 'rgba(6, 182, 212, 0.35)', label: '과학·기술' },
  ART_CULTURE: { bg: 'from-emerald-950/80 to-emerald-900/60', border: 'border-emerald-500/80', text: 'text-emerald-300', glow: 'rgba(16, 185, 129, 0.35)', label: '예술·문화' },
  CLIMATE_ENVIRONMENT: { bg: 'from-teal-950/80 to-teal-900/60', border: 'border-teal-500/80', text: 'text-teal-300', glow: 'rgba(20, 184, 166, 0.35)', label: '기후환경' },
  ECONOMY: { bg: 'from-yellow-950/80 to-yellow-900/60', border: 'border-yellow-500/80', text: 'text-yellow-300', glow: 'rgba(234, 179, 8, 0.35)', label: '경제·무역' },
};

const IMPORTANCE_LABELS: Record<string, string> = {
  A: 'A급 (문명사 핵심)',
  B: 'B급 (주요 사건)',
  C: 'C급 (세부 사건)',
};

export const EventItem: React.FC<EventItemProps> = ({ event, onSelect, isSelected }) => {
  const [showTooltip, setShowTooltip] = useState(false);
  const [cursorX, setCursorX] = useState<number>(0);
  const itemRef = useRef<HTMLDivElement>(null);

  const colors = CATEGORY_COLORS[event.category_id] || CATEGORY_COLORS.POLITICS;
  const isA = event.importance === 'A';
  const isB = event.importance === 'B';

  const laneTopPx = event.lane * 40; // 레인당 40px 간격 (카드 높이 30px + 수직 여백 10px)
  const isTopLane = event.lane <= 1; // 상단 0, 1번 레인은 아래로 모달 표시, 하단 레인은 위로 표시

  const handleMouseEnter = (e: React.MouseEvent<HTMLDivElement>) => {
    if (itemRef.current) {
      const rect = itemRef.current.getBoundingClientRect();
      setCursorX(Math.max(20, Math.min(event.widthPx - 20, e.clientX - rect.left)));
    }
    setShowTooltip(true);
  };

  const handleMouseMove = (e: React.MouseEvent<HTMLDivElement>) => {
    if (itemRef.current) {
      const rect = itemRef.current.getBoundingClientRect();
      setCursorX(Math.max(20, Math.min(event.widthPx - 20, e.clientX - rect.left)));
    }
  };

  return (
    <div
      ref={itemRef}
      style={{
        left: `${event.leftPx}px`,
        top: `${laneTopPx}px`,
        width: event.isPoint ? 'auto' : `${event.widthPx}px`,
      }}
      className={`absolute group select-none cursor-pointer transition-all ${
        showTooltip ? 'z-[90]' : isSelected ? 'z-30' : 'z-10 hover:z-50'
      }`}
      onClick={() => onSelect(event)}
      onMouseEnter={handleMouseEnter}
      onMouseMove={handleMouseMove}
      onMouseLeave={() => setShowTooltip(false)}
    >
      {event.isPoint ? (
        // 1. 단일 연도 포인트형 이벤트 (Pin/Dot)
        <div
          className={`flex items-center gap-1.5 rounded-full border px-2.5 py-1 transition-all duration-200 ${
            isSelected
              ? 'ring-2 ring-amber-400 scale-105 shadow-xl bg-slate-900'
              : 'hover:scale-105 hover:shadow-md bg-slate-900/95'
          } ${colors.border} backdrop-blur-md`}
          style={{ boxShadow: isSelected ? `0 0 16px ${colors.glow}` : undefined }}
        >
          <span
            className={`flex h-2.5 w-2.5 shrink-0 rounded-full ${
              isA ? 'animate-ping-slow' : ''
            }`}
            style={{ backgroundColor: colors.border.replace('border-', '').replace('/80', '') }}
          />
          <span className="text-[11px] font-bold text-slate-100 truncate max-w-[150px]">
            {event.title}
          </span>
          <span className="text-[10px] text-amber-300/90 font-mono font-semibold">
            {event.year_start < 0 ? `BC ${Math.abs(event.year_start)}` : `${event.year_start}년`}
          </span>
        </div>
      ) : (
        // 2. 기간형 바 이벤트 (Range Bar) - 좌우로 길어도 표제가 상시 가시 영역에 머무는 Sticky Title 지원
        <div
          className={`relative h-7.5 rounded-md border bg-gradient-to-r ${colors.bg} ${colors.border} px-2 py-1 transition-all duration-200 flex items-center justify-between overflow-hidden shadow-sm ${
            isSelected ? 'ring-2 ring-amber-400 shadow-xl scale-[1.01]' : 'hover:scale-[1.01] hover:brightness-110'
          }`}
          style={{
            boxShadow: isSelected ? `0 0 16px ${colors.glow}` : undefined,
          }}
        >
          {/* 중요도 A 등급 좌측 황금 리본 */}
          {isA && (
            <div className="absolute left-0 top-0 bottom-0 w-1.5 bg-amber-400 shadow-sm z-20" />
          )}

          {/* 표제: 긴 막대에서도 sticky로 항상 가시 영역에 머물도록 지원 */}
          <div className="sticky left-2 flex items-center gap-1.5 shrink-0 z-10 bg-slate-950/75 backdrop-blur-md px-2 py-0.5 rounded-md border border-slate-700/70 max-w-[calc(100%-90px)] shadow-md">
            <span
              className={`rounded px-1.5 py-0.2 text-[9px] font-extrabold shadow-sm ${
                isA
                  ? 'bg-amber-400 text-slate-950'
                  : isB
                  ? 'bg-slate-800 text-amber-300 border border-amber-400/40'
                  : 'bg-slate-800 text-slate-400'
              }`}
            >
              {event.importance}
            </span>
            <span className="text-xs font-bold text-slate-100 truncate whitespace-nowrap drop-shadow-sm">
              {event.title}
            </span>
          </div>

          {/* 우측 연도 표기: sticky right-2로 우측 끝에서도 연도가 시원하게 노출 */}
          <span className="sticky right-2 text-[10px] text-slate-200 font-mono font-semibold shrink-0 ml-auto bg-slate-950/75 backdrop-blur-md px-1.5 py-0.5 rounded border border-slate-700/60 shadow-sm">
            {formatYearRange(event.year_start, event.year_end, event.date_precision)}
          </span>
        </div>
      )}

      {/* 3. 호버 마이크로 툴팁 / 미니 상세 모달 (마우스 위치 추종 스마트 포지셔닝) */}
      {showTooltip && (
        <div
          style={{
            left: event.isPoint ? '50%' : `${cursorX}px`,
            transform: 'translateX(-50%)',
          }}
          className={`absolute z-[100] pointer-events-none min-w-[320px] max-w-[420px] rounded-2xl border border-slate-600/90 bg-slate-950/98 p-4 text-xs text-slate-100 shadow-2xl backdrop-blur-2xl animate-in fade-in zoom-in-95 duration-150 ${
            isTopLane ? 'top-full mt-3' : 'bottom-full mb-3'
          }`}
        >
          {/* 상단 메타 영역: 연도 뱃지 & 지역 & 카테고리 */}
          <div className="mb-2.5 border-b border-slate-800/90 pb-2.5 space-y-1.5">
            <div className="flex items-center justify-between gap-2 flex-wrap">
              <span className="inline-flex items-center gap-1 text-[11px] font-mono font-bold text-amber-300 bg-amber-500/15 px-2 py-0.5 rounded-md border border-amber-500/30 shadow-sm">
                📅 {formatYearRange(event.year_start, event.year_end, event.date_precision)}
              </span>
              <div className="flex items-center gap-1.5">
                <span className="text-[10px] font-semibold text-indigo-200 bg-indigo-950/80 px-2 py-0.5 rounded border border-indigo-700/50">
                  {event.sub_region || event.region_id}
                </span>
                <span
                  className="text-[10px] font-semibold px-2 py-0.5 rounded border"
                  style={{
                    backgroundColor: `${colors.glow}`,
                    borderColor: `${colors.border.replace('border-', '').replace('/80', '')}`,
                    color: '#f8fafc',
                  }}
                >
                  {colors.label}
                </span>
              </div>
            </div>

            {/* 표제: 줄바꿈 없이 시원하고 또렷하게 표시 */}
            <h4 className="font-extrabold text-slate-100 text-sm leading-snug tracking-tight break-keep pt-0.5">
              {event.title}
            </h4>
          </div>

          {/* 본문 요약 */}
          <p className="text-[11.5px] text-slate-200/95 leading-relaxed break-keep">
            {event.summary}
          </p>

          {/* 역사적 의의가 있는 경우 표시 */}
          {event.historical_significance && (
            <div className="mt-2 rounded-lg bg-indigo-950/30 border border-indigo-500/20 p-2 text-[11px] text-indigo-200/90 leading-snug">
              <span className="font-bold text-amber-400/90 mr-1">💡 의의:</span>
              {event.historical_significance}
            </div>
          )}

          {/* 하단 액션 힌트 */}
          <div className="mt-2.5 pt-2 border-t border-slate-800/80 flex items-center justify-between text-[10px] text-slate-400">
            <span className="font-semibold text-amber-400/90">
              {IMPORTANCE_LABELS[event.importance] || `중요도 ${event.importance}등급`}
            </span>
            <span className="text-sky-300 font-bold flex items-center gap-1">
              클릭하여 상세 정보 보기 →
            </span>
          </div>

          {/* 상/하 위치에 따른 말풍선 화살표 꼬리 */}
          {isTopLane ? (
            <div className="absolute left-1/2 -translate-x-1/2 -top-1.5 w-3.5 h-3.5 bg-slate-950 border-l border-t border-slate-600/90 transform rotate-45 shadow-sm" />
          ) : (
            <div className="absolute left-1/2 -translate-x-1/2 -bottom-1.5 w-3.5 h-3.5 bg-slate-950 border-r border-b border-slate-600/90 transform rotate-45 shadow-sm" />
          )}
        </div>
      )}
    </div>
  );
};
