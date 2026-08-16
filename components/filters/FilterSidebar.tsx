'use client';

import React from 'react';
import { RegionId, CategoryId, ImportanceLevel, TimelineFilterState } from '@/types/database.types';
import { Filter, Globe, Bookmark, Award, RotateCcw, CheckSquare, Square, ChevronLeft } from 'lucide-react';

interface FilterSidebarProps {
  filterState: TimelineFilterState;
  onFilterChange: (newState: TimelineFilterState) => void;
  totalFilteredCount: number;
  isOpen: boolean;
  onToggle: () => void;
}

const REGION_OPTIONS: { id: RegionId; label: string; flag: string }[] = [
  { id: 'WEST', label: '서양사 (WEST)', flag: '🏛️' },
  { id: 'CHINA', label: '중국사 (CHINA)', flag: '🏯' },
  { id: 'KOREA', label: '한국사 (KOREA)', flag: '🇰🇷' },
  { id: 'CLIMATE', label: '기후·환경 (CLIMATE)', flag: '🌍' },
];

const CATEGORY_OPTIONS: { id: CategoryId; label: string; color: string }[] = [
  { id: 'POLITICS', label: '정치·전쟁', color: '#f59e0b' },
  { id: 'PERSON', label: '인물', color: '#ec4899' },
  { id: 'INSTITUTION', label: '제도·사회', color: '#3b82f6' },
  { id: 'RELIGION', label: '종교·사상', color: '#a855f7' },
  { id: 'SCIENCE', label: '과학·기술', color: '#06b6d4' },
  { id: 'ART_CULTURE', label: '예술·문화', color: '#10b981' },
  { id: 'CLIMATE_ENVIRONMENT', label: '기후환경', color: '#14b8a6' },
  { id: 'ECONOMY', label: '경제·무역', color: '#eab308' },
];

const IMPORTANCE_PRESETS: { label: string; levels: ImportanceLevel[]; desc: string }[] = [
  { label: 'A (문명사 핵심)', levels: ['A'], desc: '1000년 단위 거시 문명사' },
  { label: 'A + B (주요사건)', levels: ['A', 'B'], desc: '100년 단위 국가·지역 격변' },
  { label: 'A + B + C (전체보기)', levels: ['A', 'B', 'C'], desc: '10년 단위 세부 인물·사건' },
];

