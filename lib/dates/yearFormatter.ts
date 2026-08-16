import { DatePrecision } from '@/types/database.types';

/**
 * 연도 숫자를 한국어 및 영문 친화적 문자열로 포맷팅합니다.
 * - 음수: 기원전 N년 (BCE)
 * - 양수: 서기 N년 (CE)
 * - 역사적으로 Year 0은 존재하지 않습니다.
 */
export function formatYear(year: number, eraFormat: 'ko' | 'en' = 'ko'): string {
  if (year < 0) {
    const absYear = Math.abs(year);
    return eraFormat === 'ko' ? `기원전 ${absYear}년` : `${absYear} BCE`;
  } else {
    return eraFormat === 'ko' ? `서기 ${year}년` : `${year} CE`;
  }
}

/**
 * 시작 연도와 종료 연도를 포맷팅합니다.
 */
export function formatYearRange(
  start: number,
  end: number,
  precision: DatePrecision = 'exact',
  eraFormat: 'ko' | 'en' = 'ko'
): string {
  const prefix = precision === 'approximate' ? (eraFormat === 'ko' ? '약 ' : 'c. ') : '';

  if (start === end) {
    return `${prefix}${formatYear(start, eraFormat)}`;
  }

  // 시작과 끝의 era(기원전/서기)가 동일한 경우 간결 표기
  if (start < 0 && end < 0) {
    const absStart = Math.abs(start);
    const absEnd = Math.abs(end);
    return eraFormat === 'ko'
      ? `${prefix}기원전 ${absStart}년 ~ ${absEnd}년`
      : `${prefix}${absStart} ~ ${absEnd} BCE`;
  }

  if (start > 0 && end > 0) {
    return eraFormat === 'ko'
      ? `${prefix}서기 ${start}년 ~ ${end}년`
      : `${prefix}${start} ~ ${end} CE`;
  }

  // 기원전 -> 서기 걸친 경우
  return `${prefix}${formatYear(start, eraFormat)} ~ ${formatYear(end, eraFormat)}`;
}

/**
 * 0년이 없는 천문학적 연도 간 거리 계산
 */
export function calculateYearSpan(start: number, end: number): number {
  if (start < 0 && end > 0) {
    return end - start - 1; // 0년이 없으므로 1년 차감
  }
  return Math.abs(end - start);
}
