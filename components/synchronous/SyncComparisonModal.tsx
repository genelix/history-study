'use client';

import React, { useState, useMemo } from 'react';
import { HistoricalEventService } from '@/lib/services/eventService';
import {
  CONSILIENCE_CENTURIES,
  ERA_GROUPS,
  ConsiliencePeriod,
} from '@/lib/data/consilienceCenturies';
import {
  X,
  Sparkles,
  Globe,
  Calendar,
  CloudSun,
  Layers,
  ArrowRight,
  TrendingUp,
  Compass,
  CheckCircle2,
  Tag,
  Search,
  BookOpen
} from 'lucide-react';
import { HistoricalEvent } from '@/types/database.types';

interface SyncComparisonModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSelectEvent: (event: HistoricalEvent) => void;
}

export const SyncComparisonModal: React.FC<SyncComparisonModalProps> = ({
  isOpen,
  onClose,
  onSelectEvent,
}) => {
  // Default to 15th century (or 14th)
  const [selectedCenturyId, setSelectedCenturyId] = useState<string>('ad-15');
  const [selectedEraFilter, setSelectedEraFilter] = useState<string>('ALL');
  const [eventSearch, setEventSearch] = useState<string>('');

  const currentPeriod: ConsiliencePeriod = useMemo(() => {
    const found = CONSILIENCE_CENTURIES.find((c) => c.id === selectedCenturyId);
    return found || CONSILIENCE_CENTURIES[23]; // fallback to ad-14
  }, [selectedCenturyId]);

  const filteredCenturies = useMemo(() => {
    if (selectedEraFilter === 'ALL') return CONSILIENCE_CENTURIES;
    return CONSILIENCE_CENTURIES.filter((c) => c.eraGroup === selectedEraFilter);
  }, [selectedEraFilter]);

  const syncData = useMemo(() => {
    if (!isOpen) {
      return { west: [], china: [], korea: [], climate: [] };
    }
    const raw = HistoricalEventService.getSynchronousEvents(
      currentPeriod.centerYear,
      currentPeriod.spanYears
    );

    if (!eventSearch.trim()) return raw;

    const q = eventSearch.toLowerCase();
    const filterFn = (e: HistoricalEvent) =>
      e.title.toLowerCase().includes(q) ||
      (e.title_en ? e.title_en.toLowerCase().includes(q) : false) ||
      e.summary.toLowerCase().includes(q) ||
      (e.historical_significance ? e.historical_significance.toLowerCase().includes(q) : false);

    return {
      west: raw.west.filter(filterFn),
      china: raw.china.filter(filterFn),
      korea: raw.korea.filter(filterFn),
      climate: raw.climate.filter(filterFn),
    };
  }, [isOpen, currentPeriod, eventSearch]);

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/85 p-3 md:p-6 backdrop-blur-md animate-in fade-in duration-200">
      <div className="relative flex h-[94vh] w-full max-w-7xl flex-col rounded-2xl border border-slate-700/80 bg-slate-900 shadow-2xl overflow-hidden">
        {/* 1. 모달 최상단 헤더 */}
        <div className="flex items-center justify-between border-b border-slate-800 bg-slate-950/80 px-6 py-3.5 shrink-0">
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-gradient-to-br from-amber-500/20 via-indigo-500/20 to-teal-500/20 text-amber-300 border border-amber-500/40 shadow-inner">
              <Sparkles className="h-5 w-5" />
            </div>
            <div>
              <div className="flex items-center gap-2">
                <h2 className="text-base md:text-lg font-bold text-slate-100 flex items-center gap-2">
                  동시대 역사 통섭(統攝) 비교 뷰
                </h2>
                <span className="hidden sm:inline-block rounded-full bg-gradient-to-r from-amber-500/20 to-indigo-500/20 text-amber-300 border border-amber-500/30 px-2.5 py-0.5 text-xs font-semibold">
                  32개 전 세기 완전 커버리지
                </span>
              </div>
              <p className="text-xs text-slate-400">
                기후·환경 변동, 세계 무역망, 동서양 문명의 동시대적 상호작용을 통합 탐색합니다.
              </p>
            </div>
          </div>

          <div className="flex items-center gap-3">
            {/* 검색 필터 */}
            <div className="relative hidden md:block w-48">
              <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 h-3.5 w-3.5 text-slate-400" />
              <input
                type="text"
                placeholder="현재 세기 사건 검색..."
                value={eventSearch}
                onChange={(e) => setEventSearch(e.target.value)}
                className="w-full rounded-lg border border-slate-700/80 bg-slate-950/90 py-1 pl-8 pr-3 text-xs text-slate-200 placeholder-slate-500 focus:border-amber-500 focus:outline-none"
              />
              {eventSearch && (
                <button
                  onClick={() => setEventSearch('')}
                  className="absolute right-2 top-1/2 -translate-y-1/2 text-xs text-slate-400 hover:text-slate-200"
                >
                  ✕
                </button>
              )}
            </div>

            <button
              onClick={onClose}
              title="닫기 (ESC)"
              className="rounded-xl p-1.5 text-slate-400 hover:bg-slate-800 hover:text-slate-100 transition-colors border border-transparent hover:border-slate-700"
            >
              <X className="h-5 w-5" />
            </button>
          </div>
        </div>

        {/* 2. 대시대 그룹 탭 바 (7개 시대) */}
        <div className="flex items-center gap-1.5 overflow-x-auto border-b border-slate-800/80 bg-slate-950/60 px-6 py-2 no-scrollbar shrink-0 text-xs">
          <span className="text-slate-400 font-semibold shrink-0 mr-1 flex items-center gap-1">
            <Layers className="h-3.5 w-3.5 text-indigo-400" /> 시대 대분류:
          </span>
          <button
            onClick={() => setSelectedEraFilter('ALL')}
            className={`shrink-0 rounded-lg px-2.5 py-1 font-medium transition-all ${
              selectedEraFilter === 'ALL'
                ? 'bg-indigo-600 text-white font-bold shadow-sm'
                : 'bg-slate-900 text-slate-400 hover:bg-slate-800 hover:text-slate-200'
            }`}
          >
            전체 보기 ({CONSILIENCE_CENTURIES.length})
          </button>
          {ERA_GROUPS.map((group) => {
            const isSelected = selectedEraFilter === group.id;
            const count = CONSILIENCE_CENTURIES.filter((c) => c.eraGroup === group.id).length;
            return (
              <button
                key={group.id}
                onClick={() => {
                  setSelectedEraFilter(group.id);
                  const firstInGroup = CONSILIENCE_CENTURIES.find((c) => c.eraGroup === group.id);
                  if (firstInGroup) setSelectedCenturyId(firstInGroup.id);
                }}
                className={`shrink-0 rounded-lg px-2.5 py-1 font-medium transition-all flex items-center gap-1.5 border ${
                  isSelected
                    ? 'border-indigo-500/60 bg-indigo-950/60 text-indigo-200 font-bold'
                    : 'border-slate-800/80 bg-slate-900/60 text-slate-400 hover:bg-slate-800 hover:text-slate-200'
                }`}
              >
                <span>{group.icon}</span>
                <span>{group.label}</span>
                <span className="rounded bg-slate-800/80 px-1 py-0.2 text-[10px] text-slate-400 font-mono">
                  {count}
                </span>
              </button>
            );
          })}
        </div>

        {/* 3. 개별 세기 선택 버튼 바 (전 32개 세기 가로 스크롤) */}
        <div className="flex items-center gap-1.5 overflow-x-auto border-b border-slate-800/80 bg-slate-950/40 px-6 py-2.5 no-scrollbar shrink-0">
          <span className="text-xs font-semibold text-amber-400/90 shrink-0 flex items-center gap-1 mr-1">
            <Calendar className="h-3.5 w-3.5" /> 세기 선택:
          </span>
          {filteredCenturies.map((century) => {
            const isCurrent = century.id === selectedCenturyId;
            return (
              <button
                key={century.id}
                onClick={() => setSelectedCenturyId(century.id)}
                className={`shrink-0 rounded-lg px-3 py-1.5 text-xs font-medium transition-all duration-150 border ${
                  isCurrent
                    ? 'border-amber-400/80 bg-gradient-to-r from-amber-500 to-amber-600 text-slate-950 font-extrabold shadow-md shadow-amber-500/25 scale-[1.02]'
                    : 'border-slate-800/80 bg-slate-900/80 text-slate-300 hover:bg-slate-800 hover:text-white hover:border-slate-700'
                }`}
              >
                {century.name}
              </button>
            );
          })}
        </div>

        {/* 4. 메인 컨텐츠 영역: 상단 통섭 글로벌 맥락 배너 + 4분할 동시대 비교 그리드 */}
        <div className="flex-1 overflow-y-auto p-4 md:p-6 space-y-4 bg-slate-950/40">
          {/* [상단 통섭 글로벌 맥락 배너 (Global Consilience Context Banner)] */}
          <div className="rounded-2xl border border-amber-500/30 bg-gradient-to-br from-slate-900 via-slate-900/95 to-slate-950 p-5 shadow-xl relative overflow-hidden">
            {/* 배경 은은한 빛 효과 */}
            <div className="absolute top-0 right-0 -mt-8 -mr-8 w-64 h-64 rounded-full bg-amber-500/5 blur-3xl pointer-events-none" />
            <div className="absolute bottom-0 left-0 -mb-8 -ml-8 w-64 h-64 rounded-full bg-indigo-500/5 blur-3xl pointer-events-none" />

            <div className="relative z-10 space-y-4">
              {/* 배너 상단 헤더: 시대 배지, 세기명, 기간, 헤드라인 */}
              <div className="flex flex-col md:flex-row md:items-center justify-between gap-2 pb-3 border-b border-slate-800/90">
                <div className="flex flex-wrap items-center gap-2">
                  <span className="rounded-md bg-indigo-500/20 text-indigo-300 border border-indigo-500/30 px-2.5 py-0.5 text-xs font-semibold">
                    {currentPeriod.eraGroupLabel}
                  </span>
                  <h3 className="text-base md:text-lg font-bold text-amber-300 flex items-center gap-1.5">
                    <Compass className="h-4 w-4 text-amber-400" />
                    {currentPeriod.centuryLabel}
                  </h3>
                  <span className="text-xs font-mono text-slate-400">
                    ({currentPeriod.periodRange})
                  </span>
                </div>

                {/* 핵심 키워드 태그들 */}
                <div className="flex flex-wrap items-center gap-1.5">
                  {currentPeriod.keyKeywords.map((tag) => (
                    <span
                      key={tag}
                      className="rounded bg-slate-800/80 hover:bg-slate-700/80 px-2 py-0.5 text-[11px] font-medium text-slate-300 border border-slate-700/50"
                    >
                      #{tag}
                    </span>
                  ))}
                </div>
              </div>

              {/* 통섭적 한 줄 핵심 규정 (Headline) */}
              <div className="flex items-start gap-2 bg-amber-950/20 border border-amber-500/20 rounded-xl p-3">
                <TrendingUp className="h-4 w-4 text-amber-400 shrink-0 mt-0.5" />
                <p className="text-xs md:text-sm font-semibold text-amber-200/90 leading-relaxed">
                  {currentPeriod.headline}
                </p>
              </div>

              {/* 통섭 총괄 서술 (Consilience Narrative) */}
              <div className="text-xs md:text-sm text-slate-300 leading-relaxed bg-slate-950/50 p-3.5 rounded-xl border border-slate-800/60">
                <p>{currentPeriod.consilienceSummary}</p>
              </div>

              {/* 3열 심층 통섭 팩터: 기후·생태, 글로벌 네트워크, 핵심 시사점 */}
              <div className="grid grid-cols-1 md:grid-cols-3 gap-3 pt-1">
                {/* 1. 기후 환경 & 생태 맥락 */}
                <div className="rounded-xl border border-teal-500/25 bg-teal-950/15 p-3 flex flex-col justify-between">
                  <div>
                    <div className="flex items-center gap-1.5 text-xs font-bold text-teal-300 mb-1.5">
                      <CloudSun className="h-4 w-4 text-teal-400" />
                      <span>기후·환경 & 생태 맥락</span>
                    </div>
                    <p className="text-[11px] text-slate-300 leading-snug">
                      {currentPeriod.climateAndEcoContext}
                    </p>
                  </div>
                </div>

                {/* 2. 글로벌 교역 & 기술 연결망 */}
                <div className="rounded-xl border border-indigo-500/25 bg-indigo-950/15 p-3 flex flex-col justify-between">
                  <div>
                    <div className="flex items-center gap-1.5 text-xs font-bold text-indigo-300 mb-1.5">
                      <Globe className="h-4 w-4 text-indigo-400" />
                      <span>글로벌 교역 & 기술 연결망</span>
                    </div>
                    <p className="text-[11px] text-slate-300 leading-snug">
                      {currentPeriod.globalConnections}
                    </p>
                  </div>
                </div>

                {/* 3. 문명사적 핵심 시사점 */}
                <div className="rounded-xl border border-amber-500/25 bg-amber-950/15 p-3 flex flex-col justify-between">
                  <div>
                    <div className="flex items-center gap-1.5 text-xs font-bold text-amber-300 mb-1.5">
                      <CheckCircle2 className="h-4 w-4 text-amber-400" />
                      <span>문명사 핵심 시사점</span>
                    </div>
                    <ul className="space-y-1">
                      {currentPeriod.highlightTakeaways.map((point, idx) => (
                        <li
                          key={idx}
                          className="text-[11px] text-slate-300 leading-snug flex items-start gap-1"
                        >
                          <span className="text-amber-400 font-bold shrink-0">•</span>
                          <span>{point}</span>
                        </li>
                      ))}
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {/* [4분할 병렬 동시대 사건 비교 그리드] */}
          <div>
            <div className="flex items-center justify-between mb-3 px-1">
              <h4 className="text-xs md:text-sm font-bold text-slate-300 flex items-center gap-2">
                <BookOpen className="h-4 w-4 text-indigo-400" />
                {currentPeriod.name} 동시대 4개 권역 사건 병렬 비교
              </h4>
              <span className="text-[11px] text-slate-500">
                사건 카드를 클릭하면 상세 정보 창으로 이동합니다
              </span>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-3.5">
              {/* 1. 서양사 트랙 */}
              <div className="rounded-xl border border-indigo-900/50 bg-slate-900/80 p-3.5 flex flex-col shadow-md">
                <div className="flex items-center justify-between pb-2 mb-2.5 border-b border-indigo-900/60">
                  <div className="flex items-center gap-2">
                    <span className="text-base">🏛️</span>
                    <h5 className="font-bold text-xs md:text-sm text-indigo-300">서양사 (WEST)</h5>
                  </div>
                  <span className="rounded bg-indigo-950 px-1.5 py-0.5 text-[10px] font-mono text-indigo-300">
                    {syncData.west.length}건
                  </span>
                </div>
                <div className="space-y-2.5 flex-1 overflow-y-auto max-h-96 pr-1 custom-scrollbar">
                  {syncData.west.length === 0 ? (
                    <p className="text-xs text-slate-500 italic py-4 text-center">해당 시대 서양사 기록 없음</p>
                  ) : (
                    syncData.west.map((evt) => (
                      <div
                        key={evt.id}
                        onClick={() => {
                          onSelectEvent(evt);
                          onClose();
                        }}
                        className="group rounded-lg border border-slate-800/80 bg-slate-950/70 p-2.5 hover:border-indigo-500/50 hover:bg-indigo-950/30 transition-all cursor-pointer shadow-sm"
                      >
                        <div className="flex items-center justify-between mb-1">
                          <span className="font-bold text-xs text-slate-100 group-hover:text-indigo-300 line-clamp-1">
                            {evt.title}
                          </span>
                          <span className="text-[10px] font-mono text-amber-400/90 shrink-0 ml-1">
                            {evt.year_start}년
                          </span>
                        </div>
                        <p className="text-[11px] text-slate-400 line-clamp-2 leading-relaxed">
                          {evt.summary}
                        </p>
                      </div>
                    ))
                  )}
                </div>
              </div>

              {/* 2. 중국사 트랙 */}
              <div className="rounded-xl border border-rose-900/50 bg-slate-900/80 p-3.5 flex flex-col shadow-md">
                <div className="flex items-center justify-between pb-2 mb-2.5 border-b border-rose-900/60">
                  <div className="flex items-center gap-2">
                    <span className="text-base">🏯</span>
                    <h5 className="font-bold text-xs md:text-sm text-rose-300">중국사 (CHINA)</h5>
                  </div>
                  <span className="rounded bg-rose-950 px-1.5 py-0.5 text-[10px] font-mono text-rose-300">
                    {syncData.china.length}건
                  </span>
                </div>
                <div className="space-y-2.5 flex-1 overflow-y-auto max-h-96 pr-1 custom-scrollbar">
                  {syncData.china.length === 0 ? (
                    <p className="text-xs text-slate-500 italic py-4 text-center">해당 시대 중국사 기록 없음</p>
                  ) : (
                    syncData.china.map((evt) => (
                      <div
                        key={evt.id}
                        onClick={() => {
                          onSelectEvent(evt);
                          onClose();
                        }}
                        className="group rounded-lg border border-slate-800/80 bg-slate-950/70 p-2.5 hover:border-rose-500/50 hover:bg-rose-950/30 transition-all cursor-pointer shadow-sm"
                      >
                        <div className="flex items-center justify-between mb-1">
                          <span className="font-bold text-xs text-slate-100 group-hover:text-rose-300 line-clamp-1">
                            {evt.title}
                          </span>
                          <span className="text-[10px] font-mono text-amber-400/90 shrink-0 ml-1">
                            {evt.year_start}년
                          </span>
                        </div>
                        <p className="text-[11px] text-slate-400 line-clamp-2 leading-relaxed">
                          {evt.summary}
                        </p>
                      </div>
                    ))
                  )}
                </div>
              </div>

              {/* 3. 한국사 트랙 */}
              <div className="rounded-xl border border-sky-900/50 bg-slate-900/80 p-3.5 flex flex-col shadow-md">
                <div className="flex items-center justify-between pb-2 mb-2.5 border-b border-sky-900/60">
                  <div className="flex items-center gap-2">
                    <span className="text-base">🇰🇷</span>
                    <h5 className="font-bold text-xs md:text-sm text-sky-300">한국사 (KOREA)</h5>
                  </div>
                  <span className="rounded bg-sky-950 px-1.5 py-0.5 text-[10px] font-mono text-sky-300">
                    {syncData.korea.length}건
                  </span>
                </div>
                <div className="space-y-2.5 flex-1 overflow-y-auto max-h-96 pr-1 custom-scrollbar">
                  {syncData.korea.length === 0 ? (
                    <p className="text-xs text-slate-500 italic py-4 text-center">해당 시대 한국사 기록 없음</p>
                  ) : (
                    syncData.korea.map((evt) => (
                      <div
                        key={evt.id}
                        onClick={() => {
                          onSelectEvent(evt);
                          onClose();
                        }}
                        className="group rounded-lg border border-slate-800/80 bg-slate-950/70 p-2.5 hover:border-sky-500/50 hover:bg-sky-950/30 transition-all cursor-pointer shadow-sm"
                      >
                        <div className="flex items-center justify-between mb-1">
                          <span className="font-bold text-xs text-slate-100 group-hover:text-sky-300 line-clamp-1">
                            {evt.title}
                          </span>
                          <span className="text-[10px] font-mono text-amber-400/90 shrink-0 ml-1">
                            {evt.year_start}년
                          </span>
                        </div>
                        <p className="text-[11px] text-slate-400 line-clamp-2 leading-relaxed">
                          {evt.summary}
                        </p>
                      </div>
                    ))
                  )}
                </div>
              </div>

              {/* 4. 기후환경 & 자연과학 트랙 */}
              <div className="rounded-xl border border-teal-900/50 bg-slate-900/80 p-3.5 flex flex-col shadow-md">
                <div className="flex items-center justify-between pb-2 mb-2.5 border-b border-teal-900/60">
                  <div className="flex items-center gap-2">
                    <span className="text-base">🌍</span>
                    <h5 className="font-bold text-xs md:text-sm text-teal-300">기후환경 & 과학 (NATURE)</h5>
                  </div>
                  <span className="rounded bg-teal-950 px-1.5 py-0.5 text-[10px] font-mono text-teal-300">
                    {syncData.climate.length}건
                  </span>
                </div>
                <div className="space-y-2.5 flex-1 overflow-y-auto max-h-96 pr-1 custom-scrollbar">
                  {syncData.climate.length === 0 ? (
                    <p className="text-xs text-slate-500 italic py-4 text-center">해당 시대 기후/과학 기록 없음</p>
                  ) : (
                    syncData.climate.map((evt) => (
                      <div
                        key={evt.id}
                        onClick={() => {
                          onSelectEvent(evt);
                          onClose();
                        }}
                        className="group rounded-lg border border-slate-800/80 bg-slate-950/70 p-2.5 hover:border-teal-500/50 hover:bg-teal-950/30 transition-all cursor-pointer shadow-sm"
                      >
                        <div className="flex items-center justify-between mb-1">
                          <span className="font-bold text-xs text-slate-100 group-hover:text-teal-300 line-clamp-1">
                            {evt.title}
                          </span>
                          <span className="text-[10px] font-mono text-amber-400/90 shrink-0 ml-1">
                            {evt.year_start}년
                          </span>
                        </div>
                        <p className="text-[11px] text-slate-400 line-clamp-2 leading-relaxed">
                          {evt.summary}
                        </p>
                      </div>
                    ))
                  )}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
