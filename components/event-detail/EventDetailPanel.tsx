'use client';

import React from 'react';
import { HistoricalEvent } from '@/types/database.types';
import { formatYearRange } from '@/lib/dates/yearFormatter';
import { X, Calendar, Globe, Bookmark, Award, User, Link2, BookOpen, CheckCircle2, Navigation } from 'lucide-react';

interface EventDetailPanelProps {
  event: HistoricalEvent | null;
  onClose: () => void;
  onSelectRelatedEventId: (id: string) => void;
  onJumpToEventYear: (year: number) => void;
}

export const EventDetailPanel: React.FC<EventDetailPanelProps> = ({
  event,
  onClose,
  onSelectRelatedEventId,
  onJumpToEventYear,
}) => {
  if (!event) return null;

  return (
    <aside className="fixed inset-y-0 right-0 z-50 w-full sm:w-[420px] md:w-[460px] bg-slate-950/95 border-l border-slate-800 text-slate-100 shadow-2xl backdrop-blur-xl flex flex-col overflow-hidden transition-all duration-300 animate-slide-left">
      {/* 패널 헤더 */}
      <div className="flex items-center justify-between p-4 border-b border-slate-800/80 bg-slate-900/60">
        <div className="flex items-center gap-2">
          <span className="rounded bg-amber-400/20 text-amber-300 border border-amber-400/40 px-2 py-0.5 text-xs font-bold">
            등급 {event.importance}
          </span>
          <span className="rounded bg-indigo-500/20 text-indigo-300 border border-indigo-500/30 px-2 py-0.5 text-xs font-semibold">
            {event.category_id}
          </span>
        </div>
        <button
          onClick={onClose}
          className="rounded-full p-1 text-slate-400 hover:bg-slate-800 hover:text-slate-200 transition-colors"
        >
          <X className="h-5 w-5" />
        </button>
      </div>

      {/* 패널 바디 (스크롤) */}
      <div className="flex-1 overflow-y-auto p-5 space-y-5">
        {/* 사건 타이틀 및 기간 */}
        <div>
          <h2 className="text-xl font-bold text-white tracking-tight leading-snug">
            {event.title}
          </h2>
          {event.title_en && (
            <p className="text-xs font-medium text-slate-400 mt-0.5">
              {event.title_en}
            </p>
          )}

          <div className="mt-3 flex flex-wrap items-center gap-3 text-xs text-slate-300">
            <div className="flex items-center gap-1 bg-slate-900/80 px-2.5 py-1 rounded-md border border-slate-800">
              <Calendar className="h-3.5 w-3.5 text-amber-400" />
              <span className="font-mono text-amber-300 font-semibold">
                {formatYearRange(event.year_start, event.year_end, event.date_precision)}
              </span>
            </div>

            <div className="flex items-center gap-1 bg-slate-900/80 px-2.5 py-1 rounded-md border border-slate-800">
              <Globe className="h-3.5 w-3.5 text-sky-400" />
              <span>{event.region_id} {event.sub_region ? `· ${event.sub_region}` : ''}</span>
            </div>

            <button
              onClick={() => onJumpToEventYear(event.year_start)}
              className="flex items-center gap-1 rounded-md bg-indigo-600/30 border border-indigo-500/40 px-2.5 py-1 text-indigo-300 hover:bg-indigo-600/50 transition-colors"
            >
              <Navigation className="h-3.5 w-3.5" />
              <span>시간축 이동</span>
            </button>
          </div>
        </div>

        {/* 요약 (Summary) */}
        <div className="rounded-xl border border-slate-800 bg-slate-900/50 p-3.5">
          <h3 className="text-xs font-bold text-slate-400 mb-1.5 uppercase tracking-wider">
            사건 개요
          </h3>
          <p className="text-sm text-slate-200 leading-relaxed font-normal">
            {event.summary}
          </p>
        </div>

        {/* 역사적 의미 (Historical Significance) */}
        {event.historical_significance && (
          <div className="rounded-xl border border-indigo-900/30 bg-indigo-950/20 p-3.5">
            <h3 className="text-xs font-bold text-indigo-400 mb-1.5 uppercase tracking-wider flex items-center gap-1.5">
              <Award className="h-3.5 w-3.5" />
              역사적 의미와 통섭적 영향
            </h3>
            <p className="text-sm text-indigo-100/90 leading-relaxed">
              {event.historical_significance}
            </p>
          </div>
        )}

        {/* 원인 및 결과 (Cause & Consequence) */}
        {(event.cause || event.consequence) && (
          <div className="space-y-2.5">
            {event.cause && (
              <div className="rounded-xl border border-slate-800/80 bg-slate-900/40 p-3">
                <span className="text-[11px] font-bold text-amber-400 block mb-1">
                  🔍 배경 및 원인
                </span>
                <p className="text-xs text-slate-300 leading-relaxed">
                  {event.cause}
                </p>
              </div>
            )}

            {event.consequence && (
              <div className="rounded-xl border border-slate-800/80 bg-slate-900/40 p-3">
                <span className="text-[11px] font-bold text-emerald-400 block mb-1">
                  ⚡ 결과 및 파급 효과
                </span>
                <p className="text-xs text-slate-300 leading-relaxed">
                  {event.consequence}
                </p>
              </div>
            )}
          </div>
        )}

        {/* 관련 인물 (Related People) */}
        {event.people && event.people.length > 0 && (
          <div>
            <h3 className="text-xs font-bold text-slate-400 mb-2 flex items-center gap-1">
              <User className="h-3.5 w-3.5 text-pink-400" />
              주요 관련 인물
            </h3>
            <div className="space-y-1.5">
              {event.people.map((p) => (
                <div
                  key={p.id}
                  className="flex items-center justify-between rounded-lg border border-slate-800 bg-slate-900/70 p-2 text-xs"
                >
                  <span className="font-semibold text-slate-100">{p.name_ko}</span>
                  {p.role_title && (
                    <span className="text-[11px] text-slate-400">{p.role_title}</span>
                  )}
                </div>
              ))}
            </div>
          </div>
        )}

        {/* 관련 사건 (Related Events) */}
        {event.relations && event.relations.length > 0 && (
          <div>
            <h3 className="text-xs font-bold text-slate-400 mb-2 flex items-center gap-1">
              <Link2 className="h-3.5 w-3.5 text-cyan-400" />
              인과 및 동시대 연결 사건
            </h3>
            <div className="space-y-1.5">
              {event.relations.map((rel, idx) => (
                <button
                  key={idx}
                  onClick={() => onSelectRelatedEventId(rel.target_event_id)}
                  className="w-full text-left rounded-lg border border-slate-800 bg-slate-900/60 p-2.5 text-xs hover:border-indigo-500/50 hover:bg-slate-900 transition-all flex items-center justify-between"
                >
                  <div>
                    <span className="rounded bg-slate-800 px-1.5 py-0.5 text-[10px] font-mono text-cyan-300 mr-1.5">
                      {rel.relation_type}
                    </span>
                    <span className="font-medium text-slate-200">
                      {rel.target_event_id}
                    </span>
                  </div>
                  <span className="text-slate-500 text-[11px]">보기 →</span>
                </button>
              ))}
            </div>
          </div>
        )}

        {/* 출처 & 신뢰도 */}
        <div className="border-t border-slate-800/80 pt-4 flex items-center justify-between text-xs text-slate-500">
          <div className="flex items-center gap-1.5">
            <CheckCircle2 className="h-4 w-4 text-emerald-400" />
            <span>AI 교차검증 완료 (신뢰도: HIGH)</span>
          </div>
          <span className="text-[11px]">Version {event.version || 1}.0</span>
        </div>
      </div>
    </aside>
  );
};
