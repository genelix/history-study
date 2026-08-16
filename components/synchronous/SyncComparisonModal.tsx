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
  Globe,
  Calendar,
  CloudSun,
  Layers,
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
  // Default to 15th century
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
      return { west: [], china: [], korea: [], other: [], climate: [] };
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
      other: raw.other.filter(filterFn),
      climate: raw.climate.filter(filterFn),
    };
  }, [isOpen, currentPeriod, eventSearch]);

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/85 p-2 md:p-5 backdrop-blur-md animate-in fade-in duration-200">
      <div className="relative flex h-[95vh] w-full max-w-[1550px] flex-col rounded-2xl border border-slate-700/80 bg-slate-900 shadow-2xl overflow-hidden">
        {/* 1. 모달 최상단 헤더 */}
        <div className="flex items-center justify-between border-b border-slate-800 bg-slate-950/80 px-6 py-3.5 shrink-0">
          <div className="flex items-center gap-3">
            <div className="flex h-9 w-9 items-center justify-center rounded-xl bg-gradient-to-tr from-amber-500 to-indigo-600 shadow-lg shadow-indigo-500/20">
              <Globe className="h-5 w-5 text-white" />
            </div>
            <div>
              <div className="flex items-center gap-2">
                <h3 className="font-extrabold text-base md:text-lg text-slate-100 tracking-tight">
                  동시대 역사 통섭(統攝) 비교 뷰
                </h3>
                <span className="rounded-full bg-amber-500/20 px-2.5 py-0.5 text-[11px] font-bold text-amber-300 border border-amber-500/30">
                  전세계 32개 세기 완전 지원
                </span>
              </div>
              <p className="text-xs text-slate-400">
                서양사, 중국사, 한국사, 아시아·아프리카·아메리카사, 기후환경을 한눈에 교차 비교합니다.
              </p>
            </div>
          </div>

          <div className="flex items-center gap-3">
            {/* 세기 내 실시간 검색 */}
            <div className="relative hidden sm:block w-56">
              <Search className="absolute left-2.5 top-2 h-3.5 w-3.5 text-slate-400" />
              <input
                type="text"
                placeholder="이 세기 내 사건 검색..."
                value={eventSearch}
                onChange={(e) => setEventSearch(e.target.value)}
                className="w-full rounded-lg border border-slate-700 bg-slate-950 py-1.5 pl-8 pr-3 text-xs text-slate-100 placeholder-slate-500 focus:border-indigo-500 focus:outline-none"
              />
            </div>

            <button
              onClick={onClose}
              className="rounded-full p-2 text-slate-400 hover:bg-slate-800 hover:text-white transition-colors"
              title="닫기"
            >
              <X className="h-5 w-5" />
            </button>
          </div>
        </div>

        {/* 2. 대시대(Era) 그룹 탭 바 */}
        <div className="flex items-center gap-1.5 border-b border-slate-800 bg-slate-950/90 px-6 py-2 shrink-0 overflow-x-auto custom-scrollbar">
          <span className="text-xs font-bold text-slate-400 shrink-0 mr-1 flex items-center gap-1">
            <Layers className="h-3.5 w-3.5 text-indigo-400" /> 대시대:
          </span>
          <button
            onClick={() => setSelectedEraFilter('ALL')}
            className={`rounded-lg px-3 py-1 text-xs font-bold transition-all whitespace-nowrap ${
              selectedEraFilter === 'ALL'
                ? 'bg-indigo-600 text-white shadow-md shadow-indigo-600/30'
                : 'bg-slate-900 text-slate-400 hover:bg-slate-800 hover:text-slate-200 border border-slate-800'
            }`}
          >
            전체 보기 ({CONSILIENCE_CENTURIES.length})
          </button>
          {ERA_GROUPS.map((era) => {
            const isSelected = selectedEraFilter === era.id;
            return (
              <button
                key={era.id}
                onClick={() => setSelectedEraFilter(era.id)}
                className={`rounded-lg px-3 py-1 text-xs font-bold transition-all whitespace-nowrap ${
                  isSelected
                    ? 'bg-indigo-600 text-white shadow-md shadow-indigo-600/30'
                    : 'bg-slate-900 text-slate-400 hover:bg-slate-800 hover:text-slate-200 border border-slate-800'
                }`}
              >
                <span>{era.icon}</span>
                <span>{era.label}</span>
              </button>
            );
          })}
        </div>

        {/* 3. 32개 세기 가로 스크롤 선택 바 */}
        <div className="flex items-center gap-1.5 border-b border-slate-800/80 bg-slate-950 px-6 py-2.5 shrink-0 overflow-x-auto custom-scrollbar">
          <span className="text-[11px] font-bold text-amber-400 shrink-0 mr-1 flex items-center gap-1">
            <Calendar className="h-3.5 w-3.5" /> 세기 선택:
          </span>
          {filteredCenturies.map((c) => {
            const isSelected = c.id === selectedCenturyId;
            return (
              <button
                key={c.id}
                onClick={() => {
                  setSelectedCenturyId(c.id);
                  setEventSearch('');
                }}
                className={`rounded-lg px-3 py-1 text-xs font-semibold transition-all whitespace-nowrap flex items-center gap-1.5 ${
                  isSelected
                    ? 'bg-amber-400 text-slate-950 font-extrabold shadow-md shadow-amber-400/20 scale-105 ring-1 ring-amber-300'
                    : 'bg-slate-900/90 text-slate-300 hover:bg-slate-800 hover:text-white border border-slate-800'
                }`}
              >
                <span>{c.name}</span>
              </button>
            );
          })}
        </div>

        {/* 4. 메인 컨텐츠 영역 (상단 통섭 맥락 배너 + 하단 5분할 병렬 비교 그리드) */}
        <div className="flex-1 overflow-y-auto p-4 md:p-6 space-y-5 custom-scrollbar">
          {/* 상단 통섭 글로벌 맥락 & 거시 통찰 배너 */}
          <div className="rounded-2xl border border-indigo-500/30 bg-gradient-to-br from-indigo-950/70 via-slate-900/90 to-purple-950/50 p-4 md:p-5 shadow-xl backdrop-blur-xl space-y-4">
            <div className="flex flex-col md:flex-row md:items-center justify-between gap-2 border-b border-indigo-500/20 pb-3">
              <div className="flex items-center gap-2.5">
                <span className="flex h-7 w-7 items-center justify-center rounded-lg bg-amber-400 text-slate-950 font-black text-sm">
                  ★
                </span>
                <div>
                  <h4 className="font-extrabold text-base md:text-lg text-slate-100 tracking-tight">
                    {currentPeriod.headline}
                  </h4>
                  <p className="text-xs text-amber-300/90 font-mono">
                    {currentPeriod.centuryLabel} ({currentPeriod.periodRange})
                  </p>
                </div>
              </div>

              {/* 해시태그 키워드 */}
              <div className="flex flex-wrap items-center gap-1.5">
                {currentPeriod.keyKeywords.map((kw, idx) => (
                  <span
                    key={idx}
                    className="inline-flex items-center gap-0.5 rounded-md bg-indigo-900/50 border border-indigo-500/30 px-2 py-0.5 text-[11px] font-medium text-indigo-200"
                  >
                    <Tag className="h-2.5 w-2.5 text-indigo-400" />
                    #{kw}
                  </span>
                ))}
              </div>
            </div>

            {/* 통섭 총괄 서술 (Global Narrative) */}
            <p className="text-xs md:text-sm text-slate-200/90 leading-relaxed break-keep font-normal">
              {currentPeriod.consilienceSummary}
            </p>

            {/* 3열 구조화 심층 정보 카드 */}
            <div className="grid grid-cols-1 md:grid-cols-3 gap-3 pt-1">
              {/* 기후 & 생태 맥락 */}
              <div className="rounded-xl border border-teal-900/40 bg-teal-950/20 p-3 flex flex-col justify-between">
                <div>
                  <div className="flex items-center gap-1.5 text-teal-300 font-bold text-xs mb-1.5">
                    <CloudSun className="h-3.5 w-3.5 text-teal-400" />
                    <span>기후·환경 & 생태 맥락</span>
                  </div>
                  <p className="text-[11.5px] text-teal-100/80 leading-relaxed break-keep">
                    {currentPeriod.climateAndEcoContext}
                  </p>
                </div>
              </div>

              {/* 글로벌 교역 & 기술망 */}
              <div className="rounded-xl border border-amber-900/40 bg-amber-950/20 p-3 flex flex-col justify-between">
                <div>
                  <div className="flex items-center gap-1.5 text-amber-300 font-bold text-xs mb-1.5">
                    <Compass className="h-3.5 w-3.5 text-amber-400" />
                    <span>글로벌 교역 & 기술 연결망</span>
                  </div>
                  <p className="text-[11.5px] text-amber-100/80 leading-relaxed break-keep">
                    {currentPeriod.globalConnections}
                  </p>
                </div>
              </div>

              {/* 문명사 핵심 시사점 */}
              <div className="rounded-xl border border-purple-900/40 bg-purple-950/20 p-3 flex flex-col justify-between">
                <div>
                  <div className="flex items-center gap-1.5 text-purple-300 font-bold text-xs mb-1.5">
                    <TrendingUp className="h-3.5 w-3.5 text-purple-400" />
                    <span>문명사 핵심 시사점</span>
                  </div>
                  <ul className="space-y-1 text-[11.5px] text-purple-100/90 leading-tight">
                    {currentPeriod.highlightTakeaways.map((insight, idx) => (
                      <li key={idx} className="flex items-start gap-1">
                        <CheckCircle2 className="h-3 w-3 text-purple-400 shrink-0 mt-0.5" />
                        <span>{insight}</span>
                      </li>
                    ))}
                  </ul>
                </div>
              </div>
            </div>
          </div>

          {/* 하단 5분할 동시 비교 그리드 (서양사 / 중국사 / 한국사 / 아시아·아프리카·아메리카 / 기후환경) */}
          <div>
            <div className="flex items-center justify-between mb-3">
              <h4 className="font-bold text-sm text-slate-300 flex items-center gap-2">
                <BookOpen className="h-4 w-4 text-amber-400" />
                <span>동시대 5대 권역 교차 비교 (5-Track Synchronous View)</span>
              </h4>
              <span className="text-xs text-slate-400">
                총{' '}
                <strong className="text-amber-400">
                  {syncData.west.length + syncData.china.length + syncData.korea.length + syncData.other.length + syncData.climate.length}
                </strong>
                건의 사건이 검색됨
              </span>
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-3.5">
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

              {/* 4. 아시아·아프리카·아메리카 트랙 (OTHER_REGIONS) */}
              <div className="rounded-xl border border-amber-900/50 bg-slate-900/80 p-3.5 flex flex-col shadow-md">
                <div className="flex items-center justify-between pb-2 mb-2.5 border-b border-amber-900/60">
                  <div className="flex items-center gap-2">
                    <span className="text-base">🌐</span>
                    <h5 className="font-bold text-xs md:text-sm text-amber-300">기타 세계사 (GLOBAL)</h5>
                  </div>
                  <span className="rounded bg-amber-950 px-1.5 py-0.5 text-[10px] font-mono text-amber-300">
                    {syncData.other.length}건
                  </span>
                </div>
                <div className="space-y-2.5 flex-1 overflow-y-auto max-h-96 pr-1 custom-scrollbar">
                  {syncData.other.length === 0 ? (
                    <p className="text-xs text-slate-500 italic py-4 text-center">해당 시대 기록 없음</p>
                  ) : (
                    syncData.other.map((evt) => (
                      <div
                        key={evt.id}
                        onClick={() => {
                          onSelectEvent(evt);
                          onClose();
                        }}
                        className="group rounded-lg border border-slate-800/80 bg-slate-950/70 p-2.5 hover:border-amber-500/50 hover:bg-amber-950/30 transition-all cursor-pointer shadow-sm"
                      >
                        <div className="flex items-center justify-between mb-1">
                          <span className="font-bold text-xs text-slate-100 group-hover:text-amber-300 line-clamp-1">
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

              {/* 5. 기후환경 & 자연과학 트랙 */}
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
