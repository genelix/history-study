'use client';

import React, { useState } from 'react';
import { HistoricalEventService } from '@/lib/services/eventService';
import { formatYear, formatYearRange } from '@/lib/dates/yearFormatter';
import { X, Sparkles, Globe, Calendar, ArrowRight } from 'lucide-react';
import { HistoricalEvent } from '@/types/database.types';

interface SyncComparisonModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSelectEvent: (event: HistoricalEvent) => void;
}

const COMPARISON_CENTURIES = [
  { label: '기원전 5세기 (BC 500 ~ 400)', year: -450, desc: '아테네 민주정 · 춘추전국 제자백가 · 고조선' },
  { label: '기원후 1세기 (AD 1 ~ 100)', year: 50, desc: '로마 제정 팍스 로마나 · 한나라 실크로드 · 삼국 태동' },
  { label: '기원후 8세기 (AD 700 ~ 800)', year: 750, desc: '통일신라 불교미술 · 당나라 율령 · 이슬람 황금기' },
  { label: '기원후 14세기 (AD 1300 ~ 1400)', year: 1350, desc: '흑사병/소빙기 · 고려말/조선건국 · 원명 교체' },
  { label: '기원후 18세기 (AD 1750 ~ 1800)', year: 1780, desc: '산업혁명 · 프랑스대혁명 · 조선 정조 문예부흥 · 청나라 건륭제' },
  { label: '기원후 20세기 중반 (AD 1940 ~ 1960)', year: 1950, desc: '제2차 세계대전 · 한국 광복/전쟁 · 중화인민공화국 · 제3차 디지털혁명' },
];