export const FilterSidebar: React.FC<FilterSidebarProps> = ({
  filterState,
  onFilterChange,
  totalFilteredCount,
  isOpen,
  onToggle,
}) => {
  const toggleRegion = (regionId: RegionId) => {
    const exists = filterState.regions.includes(regionId);
    const updated = exists
      ? filterState.regions.filter((r) => r !== regionId)
      : [...filterState.regions, regionId];
    onFilterChange({ ...filterState, regions: updated });
  };

  const toggleCategory = (catId: CategoryId) => {
    const exists = filterState.categories.includes(catId);
    const updated = exists
      ? filterState.categories.filter((c) => c !== catId)
      : [...filterState.categories, catId];
    onFilterChange({ ...filterState, categories: updated });
  };

  const handleImportancePreset = (levels: ImportanceLevel[]) => {
    onFilterChange({ ...filterState, importanceLevels: levels });
  };

  const handleReset = () => {
    onFilterChange({
      ...filterState,
      regions: ['WEST', 'CHINA', 'KOREA', 'CLIMATE'],
      categories: [
        'POLITICS',
        'PERSON',
        'INSTITUTION',
        'RELIGION',
        'SCIENCE',
        'ART_CULTURE',
        'CLIMATE_ENVIRONMENT',
        'ECONOMY',
      ],
      importanceLevels: ['A', 'B', 'C'],
      searchQuery: '',
    });
  };

  const isImportanceSelected = (levels: ImportanceLevel[]) => {
    if (levels.length !== filterState.importanceLevels.length) return false;
    return levels.every((l) => filterState.importanceLevels.includes(l));
  };

  if (!isOpen) {
    return null;
  }

  return (
    <aside className="w-full lg:w-64 shrink-0 border-r border-slate-800 bg-slate-950/90 p-4 text-slate-200 overflow-y-auto max-h-screen transition-all duration-300 animate-in fade-in slide-in-from-left-4 z-30 shadow-xl backdrop-blur-md">
      {/* 상단 타이틀, 리셋 및 접기 버튼 */}
      <div className="flex items-center justify-between pb-3 border-b border-slate-800/80">
        <div className="flex items-center gap-2 font-semibold text-sm text-slate-100">
          <Filter className="h-4 w-4 text-indigo-400" />
          <span>통섭 다차원 필터</span>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={handleReset}
            title="필터 초기화"
            className="flex items-center gap-1 text-[11px] text-slate-400 hover:text-indigo-300 transition-colors"
          >
            <RotateCcw className="h-3 w-3" />
            초기화
          </button>
          <button
            onClick={onToggle}
            title="필터 패널 접기"
            className="rounded p-1 text-slate-400 hover:bg-slate-800 hover:text-slate-100 transition-colors"
          >
            <ChevronLeft className="h-4 w-4" />
          </button>
        </div>
      </div>

      {/* 이벤트 수 뱃지 */}
      <div className="my-3 flex items-center justify-between rounded-lg bg-slate-900/90 px-3 py-2 border border-slate-800">
        <span className="text-xs text-slate-400">현재 탐색 사건:</span>
        <span className="font-bold text-xs text-amber-400">{totalFilteredCount} 건</span>
      </div>

      {/* 1. 중요도 필터 */}
      <div className="mb-5">
        <div className="flex items-center gap-1.5 text-xs font-semibold text-slate-300 mb-2">
          <Award className="h-3.5 w-3.5 text-amber-400" />
          <span>중요도 등급</span>
        </div>
        <div className="space-y-1.5">
          {IMPORTANCE_PRESETS.map((preset) => {
            const active = isImportanceSelected(preset.levels);
            return (
              <button
                key={preset.label}
                onClick={() => handleImportancePreset(preset.levels)}
                className={`w-full text-left rounded-lg px-2.5 py-1.5 text-xs font-medium transition-all flex items-center justify-between border ${
                  active
                    ? 'border-indigo-500/50 bg-indigo-950/40 text-indigo-200'
                    : 'border-slate-800/60 bg-slate-900/40 text-slate-400 hover:bg-slate-900 hover:text-slate-200'
                }`}
              >
                <span>{preset.label}</span>
                <span className="text-[10px] text-slate-500">{preset.desc}</span>
              </button>
            );
          })}
        </div>
      </div>

      {/* 2. 지역 필터 */}
      <div className="mb-5">
        <div className="flex items-center gap-1.5 text-xs font-semibold text-slate-300 mb-2">
          <Globe className="h-3.5 w-3.5 text-sky-400" />
          <span>지역 분류</span>
        </div>
        <div className="space-y-1">
          {REGION_OPTIONS.map((reg) => {
            const checked = filterState.regions.includes(reg.id);
            return (
              <button
                key={reg.id}
                onClick={() => toggleRegion(reg.id)}
                className={`w-full flex items-center justify-between rounded-lg px-2.5 py-1.5 text-xs transition-colors ${
                  checked ? 'text-slate-100 bg-slate-900/60 font-medium' : 'text-slate-500 hover:text-slate-300'
                }`}
              >
                <div className="flex items-center gap-2">
                  <span className="text-sm">{reg.flag}</span>
                  <span>{reg.label}</span>
                </div>
                {checked ? (
                  <CheckSquare className="h-4 w-4 text-indigo-400" />
                ) : (
                  <Square className="h-4 w-4 text-slate-700" />
                )}
              </button>
            );
          })}
        </div>
      </div>

      {/* 3. 카테고리 필터 */}
      <div>
        <div className="flex items-center gap-1.5 text-xs font-semibold text-slate-300 mb-2">
          <Bookmark className="h-3.5 w-3.5 text-emerald-400" />
          <span>분야 카테고리</span>
        </div>
        <div className="space-y-1">
          {CATEGORY_OPTIONS.map((cat) => {
            const checked = filterState.categories.includes(cat.id);
            return (
              <button
                key={cat.id}
                onClick={() => toggleCategory(cat.id)}
                className={`w-full flex items-center justify-between rounded-lg px-2.5 py-1.5 text-xs transition-colors ${
                  checked ? 'text-slate-100 bg-slate-900/60 font-medium' : 'text-slate-500 hover:text-slate-300'
                }`}
              >
                <div className="flex items-center gap-2">
                  <span
                    className="h-2 w-2 rounded-full"
                    style={{ backgroundColor: cat.color }}
                  />
                  <span>{cat.label}</span>
                </div>
                {checked ? (
                  <CheckSquare className="h-4 w-4" style={{ color: cat.color }} />
                ) : (
                  <Square className="h-4 w-4 text-slate-700" />
                )}
              </button>
            );
          })}
        </div>
      </div>
    </aside>
  );
};
