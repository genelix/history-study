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
 * 동일 지역/트랙 내의 이벤트들을 겹치지 않도록 서브 레인(Lane)으로 배치합니다.
 */
export function calculateEventLanes(
  events: HistoricalEvent[],
  dimensions: TimelineDimensions,
  minEventWidthPx: number = 36
): PlacedEvent[] {
  // 시작 연도 순으로 정렬 (연도가 같으면 긴 이벤트 먼저)
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
    
    // 최소 너비 보장 (가독성 및 클릭 영역)
    const rawWidth = rightPx - leftPx;
    const widthPx = Math.max(isPoint ? 28 : minEventWidthPx, rawWidth);
    const eventEndPx = leftPx + widthPx + 12; // 12px 간격 버퍼

    // 겹치지 않는 가장 낮은 번호의 레인 찾기
    let assignedLane = -1;
    for (let l = 0; l < laneEndPositions.length; l++) {
      if (laneEndPositions[l] <= leftPx) {
        assignedLane = l;
        laneEndPositions[l] = eventEndPx;
        break;
      }
    }

    // 모든 기존 레인과 겹치면 새 레인 생성
    if (assignedLane === -1) {
      assignedLane = laneEndPositions.length;
      laneEndPositions.push(eventEndPx);
    }

    placed.push({
      ...event,
      leftPx,
      widthPx,
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
