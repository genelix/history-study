export type RegionId = 'WEST' | 'CHINA' | 'KOREA' | 'OTHER_REGIONS' | 'CLIMATE';

export type CategoryId =
  | 'POLITICS'
  | 'PERSON'
  | 'INSTITUTION'
  | 'RELIGION'
  | 'SCIENCE'
  | 'ART_CULTURE'
  | 'CLIMATE_ENVIRONMENT'
  | 'ECONOMY';

export type ImportanceLevel = 'A' | 'B' | 'C';
export type DatePrecision = 'exact' | 'approximate' | 'range' | 'unknown';
export type ConfidenceLevel = 'HIGH' | 'MEDIUM' | 'LOW';
export type ReviewStatus = 'DRAFT' | 'REVIEWING' | 'APPROVED' | 'REJECTED';

export interface Region {
  id: RegionId;
  name_ko: string;
  name_en: string;
  description?: string;
  sort_order: number;
}

export interface EventCategory {
  id: CategoryId;
  name_ko: string;
  name_en: string;
  color_code: string;
  icon_name?: string;
  description?: string;
  sort_order: number;
}

export interface HistoricalPerson {
  id: string;
  name_ko: string;
  name_en?: string;
  region_id?: RegionId;
  birth_year?: number;
  death_year?: number;
  era_name?: string;
  role_title?: string;
  description?: string;
}

export interface HistoricalSource {
  id?: number;
  event_id?: string;
  source_type: 'BOOK' | 'DOCUMENT' | 'ACADEMIC_PAPER' | 'ARCHAEOLOGY' | 'WEB';
  title: string;
  author?: string;
  publisher?: string;
  url?: string;
  publication_year?: number;
  citation?: string;
}

export interface EventRelation {
  id?: number;
  source_event_id: string;
  target_event_id: string;
  relation_type: 'CAUSES' | 'INFLUENCED_BY' | 'SYNCHRONOUS' | 'BRANCH_OF' | 'CONTRAST_WITH';
  description?: string;
  target_event_title?: string;
  target_event_year?: number;
}

export interface HistoricalEvent {
  id: string;
  title: string;
  title_en?: string;
  region_id: RegionId;
  sub_region?: string;
  category_id: CategoryId;
  importance: ImportanceLevel;
  year_start: number;
  year_end: number;
  date_precision: DatePrecision;
  year_display?: string;
  summary: string;
  detailed_description?: string; // 심층 상세 해설 및 역사적 전개 서술
  historical_significance?: string;
  cause?: string;
  consequence?: string;
  parent_event_id?: string;
  confidence: ConfidenceLevel;
  review_status: ReviewStatus;
  source_status?: string;
  version?: number;
  created_at?: string;
  updated_at?: string;
  
  // Relations (Joined)
  people?: HistoricalPerson[];
  relations?: EventRelation[];
  sources?: HistoricalSource[];
}

export interface TimelineFilterState {
  regions: RegionId[];
  categories: CategoryId[];
  importanceLevels: ImportanceLevel[];
  zoomLevel: '1000' | '100' | '10'; // 1000년, 100년, 10년 모드
  searchQuery: string;
  currentYearCenter: number; // 현재 화면 중심 연도
}
