'use client';

import React, { useState } from 'react';
import { Search, Compass, ZoomIn, ZoomOut, Sparkles, Clock, Layers, ArrowLeft, ArrowRight } from 'lucide-react';
import { formatYear } from '@/lib/dates/yearFormatter';

interface HeaderNavProps {
  currentCenterYear: number;
  zoomLevel: '1000' | '100' | '10';
  searchQuery: string;
  onZoomChange: (level: '1000' | '100' | '10') => void;
  onSearchChange: (query: string) => void;
  onJumpToYear: (year: number) => void;
  onOpenSyncModal: () => void;
}

const ERA_PRESETS = [
  { label: '고대 문명', year: -500, desc: 'BC 500년 (아테네·춘추전국·고조선)' },
  { label: '제국의 형성', year: 1, desc: 'AD 1년 (로마 제정·한나라·삼국 성립)' },
  { label: '중세와 통일', year: 700, desc: 'AD 700년 (통일신라·당나라·이슬람)' },
  { label: '격변과 전환', year: 1400, desc: 'AD 1400년 (조선건국·명나라·흑사병·르네상스)' },
  { label: '혁명의 시대', year: 1789, desc: 'AD 1789년 (산업혁명·프랑스대혁명·정조)' },
  { label: '현대와 미래', year: 1950, desc: 'AD 1950년 (세계대전·광복·인터넷·기후)' },
];

export const HeaderNav: React.FC<HeaderNavProps> = ({
  currentCenterYear,
  zoomLevel,
  searchQuery,
  onZoomChange,
  onSearchChange,
  onJumpToYear,
  onOpenSyncModal,
}) => {
  const [yearInput, setYearInput] = useState<string>('');

  const handleYearSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    const parsed = parseInt(yearInput, 10);
    if (!isNaN(parsed) && parsed !== 0) {
      onJumpToYear(parsed);
      setYearInput('');
    }
  };

  const handleStep = (delta: number) => {
    const step = zoomLevel === '1000' ? 500 : zoomLevel === '100' ? 100 : 20;
    onJumpToYear(currentCenterYear + delta * step);
  };

  return (
    <header className="sticky top-0 z-40 w-full border-b border-slate-800 bg-slate-950/90 backdrop-blur-md px-4 py-3 text-slate-100 shadow-lg">
      <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
        {/* 로고 & 타이틀 */}
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-gradient-to-br from-amber-500 via-indigo-500 to-cyan-500 shadow-md shadow-indigo-500/20">
            <Compass className="h-6 w-6 text-white animate-spin-slow" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-xl font-bold tracking-tight text-transparent bg-clip-text bg-gradient-to-r from-amber-200 via-sky-200 to-indigo-200">
                ChronoScope
              </h1>
              <span className="rounded-full bg-indigo-500/10 px-2 py-0.5 text-xs font-semibold text-indigo-400 border border-indigo-500/20">
                통섭형 세계사
              </span>
            </div>
            <p className="text-xs text-slate-400">
              한국 · 중국 · 서양 · 과학 · 기후를 관통하는 통합 시간지도
            </p>
          </div>
        </div>

        {/* 중앙: 검색 및 연도 이동 네비게이션 */}
        <div className="flex flex-wrap items-center gap-2">
          {/* 검색창 */}
          <div className="relative w-48 md:w-64">
            <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 h-4 w-4 text-slate-400" />
            <input
              type="text"
              placeholder="사건, 인물, 제도 검색..."
              value={searchQuery}
              onChange={(e) => onSearchChange(e.target.value)}
              className="w-full rounded-lg border border-slate-700 bg-slate-900/90 py-1.5 pl-8 pr-3 text-xs text-slate-200 placeholder-slate-500 focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500 transition-colors"
            />
            {searchQuery && (
              <button
                onClick={() => onSearchChange('')}
                className="absolute right-2 top-1/2 -translate-y-1/2 text-xs text-slate-400 hover:text-slate-200"
              >
                ✕
              </button>
            )}
          </div>

          {/* 연도 점프 컨트롤 */}
          <div className="flex items-center rounded-lg border border-slate-800 bg-slate-900/80 p-0.5 text-xs">
            <button
              onClick={() => handleStep(-1)}
              title="과거로 이동"
              className="rounded p-1 text-slate-400 hover:bg-slate-800 hover:text-slate-200 transition-colors"
            >
              <ArrowLeft className="h-4 w-4" />
            </button>

            <form onSubmit={handleYearSubmit} className="flex items-center px-1">
              <input
                type="number"
                placeholder={formatYear(currentCenterYear)}
                value={yearInput}
                onChange={(e) => setYearInput(e.target.value)}
                className="w-20 bg-transparent text-center text-xs font-medium text-amber-300 placeholder-amber-400/70 focus:outline-none"
              />
              <button
                type="submit"
                className="rounded bg-indigo-600/60 px-1.5 py-0.5 text-[10px] font-semibold text-indigo-100 hover:bg-indigo-600 transition-colors"
              >
                이동
              </button>
            </form>

            <button
              onClick={() => handleStep(1)}
              title="미래로 이동"
              className="rounded p-1 text-slate-400 hover:bg-slate-800 hover:text-slate-200 transition-colors"
            >
              <ArrowRight className="h-4 w-4" />
            </button>
          </div>

          {/* 줌 레벨 스위처 */}
          <div className="flex items-center rounded-lg border border-slate-800 bg-slate-900/80 p-0.5 text-xs">
            <span className="px-2 text-[11px] text-slate-400 flex items-center gap-1">
              <Clock className="h-3 w-3" /> 배율:
            </span>
            {(['1000', '100', '10'] as const).map((level) => (
              <button
                key={level}
                onClick={() => onZoomChange(level)}
                className={`rounded px-2 py-1 text-xs font-semibold transition-all ${
                  zoomLevel === level
                    ? 'bg-gradient-to-r from-indigo-600 to-indigo-700 text-white shadow-sm'
                    : 'text-slate-400 hover:bg-slate-800 hover:text-slate-200'
                }`}
              >
                {level}년
              </button>
            ))}
          </div>

          {/* 동시대 비교 모달 버튼 */}
          <button
            onClick={onOpenSyncModal}
            className="flex items-center gap-1.5 rounded-lg border border-amber-500/30 bg-gradient-to-r from-amber-500/20 to-orange-500/20 px-3 py-1.5 text-xs font-semibold text-amber-300 hover:border-amber-500/50 hover:from-amber-500/30 hover:to-orange-500/30 transition-all shadow-sm"
          >
            <Sparkles className="h-3.5 w-3.5 text-amber-400" />
            동시대 통섭 비교
          </button>
        </div>
      </div>

      {/* 하단 빠른 시대 프리셋 바 */}
      <div className="mt-2.5 flex items-center gap-1.5 overflow-x-auto pb-1 text-xs no-scrollbar border-t border-slate-900 pt-2">
        <span className="shrink-0 text-[11px] font-medium text-slate-500 flex items-center gap-1 mr-1">
          <Layers className="h-3 w-3" /> 시대 바로가기:
        </span>
        {ERA_PRESETS.map((preset) => (
          <button
            key={preset.year}
            onClick={() => onJumpToYear(preset.year)}
            title={preset.desc}
            className="shrink-0 rounded-full border border-slate-800 bg-slate-900/60 px-2.5 py-0.5 text-[11px] text-slate-300 hover:border-indigo-500/50 hover:bg-indigo-950/40 hover:text-indigo-200 transition-all"
          >
            {preset.label}
          </button>
        ))}
      </div>
    </header>
  );
};
