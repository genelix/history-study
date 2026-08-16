'use client';

import React, { useState } from 'react';
import { PlacedEvent } from '@/lib/timeline/coordinates';
import { formatYearRange } from '@/lib/dates/yearFormatter';

interface EventItemProps {
  event: PlacedEvent;
  onSelect: (event: PlacedEvent) => void;
  isSelected: boolean;
}

const CATEGORY_COLORS: Record<string, { bg: string; border: string; text: string; glow: string }> = {
  POLITICS: { bg: 'from-amber-900/60 to-amber-800/40', border: 'border-amber-500/70', text: 'text-amber-300', glow: 'rgba(245, 158, 11, 0.25)' },
  PERSON: { bg: 'from-pink-900/60 to-pink-800/40', border: 'border-pink-500/70', text: 'text-pink-300', glow: 'rgba(236, 72, 153, 0.25)' },
  INSTITUTION: { bg: 'from-blue-900/60 to-blue-800/40', border: 'border-blue-500/70', text: 'text-blue-300', glow: 'rgba(59, 130, 246, 0.25)' },
  RELIGION: { bg: 'from-purple-900/60 to-purple-800/40', border: 'border-purple-500/70', text: 'text-purple-300', glow: 'rgba(168, 85, 247, 0.25)' },
  SCIENCE: { bg: 'from-cyan-900/60 to-cyan-800/40', border: 'border-cyan-500/70', text: 'text-cyan-300', glow: 'rgba(6, 182, 212, 0.25)' },
  ART_CULTURE: { bg: 'from-emerald-900/60 to-emerald-800/40', border: 'border-emerald-500/70', text: 'text-emerald-300', glow: 'rgba(16, 185, 129, 0.25)' },
  CLIMATE_ENVIRONMENT: { bg: 'from-teal-900/60 to-teal-800/40', border: 'border-teal-500/70', text: 'text-teal-300', glow: 'rgba(20, 184, 166, 0.25)' },
  ECONOMY: { bg: 'from-yellow-900/60 to-yellow-800/40', border: 'border-yellow-500/70', text: 'text-yellow-300', glow: 'rgba(234, 179, 8, 0.25)' },
};

export const EventItem: React.FC<EventItemProps> = ({ event, onSelect, isSelected }) => {
  const [showTooltip, setShowTooltip] = useState(false);

  const colors = CATEGORY_COLORS[event.category_id] || CATEGORY_COLORS.POLITICS;
  const isA = event.importance === 'A';
  const isB = event.importance === 'B';

  const laneTopPx = event.lane * 36; // 레인당 36px 간격

  return (
    <div
      style={{
        left: `${event.leftPx}px`,
        top: `${laneTopPx}px`,
        width: event.isPoint ? 'auto' : `${event.widthPx}px`,
      }}
      className="absolute group z-10 select-none cursor-pointer"
      onClick={() => onSelect(event)}
      onMouseEnter={() => setShowTooltip(true)}
      onMouseLeave={() => setShowTooltip(false)}
    >
      {event.isPoint ? (
        // 단일 연도 포인트형 이벤트 (Pin/Dot)
        <div
          className={`flex items-center gap-1.5 rounded-full border px-2 py-1 transition-all duration-200 ${
            isSelected
              ? 'ring-2 ring-amber-400 scale-105 shadow-lg'
              : 'hover:scale-105 hover:shadow-md'
          } ${colors.border} bg-slate-900/90 backdrop-blur-sm`}
          style={{ boxShadow: isSelected ? `0 0 14px ${colors.glow}` : undefined }}
        >
          <span
            className={`flex h-2.5 w-2.5 shrink-0 rounded-full ${
              isA ? 'animate-ping-slow' : ''
            }`}
            style={{ backgroundColor: colors.border.replace('border-', '').replace('/70', '') }}
          />
          <span className="text-[11px] font-bold text-slate-100 truncate max-w-[130px]">
            {event.title}
          </span>
          <span className="text-[10px] text-slate-400 font-mono">
            {event.year_start < 0 ? `BC${Math.abs(event.year_start)}` : event.year_start}
          </span>
        </div>
      ) : (
        // 기간형 바 이벤트 (Range Bar)
        <div
          className={`relative h-7 rounded-md border bg-gradient-to-r ${colors.bg} ${colors.border} px-2.5 py-1 transition-all duration-200 flex items-center justify-between overflow-hidden ${
            isSelected ? 'ring-2 ring-amber-400 shadow-lg scale-[1.01]' : 'hover:scale-[1.01] hover:brightness-110'
          }`}
          style={{
            boxShadow: isSelected ? `0 0 16px ${colors.glow}` : undefined,
          }}
        >
          {/* 중요도 A 등급 좌측 리본 */}
          {isA && (
            <div className="absolute left-0 top-0 bottom-0 w-1 bg-amber-400 shadow-sm" />
          )}

          <div className="flex items-center gap-1.5 truncate pr-2">
            <span
              className={`rounded px-1 text-[9px] font-extrabold ${
                isA
                  ? 'bg-amber-400 text-slate-950'
                  : isB
                  ? 'bg-slate-800 text-amber-300 border border-amber-400/30'
                  : 'bg-slate-800 text-slate-400'
              }`}
            >
              {event.importance}
            </span>
            <span className="text-xs font-semibold text-slate-100 truncate">
              {event.title}
            </span>
          </div>

          <span className="text-[10px] text-slate-300/80 font-mono shrink-0 ml-1">
            {event.year_start < 0 ? `BC${Math.abs(event.year_start)}` : event.year_start} ~{' '}
            {event.year_end < 0 ? `BC${Math.abs(event.year_end)}` : event.year_end}
          </span>
        </div>
      )}

      {/* 호버 마이크로 툴팁 */}
      {showTooltip && (
        <div className="absolute left-0 -top-12 z-50 pointer-events-none min-w-[220px] max-w-xs rounded-lg border border-slate-700 bg-slate-900/95 p-2.5 text-xs text-slate-200 shadow-xl backdrop-blur-md transition-opacity">
          <div className="flex items-center justify-between gap-2 mb-1">
            <span className="font-bold text-amber-300">{event.title}</span>
            <span className="text-[10px] font-mono text-slate-400">
              {formatYearRange(event.year_start, event.year_end, event.date_precision)}
            </span>
          </div>
          <p className="line-clamp-2 text-[11px] text-slate-300 leading-snug">
            {event.summary}
          </p>
          <div className="mt-1.5 flex items-center justify-between text-[10px] text-slate-400">
            <span>{event.sub_region || event.region_id}</span>
            <span className={colors.text}>클릭하여 상세 정보 보기 →</span>
          </div>
        </div>
      )}
    </div>
  );
};