export const SyncComparisonModal: React.FC<SyncComparisonModalProps> = ({
  isOpen,
  onClose,
  onSelectEvent,
}) => {
  const [selectedCenturyYear, setSelectedCenturyYear] = useState<number>(1350);

  if (!isOpen) return null;

  const syncData = HistoricalEventService.getSynchronousEvents(selectedCenturyYear, 120);

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/80 p-4 backdrop-blur-md animate-fade-in">
      <div className="relative flex h-[90vh] w-full max-w-6xl flex-col rounded-2xl border border-slate-800 bg-slate-900 shadow-2xl overflow-hidden">
        {/* 모달 헤더 */}
        <div className="flex items-center justify-between border-b border-slate-800 bg-slate-950/70 px-6 py-4">
          <div className="flex items-center gap-3">
            <div className="flex h-9 w-9 items-center justify-center rounded-xl bg-amber-500/20 text-amber-400 border border-amber-500/30">
              <Sparkles className="h-5 w-5" />
            </div>
            <div>
              <h2 className="text-lg font-bold text-slate-100 flex items-center gap-2">
                동시대 역사 통섭(統攝) 비교 뷰
                <span className="rounded-full bg-indigo-500/20 text-indigo-300 border border-indigo-500/30 px-2.5 py-0.5 text-xs font-normal">
                  Synchronism Explorer
                </span>
              </h2>
              <p className="text-xs text-slate-400">
                같은 시대, 세계는 서로 어떻게 연결되고 상호작용했는가?
              </p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="rounded-lg p-1.5 text-slate-400 hover:bg-slate-800 hover:text-slate-200 transition-colors"
          >
            <X className="h-5 w-5" />
          </button>
        </div>

        {/* 세기 선택 바 */}
        <div className="flex items-center gap-2 overflow-x-auto border-b border-slate-800 bg-slate-950/40 px-6 py-3 no-scrollbar">
          <span className="text-xs font-semibold text-slate-400 shrink-0 flex items-center gap-1">
            <Calendar className="h-3.5 w-3.5" /> 비교 연대:
          </span>
          {COMPARISON_CENTURIES.map((century) => (
            <button
              key={century.year}
              onClick={() => setSelectedCenturyYear(century.year)}
              className={`shrink-0 rounded-lg px-3 py-1.5 text-xs font-medium transition-all ${
                selectedCenturyYear === century.year
                  ? 'bg-amber-500 text-slate-950 font-bold shadow-md shadow-amber-500/20'
                  : 'bg-slate-800/60 text-slate-300 hover:bg-slate-800 hover:text-slate-100'
              }`}
            >
              {century.label}
            </button>
          ))}
        </div>

        {/* 4분할 병렬 비교 그리드 */}
        <div className="flex-1 overflow-y-auto p-6 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 bg-slate-950/30">
          {/* 서양사 */}
          <div className="rounded-xl border border-indigo-900/40 bg-slate-900/60 p-4 flex flex-col">
            <div className="flex items-center gap-2 pb-2.5 mb-3 border-b border-indigo-900/50">
              <span className="text-lg">🏛️</span>
              <h3 className="font-bold text-sm text-indigo-300">서양사 (WEST)</h3>
            </div>
            <div className="space-y-3 flex-1 overflow-y-auto">
              {syncData.west.length === 0 ? (
                <p className="text-xs text-slate-500 italic">해당 시대 데이터 없음</p>
              ) : (
                syncData.west.map((evt) => (
                  <div
                    key={evt.id}
                    onClick={() => {
                      onSelectEvent(evt);
                      onClose();
                    }}
                    className="group rounded-lg border border-slate-800 bg-slate-900/90 p-3 hover:border-indigo-500/50 hover:bg-indigo-950/30 transition-all cursor-pointer shadow-sm"
                  >
                    <div className="flex items-center justify-between mb-1">
                      <span className="font-bold text-xs text-slate-100 group-hover:text-indigo-300">
                        {evt.title}
                      </span>
                      <span className="text-[10px] font-mono text-slate-400">
                        {evt.year_start}
                      </span>
                    </div>
                    <p className="text-[11px] text-slate-400 line-clamp-3 leading-snug">
                      {evt.summary}
                    </p>
                  </div>
                ))
              )}
            </div>
          </div>

          {/* 중국사 */}
          <div className="rounded-xl border border-rose-900/40 bg-slate-900/60 p-4 flex flex-col">
            <div className="flex items-center gap-2 pb-2.5 mb-3 border-b border-rose-900/50">
              <span className="text-lg">🏯</span>
              <h3 className="font-bold text-sm text-rose-300">중국사 (CHINA)</h3>
            </div>
            <div className="space-y-3 flex-1 overflow-y-auto">
              {syncData.china.length === 0 ? (
                <p className="text-xs text-slate-500 italic">해당 시대 데이터 없음</p>
              ) : (
                syncData.china.map((evt) => (
                  <div
                    key={evt.id}
                    onClick={() => {
                      onSelectEvent(evt);
                      onClose();
                    }}
                    className="group rounded-lg border border-slate-800 bg-slate-900/90 p-3 hover:border-rose-500/50 hover:bg-rose-950/30 transition-all cursor-pointer shadow-sm"
                  >
                    <div className="flex items-center justify-between mb-1">
                      <span className="font-bold text-xs text-slate-100 group-hover:text-rose-300">
                        {evt.title}
                      </span>
                      <span className="text-[10px] font-mono text-slate-400">
                        {evt.year_start}
                      </span>
                    </div>
                    <p className="text-[11px] text-slate-400 line-clamp-3 leading-snug">
                      {evt.summary}
                    </p>
                  </div>
                ))
              )}
            </div>
          </div>

          {/* 한국사 */}
          <div className="rounded-xl border border-sky-900/40 bg-slate-900/60 p-4 flex flex-col">
            <div className="flex items-center gap-2 pb-2.5 mb-3 border-b border-sky-900/50">
              <span className="text-lg">🇰🇷</span>
              <h3 className="font-bold text-sm text-sky-300">한국사 (KOREA)</h3>
            </div>
            <div className="space-y-3 flex-1 overflow-y-auto">
              {syncData.korea.length === 0 ? (
                <p className="text-xs text-slate-500 italic">해당 시대 데이터 없음</p>
              ) : (
                syncData.korea.map((evt) => (
                  <div
                    key={evt.id}
                    onClick={() => {
                      onSelectEvent(evt);
                      onClose();
                    }}
                    className="group rounded-lg border border-slate-800 bg-slate-900/90 p-3 hover:border-sky-500/50 hover:bg-sky-950/30 transition-all cursor-pointer shadow-sm"
                  >
                    <div className="flex items-center justify-between mb-1">
                      <span className="font-bold text-xs text-slate-100 group-hover:text-sky-300">
                        {evt.title}
                      </span>
                      <span className="text-[10px] font-mono text-slate-400">
                        {evt.year_start}
                      </span>
                    </div>
                    <p className="text-[11px] text-slate-400 line-clamp-3 leading-snug">
                      {evt.summary}
                    </p>
                  </div>
                ))
              )}
            </div>
          </div>

          {/* 기후 & 환경 & 과학 */}
          <div className="rounded-xl border border-teal-900/40 bg-slate-900/60 p-4 flex flex-col">
            <div className="flex items-center gap-2 pb-2.5 mb-3 border-b border-teal-900/50">
              <span className="text-lg">🌍</span>
              <h3 className="font-bold text-sm text-teal-300">기후환경 & 과학 (NATURE)</h3>
            </div>
            <div className="space-y-3 flex-1 overflow-y-auto">
              {syncData.climate.length === 0 ? (
                <p className="text-xs text-slate-500 italic">해당 시대 기후/자연 기록 없음</p>
              ) : (
                syncData.climate.map((evt) => (
                  <div
                    key={evt.id}
                    onClick={() => {
                      onSelectEvent(evt);
                      onClose();
                    }}
                    className="group rounded-lg border border-slate-800 bg-slate-900/90 p-3 hover:border-teal-500/50 hover:bg-teal-950/30 transition-all cursor-pointer shadow-sm"
                  >
                    <div className="flex items-center justify-between mb-1">
                      <span className="font-bold text-xs text-slate-100 group-hover:text-teal-300">
                        {evt.title}
                      </span>
                      <span className="text-[10px] font-mono text-slate-400">
                        {evt.year_start}
                      </span>
                    </div>
                    <p className="text-[11px] text-slate-400 line-clamp-3 leading-snug">
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
  );
};
