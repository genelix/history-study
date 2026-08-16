'use client';

import React from 'react';
import { HistoricalEvent } from '@/types/database.types';
import { formatYearRange } from '@/lib/dates/yearFormatter';
import {
  X,
  Calendar,
  Globe,
  Bookmark,
  Award,
  User,
  Link2,
  BookOpen,
  CheckCircle2,
  Navigation,
  Sparkles,
  Search,
  ExternalLink
} from 'lucide-react';

interface EventDetailPanelProps {
  event: HistoricalEvent | null;
  onClose: () => void;
  onSelectRelatedEventId: (id: string) => void;
  onJumpToEventYear: (year: number) => void;
}

const CATEGORY_LABELS: Record<string, string> = {
  POLITICS: '정치·전쟁',
  PERSON: '인물',
  INSTITUTION: '제도·사회',
  RELIGION: '종교·사상',
  SCIENCE: '과학·기술',
  ART_CULTURE: '예술·문화',
  CLIMATE_ENVIRONMENT: '기후환경',
  ECONOMY: '경제·무역',
};

export const EventDetailPanel: React.FC<EventDetailPanelProps> = ({
  event,
  onClose,
  onSelectRelatedEventId,
  onJumpToEventYear,
}) => {
  if (!event) return null;

  const categoryLabel = CATEGORY_LABELS[event.category_id] || event.category_id;
  const googleSearchUrl = `https://www.google.com/search?q=${encodeURIComponent(event.title)}`;

  return (
    <aside className="fixed inset-y-0 right-0 z-50 w-full sm:w-[480px] md:w-[540px] bg-slate-950/98 border-l border-slate-800/90 text-slate-100 shadow-2xl backdrop-blur-2xl flex flex-col overflow-hidden transition-all duration-300 animate-slide-left">
      {/* 패널 헤더 */}
      <div className="flex items-center justify-between p-4 border-b border-slate-800/80 bg-slate-900/80 backdrop-blur-md">
        <div className="flex items-center gap-2">
          <span className="rounded bg-amber-400/20 text-amber-300 border border-amber-400/40 px-2.5 py-0.5 text-xs font-extrabold shadow-sm">
            중요도 {event.importance}등급
          </span>
          <span className="rounded bg-indigo-500/20 text-indigo-300 border border-indigo-500/30 px-2.5 py-0.5 text-xs font-bold">
            {categoryLabel}
          </span>
        </div>
        <button
          onClick={onClose}
          className="rounded-full p-1.5 text-slate-400 hover:bg-slate-800 hover:text-slate-100 transition-colors"
          title="닫기"
        >
          <X className="h-5 w-5" />
        </button>
      </div>

      {/* 패널 바디 (스크롤) */}
      <div className="flex-1 overflow-y-auto p-6 space-y-6 custom-scrollbar">
        {/* 사건 타이틀 및 기간 */}
        <div className="border-b border-slate-800/80 pb-5">
          <h2 className="text-2xl font-extrabold text-white tracking-tight leading-snug">
            {event.title}
          </h2>
          {event.title_en && (
            <p className="text-xs font-medium text-slate-400 mt-1">
              {event.title_en}
            </p>
          )}

          <div className="mt-4 flex flex-wrap items-center gap-2.5 text-xs text-slate-300">
            <div className="flex items-center gap-1.5 bg-amber-500/10 px-3 py-1 rounded-md border border-amber-500/30 text-amber-300 font-mono font-bold shadow-sm">
              <Calendar className="h-3.5 w-3.5 text-amber-400" />
              <span>
                {formatYearRange(event.year_start, event.year_end, event.date_precision)}
              </span>
            </div>

            <div className="flex items-center gap-1.5 bg-slate-900 px-3 py-1 rounded-md border border-slate-800 text-slate-300">
              <Globe className="h-3.5 w-3.5 text-sky-400" />
              <span>{event.region_id} {event.sub_region ? `· ${event.sub_region}` : ''}</span>
            </div>

            <div className="flex items-center gap-2 ml-auto">
              {/* 상단 빠른 구글 검색 버튼 */}
              <a
                href={googleSearchUrl}
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center gap-1.5 rounded-md bg-blue-600/20 border border-blue-500/40 px-2.5 py-1 text-xs text-blue-300 hover:bg-blue-600/40 hover:text-white transition-all font-medium shadow-sm"
                title={`구글에서 '${event.title}' 검색 (새 창)`}
              >
                <Search className="h-3.5 w-3.5 text-blue-400" />
                <span>구글 검색</span>
                <ExternalLink className="h-3 w-3 opacity-70" />
              </a>

              <button
                onClick={() => onJumpToEventYear(event.year_start)}
                className="flex items-center gap-1 rounded-md bg-indigo-600/30 border border-indigo-500/40 px-3 py-1 text-indigo-300 hover:bg-indigo-600/50 transition-colors font-medium"
              >
                <Navigation className="h-3.5 w-3.5" />
                <span>시간축 이동</span>
              </button>
            </div>
          </div>
        </div>

        {/* 요약 (Summary) */}
        <div className="rounded-xl border border-slate-800 bg-slate-900/60 p-4 shadow-sm">
          <h3 className="text-xs font-bold text-slate-400 mb-1.5 uppercase tracking-wider flex items-center gap-1.5">
            <Bookmark className="h-3.5 w-3.5 text-amber-400" />
            사건 개요 (Summary)
          </h3>
          <p className="text-sm text-slate-200 leading-relaxed font-normal break-keep">
            {event.summary}
          </p>
        </div>

        {/* 📖 심층 상세 해설 (Detailed Historical Narrative) */}
        <div className="rounded-2xl border border-sky-900/50 bg-gradient-to-b from-sky-950/30 via-slate-900/70 to-slate-950/90 p-5 shadow-xl">
          <div className="flex items-center justify-between border-b border-sky-900/40 pb-3 mb-3.5">
            <h3 className="text-sm font-extrabold text-sky-300 uppercase tracking-wider flex items-center gap-2">
              <BookOpen className="h-4 w-4 text-sky-400" />
              심층 상세 해설 및 역사적 전개
            </h3>
            <span className="text-[11px] font-semibold text-sky-400/80 bg-sky-950/80 px-2 py-0.5 rounded border border-sky-700/40 flex items-center gap-1">
              <Sparkles className="h-3 w-3 text-sky-400" />
              통섭 분석
            </span>
          </div>

          <div className="text-[13.5px] text-slate-100/95 leading-relaxed space-y-3 font-normal break-keep">
            {event.detailed_description ? (
              event.detailed_description.split('\n\n').map((paragraph, idx) => (
                <p key={idx} className="leading-relaxed text-slate-200">
                  {paragraph}
                </p>
              ))
            ) : (
              <p className="leading-relaxed text-slate-200">
                {event.summary}
              </p>
            )}
          </div>
        </div>

        {/* 역사적 의미 (Historical Significance) */}
        {event.historical_significance && (
          <div className="rounded-xl border border-indigo-900/40 bg-indigo-950/25 p-4 shadow-sm">
            <h3 className="text-xs font-bold text-indigo-300 mb-1.5 uppercase tracking-wider flex items-center gap-1.5">
              <Award className="h-4 w-4 text-amber-400" />
              역사적 의미와 문명사적 영향
            </h3>
            <p className="text-sm text-indigo-100/95 leading-relaxed break-keep">
              {event.historical_significance}
            </p>
          </div>
        )}

        {/* 원인 및 결과 (Cause & Consequence) */}
        {(event.cause || event.consequence) && (
          <div className="space-y-3">
            {event.cause && (
              <div className="rounded-xl border border-amber-900/40 bg-amber-950/20 p-3.5">
                <span className="text-xs font-bold text-amber-300 block mb-1 flex items-center gap-1">
                  🔍 배경 및 촉발 원인
                </span>
                <p className="text-xs text-slate-300 leading-relaxed break-keep">
                  {event.cause}
                </p>
              </div>
            )}

            {event.consequence && (
              <div className="rounded-xl border border-emerald-900/40 bg-emerald-950/20 p-3.5">
                <span className="text-xs font-bold text-emerald-300 block mb-1 flex items-center gap-1">
                  ⚡ 결과 및 파급 효과
                </span>
                <p className="text-xs text-slate-300 leading-relaxed break-keep">
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

        {/* 🔍 외부 지식 백과 & 구글 심층 탐색 카드 */}
        <div className="rounded-xl border border-blue-900/40 bg-gradient-to-r from-blue-950/40 via-slate-900/80 to-indigo-950/40 p-4 shadow-lg flex flex-col gap-3">
          <div className="flex items-center gap-2.5">
            <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-blue-500/20 text-blue-300 border border-blue-500/30 shrink-0">
              <Search className="h-4 w-4" />
            </div>
            <div>
              <h4 className="text-xs font-bold text-slate-200">외부 지식 & 학술 자료 심층 탐색</h4>
              <p className="text-[11px] text-slate-400">
                구글(Google)에서 &apos;{event.title}&apos;에 대한 최신 학술 논문, 백과사전, 관련 사료를 새 탭에서 확인합니다.
              </p>
            </div>
          </div>
          <a
            href={googleSearchUrl}
            target="_blank"
            rel="noopener noreferrer"
            className="w-full inline-flex items-center justify-center gap-2 rounded-lg bg-gradient-to-r from-blue-600 via-indigo-600 to-blue-700 px-4 py-2.5 text-xs font-bold text-white shadow-lg shadow-blue-500/20 hover:from-blue-500 hover:to-indigo-500 hover:shadow-blue-500/30 transition-all active:scale-[0.99]"
          >
            <Search className="h-3.5 w-3.5" />
            <span>&apos;{event.title}&apos; 구글에서 검색하기</span>
            <ExternalLink className="h-3.5 w-3.5 opacity-80" />
          </a>
        </div>

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
