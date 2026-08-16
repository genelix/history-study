import { HistoricalEvent } from '@/types/database.types';

export interface TimelineDimensions {
  windowStart: number; // 현재 뷰포트 시작 연도
  windowEnd: number;   // 현재 뷰포트 종료 연도
  widthPx: number;     // 뷰포트 너비 (px)
}

export interface PlacedEvent extends HistoricalEvent {
  leftPx: number;
  widthPx: number;
  lane: number;        // 서브 레인 번호 (0, 1, 2...)
  isPoint: boolean;    // 단일 연도 점 이벤트 여부
}

/**
 * 줌 레벨에 따른 눈금 및 시간 간격 설정
 */
export interface ZoomConfig {
  defaultSpanYears: number; // 기본 화면에 표시할 연도 폭
  majorTickInterval: number; // 큰 눈금 간격
  minorTickInterval: number; // 작은 눈금 간격
  minEventWidthPx: number;   // 최소 이벤트 블록 너비
}

export const ZOOM_CONFIGS: Record<'1000' | '100' | '10', ZoomConfig> = {
  '1000': {
    defaultSpanYears: 2000,
    majorTickInterval: 500,
    minorTickInterval: 100,
    minEventWidthPx: 32,
  },
  '100': {
    defaultSpanYears: 400,
    majorTickInterval: 100,
    minorTickInterval: 20,
    minEventWidthPx: 48,
  },
  '10': {
    defaultSpanYears: 60,
    majorTickInterval: 10,
    minorTickInterval: 2,
    minEventWidthPx: 64,
  },
};

/**
 * 연도를 화면상의 X 픽셀 좌표로 변환합니다.
 */
export function yearToPixel(year: number, dimensions: TimelineDimensions): number {
  const { windowStart, windowEnd, widthPx } = dimensions;
  const totalYears = windowEnd - windowStart;
  if (totalYears <= 0) return 0;

  const progress = (year - windowStart) / totalYears;
  return progress * widthPx;
}

/**
 * 화면상의 X 픽셀 좌표를 연도로 변환합니다.
 */
export function pixelToYear(pixelX: number, dimensions: TimelineDimensions): number {
  const { windowStart, windowEnd, widthPx } = dimensions;
  if (widthPx <= 0) return windowStart;

  const progress = pixelX / widthPx;
  return Math.round(windowStart + progress * (windowEnd - windowStart));
}

/**
 * 동일 지역/트랙 내의 이벤트들을 겹치지 않도록 실제 시각적 카드 크기 기반으로 서브 레인(Lane)에 최적 배치합니다.
 */
export function calculateEventLanes(
  events: HistoricalEvent[],
  dimensions: TimelineDimensions
): PlacedEvent[] {
  // 시작 연도 순으로 정렬 (연도가 같으면 긴 기간 이벤트 먼저)
  const sorted = [...events].sort((a, b) => {
    if (a.year_start !== b.year_start) return a.year_start - b.year_start;
    return (b.year_end - b.year_start) - (a.year_end - a.year_start);
  });

  const laneEndPositions: number[] = []; // 각 레인의 끝 X 좌표(px)
  const placed: PlacedEvent[] = [];

  for (const event of sorted) {
    const leftPx = yearToPixel(event.year_start, dimensions);
    const rightPx = yearToPixel(event.year_end, dimensions);
    const isPoint = event.year_start === event.year_end;
    const rawWidth = Math.max(0, rightPx - leftPx);
    
    // 실제 DOM에 렌더링되는 시각적 최소 폭 계산 (아이콘 + 표제 + 연도 뱃지 + 여백)
    const titleLength = event.title ? event.title.length : 8;
    let visualWidth: number;

    if (isPoint) {
      // 포인트 이벤트: 원형 아이콘(12px) + 표제(글자당 ~12px, 최대 150px) + 연도(50px) + 패딩(25px)
      const textWidth = Math.min(150, titleLength * 12);
      visualWidth = Math.max(160, textWidth + 80);
    } else {
      // 기간형 바: 중요도 뱃지(24px) + 표제(최소 80px) + 연도 범위(70px) + 패딩(20px)
      const minTitleWidth = Math.max(140, Math.min(240, titleLength * 11 + 60));
      visualWidth = Math.max(rawWidth, minTitleWidth);
    }

    // 카드 간 16px 안전 여백을 둔 충돌 경계선 계산
    const cardEndPx = leftPx + visualWidth + 16;

    // 겹치지 않는 가장 낮은 번호의 빈 레인 찾기 (0행부터 아래로 차례대로 빈 공간 탐색)
    let assignedLane = -1;
    for (let l = 0; l < laneEndPositions.length; l++) {
      if (laneEndPositions[l] <= leftPx) {
        assignedLane = l;
        laneEndPositions[l] = cardEndPx;
        break;
      }
    }

    // 기존의 모든 레인이 사용 중이면 새로운 하위 레인(행) 생성하여 아래쪽 빈 공간으로 배치
    if (assignedLane === -1) {
      assignedLane = laneEndPositions.length;
      laneEndPositions.push(cardEndPx);
    }

    placed.push({
      ...event,
      leftPx,
      widthPx: isPoint ? visualWidth : Math.max(36, rawWidth),
      lane: assignedLane,
      isPoint,
    });
  }

  return placed;
}

/**
 * 눈금자(Ruler)에 표시할 틱 목록 생성
 */
export interface TimelineTick {
  year: number;
  pixelX: number;
  isMajor: boolean;
  label: string;
}

export function generateTimelineTicks(
  dimensions: TimelineDimensions,
  zoomLevel: '1000' | '100' | '10'
): TimelineTick[] {
  const { windowStart, windowEnd } = dimensions;
  const config = ZOOM_CONFIGS[zoomLevel];
  const ticks: TimelineTick[] = [];

  // 시작 눈금 정렬
  const startTick = Math.floor(windowStart / config.minorTickInterval) * config.minorTickInterval;
  const endTick = Math.ceil(windowEnd / config.minorTickInterval) * config.minorTickInterval;

  for (let year = startTick; year <= endTick; year += config.minorTickInterval) {
    if (year === 0) continue; // 0년 스킵

    const pixelX = yearToPixel(year, dimensions);
    const isMajor = year % config.majorTickInterval === 0;

    let label = '';
    if (isMajor) {
      if (year < 0) {
        label = `BC ${Math.abs(year)}`;
      } else {
        label = `${year}`;
      }
    }

    ticks.push({
      year,
      pixelX,
      isMajor,
      label,
    });
  }

  return ticks;
}
