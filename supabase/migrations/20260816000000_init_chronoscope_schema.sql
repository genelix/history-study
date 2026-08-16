-- ==============================================================================
-- ChronoScope: Comprehensive History Timeline Database Schema
-- Supabase PostgreSQL Migration
-- ==============================================================================

-- 1. 지역 분류 테이블 (Regions)
CREATE TABLE IF NOT EXISTS regions (
    id TEXT PRIMARY KEY, -- 'WEST', 'CHINA', 'KOREA', 'GLOBAL', etc.
    name_ko TEXT NOT NULL,
    name_en TEXT NOT NULL,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. 분야 카테고리 테이블 (Event Categories)
CREATE TABLE IF NOT EXISTS event_categories (
    id TEXT PRIMARY KEY, -- 'POLITICS', 'PERSON', 'INSTITUTION', 'RELIGION', 'SCIENCE', 'ART_CULTURE', 'CLIMATE_ENVIRONMENT', 'ECONOMY'
    name_ko TEXT NOT NULL,
    name_en TEXT NOT NULL,
    color_code TEXT NOT NULL, -- UI 배지 및 테두리 색상
    icon_name TEXT,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. 역사 사건 핵심 테이블 (Events)
CREATE TABLE IF NOT EXISTS events (
    id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    title_en TEXT,
    region_id TEXT NOT NULL REFERENCES regions(id) ON UPDATE CASCADE,
    sub_region TEXT, -- 세부지역: 예) '고구려', '로마', '프랑스', '송나라'
    category_id TEXT NOT NULL REFERENCES event_categories(id) ON UPDATE CASCADE,
    importance TEXT NOT NULL CHECK (importance IN ('A', 'B', 'C')),
    year_start INTEGER NOT NULL, -- BCE는 음수, CE는 양수 (0년 없음)
    year_end INTEGER NOT NULL,   -- 점 사건은 year_start와 동일
    date_precision TEXT DEFAULT 'exact' CHECK (date_precision IN ('exact', 'approximate', 'range', 'unknown')),
    year_display TEXT,           -- 예: '기원전 221년', '1760 ~ 1840년'
    summary TEXT NOT NULL,
    historical_significance TEXT,
    cause TEXT,
    consequence TEXT,
    parent_event_id TEXT REFERENCES events(id) ON DELETE SET NULL,
    confidence TEXT DEFAULT 'HIGH' CHECK (confidence IN ('HIGH', 'MEDIUM', 'LOW')),
    review_status TEXT DEFAULT 'APPROVED' CHECK (review_status IN ('DRAFT', 'REVIEWING', 'APPROVED', 'REJECTED')),
    source_status TEXT DEFAULT 'VERIFIED',
    version INTEGER DEFAULT 1,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 4. 역사 인물 테이블 (People)
CREATE TABLE IF NOT EXISTS people (
    id TEXT PRIMARY KEY,
    name_ko TEXT NOT NULL,
    name_en TEXT,
    region_id TEXT REFERENCES regions(id) ON UPDATE CASCADE,
    birth_year INTEGER,
    death_year INTEGER,
    era_name TEXT,
    role_title TEXT,
    description TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 5. 사건-인물 N:M 관계 테이블 (Event People)
CREATE TABLE IF NOT EXISTS event_people (
    event_id TEXT NOT NULL REFERENCES events(id) ON DELETE CASCADE,
    person_id TEXT NOT NULL REFERENCES people(id) ON DELETE CASCADE,
    relationship TEXT DEFAULT 'KEY_FIGURE', -- 'LEADER', 'KEY_FIGURE', 'OPPONENT', 'FOUNDER'
    PRIMARY KEY (event_id, person_id)
);

-- 6. 사건 간 연결/인과 관계 테이블 (Event Relations)
CREATE TABLE IF NOT EXISTS event_relations (
    id BIGSERIAL PRIMARY KEY,
    source_event_id TEXT NOT NULL REFERENCES events(id) ON DELETE CASCADE,
    target_event_id TEXT NOT NULL REFERENCES events(id) ON DELETE CASCADE,
    relation_type TEXT NOT NULL CHECK (relation_type IN ('CAUSES', 'INFLUENCED_BY', 'SYNCHRONOUS', 'BRANCH_OF', 'CONTRAST_WITH')),
    description TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 7. 출처 및 사료 테이블 (Sources)
CREATE TABLE IF NOT EXISTS sources (
    id BIGSERIAL PRIMARY KEY,
    event_id TEXT NOT NULL REFERENCES events(id) ON DELETE CASCADE,
    source_type TEXT DEFAULT 'BOOK', -- 'BOOK', 'DOCUMENT', 'ACADEMIC_PAPER', 'ARCHAEOLOGY', 'WEB'
    title TEXT NOT NULL,
    author TEXT,
    publisher TEXT,
    url TEXT,
    publication_year INTEGER,
    citation TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ==============================================================================
-- 인덱스 설정 (성능 최적화)
-- ==============================================================================
CREATE INDEX IF NOT EXISTS idx_events_years ON events (year_start, year_end);
CREATE INDEX IF NOT EXISTS idx_events_region_cat ON events (region_id, category_id);
CREATE INDEX IF NOT EXISTS idx_events_importance ON events (importance);
CREATE INDEX IF NOT EXISTS idx_events_review_status ON events (review_status);

-- ==============================================================================
-- RLS (Row Level Security) 설정: 공용 읽기 허용
-- ==============================================================================
ALTER TABLE regions ENABLE ROW LEVEL SECURITY;
ALTER TABLE event_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE events ENABLE ROW LEVEL SECURITY;
ALTER TABLE people ENABLE ROW LEVEL SECURITY;
ALTER TABLE event_people ENABLE ROW LEVEL SECURITY;
ALTER TABLE event_relations ENABLE ROW LEVEL SECURITY;
ALTER TABLE sources ENABLE ROW LEVEL SECURITY;

-- 익명/인증 사용자 읽기 권한 부여
CREATE POLICY "Allow public read access on regions" ON regions FOR SELECT USING (true);
CREATE POLICY "Allow public read access on event_categories" ON event_categories FOR SELECT USING (true);
CREATE POLICY "Allow public read access on events" ON events FOR SELECT USING (true);
CREATE POLICY "Allow public read access on people" ON people FOR SELECT USING (true);
CREATE POLICY "Allow public read access on event_people" ON event_people FOR SELECT USING (true);
CREATE POLICY "Allow public read access on event_relations" ON event_relations FOR SELECT USING (true);
CREATE POLICY "Allow public read access on sources" ON sources FOR SELECT USING (true);

-- ==============================================================================
-- 기본 마스터 데이터 (Regions & Categories)
-- ==============================================================================
INSERT INTO regions (id, name_ko, name_en, description, sort_order) VALUES
('WEST', '서양사', 'Western History', '유럽, 지중해, 아메리카 등 서양 문명권', 1),
('CHINA', '중국사', 'Chinese History', '황하 문명, 진한, 당송명청 등 동아시아 대륙', 2),
('KOREA', '한국사', 'Korean History', '고조선, 삼국, 고려, 조선, 근현대 한반도', 3),
('CLIMATE', '기후환경', 'Climate & Environment', '지구적 기후변동, 화산폭발, 소빙기, 환경 사건', 4)
ON CONFLICT (id) DO UPDATE SET name_ko = EXCLUDED.name_ko, sort_order = EXCLUDED.sort_order;

INSERT INTO event_categories (id, name_ko, name_en, color_code, icon_name, description, sort_order) VALUES
('POLITICS', '정치·전쟁', 'Politics & Wars', '#f59e0b', 'Landmark', '전쟁, 혁명, 왕조 교체, 국가 성립 및 외교', 1),
('PERSON', '인물', 'Key Figures', '#ec4899', 'User', '정치·사상·문화 주요 역사적 인물', 2),
('INSTITUTION', '제도·사회', 'Institution & Law', '#3b82f6', 'Scale', '법률, 행정제도, 토지제도, 경제 체제', 3),
('RELIGION', '종교·사상', 'Religion & Philosophy', '#a855f7', 'BookOpen', '종교 창시 및 전파, 종교개혁, 철학 사조', 4),
('SCIENCE', '과학·기술', 'Science & Tech', '#06b6d4', 'Cpu', '과학적 발견, 수학, 천문학, 기술 발명, 산업', 5),
('ART_CULTURE', '예술·문화', 'Art & Culture', '#10b981', 'Palette', '미술, 건축, 문학, 음악, 르네상스 등', 6),
('CLIMATE_ENVIRONMENT', '기후·환경', 'Climate & Nature', '#14b8a6', 'CloudRain', '빙하기, 온난기, 화산폭발, 전염병, 생태변화', 7),
('ECONOMY', '경제·무역', 'Economy & Trade', '#eab308', 'Coins', '무역로(실크로드 등), 화폐, 대공황 등 경제 변화', 8)
ON CONFLICT (id) DO UPDATE SET name_ko = EXCLUDED.name_ko, color_code = EXCLUDED.color_code, sort_order = EXCLUDED.sort_order;
