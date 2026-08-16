-- ============================================================================
-- HistoryGrid Master Historical Events Seed Data
-- Total Events: 853
-- Covers BC 400 ~ 21st Century (West, China, Korea, Climate/Global)
-- ============================================================================
BEGIN;

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-agriculture-neolithic-revolution', '농경과 정착생활의 확산', '', 'WEST', '', 'INSTITUTION', 'A', -10000, -3000, 'range', '서아시아를 중심으로 농경과 가축 사육이 확산되면서 수렵채집 중심의 생활에서 정착 농경사회로 전환하였다.', '잉여생산, 인구 증가, 정착촌, 사회계층, 국가와 도시의 장기적 형성을 가능하게 한 문명사의 근본적 전환이다.', '기후 변화와 야생 동식물의 이용 확대 및 인간의 환경 적응', '정착촌과 사회적 분업이 발달하고 이후 도시와 국가 형성의 기반이 마련되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-neolithic-agriculture', '황허·양쯔강 유역 농경문화의 발전', '', 'CHINA', '', 'INSTITUTION', 'A', -7000, -3000, 'range', '중국 각지에서 조·벼농사를 기반으로 한 정착 농경사회가 발전하였다.', '후대 중국 문명의 인구·정착·사회조직 형성의 기반이 되었다.', '농경기술 발전과 지역 환경에 대한 적응', '대규모 정착지와 복잡한 사회조직이 출현하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-neolithic-settlement', '한반도 신석기 정착농경의 발전', '', 'KOREA', '', 'INSTITUTION', 'B', -5000, -2000, 'range', '한반도에서 정착생활과 농경이 점차 확대되면서 복합적인 취락사회가 발전하였다.', '후대 한반도 사회의 인구·경제·정착 기반을 이해하는 중요한 출발점이다.', '농경기술과 정착생활의 확산', '취락 규모와 사회조직이 점차 복잡해졌다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-first-cities', '메소포타미아 도시문명의 형성', '', 'WEST', '', 'INSTITUTION', 'A', -4000, -3000, 'range', '티그리스·유프라테스 유역에서 대규모 정착지와 도시가 성장하고 복잡한 행정·사회조직이 등장하였다.', '도시, 국가, 관료제, 계층사회가 결합하는 초기 문명 형태를 보여준다.', '관개농업과 생산력 증가', '도시국가와 중앙집권적 정치조직의 발전으로 이어졌다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-neolithic-complex-societies', '신석기 복합사회와 계층화', '', 'CHINA', '', 'INSTITUTION', 'A', -3500, -2000, 'range', '중국의 여러 신석기 문화에서 대규모 취락, 전문 생산, 의례시설과 차등적인 무덤이 나타났다.', '국가 형성 이전의 사회적 계층화와 정치권력 출현 과정을 보여준다.', '농업생산력 증가와 지역 간 교류', '초기 도시·정치체의 형성 기반이 마련되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-writing-emergence', '메소포타미아 문자와 기록 행정의 등장', '', 'WEST', '', 'SCIENCE', 'A', -3400, -3000, 'approximate', '메소포타미아에서 초기 문자체계가 등장하여 물자·노동·행정 정보를 기록하기 시작하였다.', '역사시대와 선사시대를 구분하는 핵심적 전환이며 국가 행정과 지식 축적의 기반이 되었다.', '도시와 경제활동의 복잡화', '행정 기록과 법·종교·문학의 문자화가 가능해졌다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-egypt-unification', '이집트 상·하 이집트 통일', '', 'WEST', '', 'POLITICS', 'A', -3100, -3000, 'approximate', '나일강 유역의 여러 정치체가 통합되면서 초기 이집트 왕국이 형성되었다.', '고대 세계에서 장기간 지속된 중앙집권적 국가문명의 대표적 사례가 형성되었다.', '나일강 유역 농업과 정치적 통합', '파라오 중심의 중앙집권 국가와 관료체제가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-akkadian-empire', '아카드 제국의 형성', '', 'WEST', '', 'POLITICS', 'A', -2334, -2154, 'approximate', '사르곤을 중심으로 메소포타미아의 여러 도시국가가 광범위하게 통합되었다.', '대규모 영토제국이라는 정치 형태의 초기 대표 사례이다.', '메소포타미아 도시국가 간 경쟁과 사르곤의 군사적 통합', '후대 메소포타미아 제국들의 정치적 모델에 영향을 주었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-dangun-tradition', '단군조선 건국 전설', '', 'KOREA', '', 'RELIGION', 'C', -2333, -2333, 'approximate', '단군 왕검이 고조선을 건국했다는 건국신화가 후대 문헌에 전승되었다.', '한국의 건국신화와 역사적 정체성 형성을 이해하는 중요한 문화적 자료이다.', '고대 건국신화의 형성과 후대 기록', '한국의 기원과 정체성을 설명하는 대표적인 전승으로 자리잡았다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('gojoseon-founding', '고조선 성립 및 청동기 문화', 'Establishment of Gojoseon & Bronze Age', 'KOREA', '고조선', 'POLITICS', 'A', -2333, -108, 'approximate', '한반도 및 요동 일대에 성립된 한민족 최초의 고대 국가이자 청동기·철기 문화의 중심.', '동북아시아 독자적 청동기 문화(비파형동검, 탁자식 고인돌)를 발전시키며 고대 국가 체제로 성장함.', '신석기 농경 발달과 청동기 무기 보급으로 족장 사회 형성 및 연맹 왕국 발전.', '위만조선으로 이어져 한나라와 대립하다 기원전 108년 멸망 후 여러 소국(부여, 고구려, 옥저, 동예, 삼한)으로 분화.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bronze-age', '중국 청동기문화의 발전', '', 'CHINA', '', 'SCIENCE', 'A', -2000, -1000, 'range', '청동 주조기술이 발전하면서 무기·도구뿐 아니라 제례용 청동기가 정치권력과 결합하였다.', '중국 고대 국가의 권력·제례·기술이 결합된 대표적인 문명적 특징이다.', '금속기술과 전문 장인 집단의 발전', '왕권과 제례 중심의 정치질서가 강화되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-hammurabi', '함무라비의 통치와 법전', '', 'WEST', '', 'INSTITUTION', 'A', -1792, -1750, 'approximate', '바빌론 왕 함무라비가 메소포타미아의 넓은 지역을 통합하고 법전으로 대표되는 법·행정 체계를 발전시켰다.', '고대 국가의 법과 통치가 문자로 체계화된 대표 사례로 역사·법제사 학습에 중요하다.', '바빌론의 정치적 성장과 메소포타미아 통합', '법적 규범과 왕권의 관계를 보여주는 대표적인 문헌이 남았다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-shang', '상 왕조의 성립과 발전', '', 'CHINA', '', 'POLITICS', 'A', -1600, -1046, 'approximate', '황허 중류를 중심으로 상 왕조가 발전하였으며 도시·왕권·군사·제례체계가 발달하였다.', '고고학적으로 확인되는 중국 초기 왕조의 대표적 사례이며 중국 정치·종교·문자문화의 중요한 기반이다.', '청동기 생산과 농업 기반의 정치적 통합', '왕권과 조상숭배, 청동기 제례문화가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-oracle-bone', '갑골문과 중국 초기 문자문화', '', 'CHINA', '', 'SCIENCE', 'A', -1250, -1046, 'approximate', '상 왕조에서 거북 배딱지와 동물 뼈에 점복 기록을 남기는 갑골문이 발전하였다.', '중국 문자의 초기 형태를 직접 보여주는 핵심 자료이며 중국의 장기적인 문자문화 전통과 연결된다.', '왕실 점복과 제례 행정의 기록 필요', '문자 기록을 통한 정치·종교 정보의 축적이 가능해졌다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-iron-age', '철기시대의 확산', '', 'WEST', '', 'SCIENCE', 'A', -1200, -800, 'range', '동지중해와 근동을 중심으로 철제 도구와 무기가 널리 사용되기 시작하였다.', '금속기술과 전쟁·농업 생산성의 변화를 통해 고대 국가와 사회구조에 큰 영향을 주었다.', '철 제련기술의 발전과 청동 공급망 변화', '무기와 농기구의 보급 확대 및 새로운 정치세력의 성장을 촉진하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-phoenician-alphabet', '페니키아 문자와 알파벳의 확산', '', 'WEST', '', 'SCIENCE', 'A', -1050, -800, 'range', '페니키아 상인과 도시국가를 중심으로 자음 중심의 알파벳 문자가 지중해 세계에 확산되었다.', '후대 그리스·라틴 문자 발전의 중요한 기반이 되어 서양의 문자문화에 장기적인 영향을 미쳤다.', '해상무역과 간결한 기록체계의 필요', '그리스 문자의 형성과 지중해 문자문화 발전에 영향을 주었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-zhou-conquest', '주나라의 상나라 정복', '', 'CHINA', '', 'POLITICS', 'A', -1046, -1045, 'approximate', '주가 상을 무너뜨리고 중국 중원의 새로운 정치질서를 구축하였다.', '왕조 교체와 천명사상의 발전을 연결하는 중국 정치사 핵심 사건이다.', '상 왕조의 내부 문제와 주의 군사적 성장', '주 왕조가 중국 중원의 새로운 지배질서를 형성하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-mandate-heaven', '천명사상의 발전', '', 'CHINA', '', 'RELIGION', 'A', -1046, -900, 'range', '주 왕조가 상 왕조를 대신한 정당성을 하늘의 명령인 천명으로 설명하는 정치사상이 발전하였다.', '중국 역사에서 왕조 교체와 정치적 정당성을 설명하는 핵심 사상이 되었다.', '주 왕조의 상 정복에 대한 정치적 정당화 필요', '왕의 통치가 도덕적 정당성을 가져야 한다는 정치사상이 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-western-zhou', '서주 왕조의 봉건적 정치질서', '', 'CHINA', '', 'INSTITUTION', 'A', -1046, -771, 'approximate', '주 왕실은 친족과 공신에게 토지를 분봉하고 지방의 정치적 지배를 조직하였다.', '중국 고대 정치·사회질서의 중요한 제도적 기반을 형성하였다.', '광범위한 영토를 안정적으로 통치할 필요', '제후국 중심의 분권적 정치구조가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bronze-age', '한반도 청동기문화의 등장', '', 'KOREA', '', 'SCIENCE', 'A', -1000, -700, 'approximate', '한반도에 청동기 기술과 청동 무기·의례용품이 등장하고 농경과 사회적 계층화가 진전되었다.', '고대 한반도 정치체 형성의 사회·기술적 기반을 보여주는 핵심 변화이다.', '대륙 북방지역과의 기술·문화 교류', '무기·의례품을 소유한 지배층이 등장하고 사회적 위계가 강화되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-lute-shaped-bronze-dagger', '비파형 동검 문화의 확산', '', 'KOREA', '', 'ART_CULTURE', 'B', -1000, -500, 'range', '비파형 동검이 한반도와 만주 및 요동 일대에서 확인되며 청동기문화권 사이의 교류를 보여준다.', '초기 정치체의 권력 상징과 요동·한반도 사이의 문화적 관계를 연구하는 핵심 고고학 자료이다.', '요동과 한반도 사이의 문화적 교류', '청동 무기와 의례용품을 중심으로 한 지배층 문화가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-dolmen-culture', '한반도 고인돌 문화', '', 'KOREA', '', 'ART_CULTURE', 'B', -1000, -401, 'range', '한반도 전역에 대규모 고인돌이 조성되었으며 사회적 위계와 장례·제의 문화를 보여준다.', '한반도 청동기시대 사회구조와 장례 및 제사 문화를 이해하는 대표적인 고고학 자료이다.', '농경사회 발전과 사회적 위계 형성', '지배층의 권력과 사회적 위계를 보여주는 대형 묘제가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-greek-polis', '그리스 폴리스의 형성', '', 'WEST', '', 'POLITICS', 'A', -900, -700, 'range', '그리스 세계에서 독립적인 도시국가인 폴리스가 발전하였다.', '서양 정치사의 핵심 단위인 시민 공동체와 도시국가 정치가 형성되었다.', '철기시대 사회 재편과 도시 공동체의 성장', '아테네·스파르타 등 다양한 정치체제가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bronze-social-stratification', '청동기시대 한반도의 사회계층화', '', 'KOREA', '', 'INSTITUTION', 'A', -900, -500, 'range', '청동기와 위세품, 대형 무덤의 차등적 분포를 통해 사회적 계층과 정치적 권력의 성장을 확인할 수 있다.', '국가 형성 이전 한반도에서 정치적 권력이 어떻게 형성되었는지를 보여준다.', '농업생산력 증가와 청동기·위세품의 독점', '지역 지배층과 복합사회가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-dolmen', '한반도 고인돌 문화의 확산', '', 'KOREA', '', 'ART_CULTURE', 'B', -900, -500, 'range', '한반도에서 대형 고인돌 무덤이 광범위하게 조성되었다.', '청동기시대의 사회적 위계와 집단조직, 장례문화를 보여주는 대표적인 고고학 자료이다.', '농경사회 발전과 지배계층의 형성', '사회적 위계와 집단적 노동조직의 흔적이 남았다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-greek-alphabet', '그리스 알파벳의 형성', '', 'WEST', '', 'SCIENCE', 'A', -800, -700, 'approximate', '그리스인들이 페니키아 문자에서 영향을 받아 모음을 포함하는 독자적인 알파벳 체계를 발전시켰다.', '그리스 문학·철학·과학의 기록과 전승을 가능하게 했으며 후대 라틴 문자에도 영향을 주었다.', '페니키아와의 교역 및 문자 접촉', '그리스어 문학과 철학의 기록문화 발전을 촉진하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-greek-colonization', '그리스인의 지중해 식민활동 확대', '', 'WEST', '', 'POLITICS', 'A', -800, -600, 'range', '그리스 도시국가들이 지중해와 흑해 연안에 새로운 정착지를 건설하였다.', '그리스 문화·언어·경제가 광범위한 지중해 세계로 확산되는 계기가 되었다.', '인구 증가, 토지 부족, 무역 확대와 도시국가 간 경쟁', '남이탈리아·시칠리아·흑해 등에서 그리스 문화권이 확대되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bronze-dagger-culture', '비파형 동검 문화의 발전', '', 'KOREA', '', 'ART_CULTURE', 'B', -800, -500, 'range', '한반도와 만주 일대에서 비파형 동검을 비롯한 독특한 청동기 문화가 발전하였다.', '초기 정치체와 지역 간 교류 및 권력 상징을 연구하는 핵심 고고학 자료이다.', '청동기 제작기술의 발전과 지역 교류', '지역 지배층의 권력과 정체성을 나타내는 청동기 문화가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-olympic-games', '올림피아 제전의 정착', '', 'WEST', '', 'RELIGION', 'B', -776, -500, 'exact', '올림피아에서 제우스에게 봉헌된 범그리스 경기대회가 정기적으로 개최되었다.', '종교·스포츠·도시국가 정체성이 결합된 범그리스 문화의 대표적인 제도였다.', '그리스 도시국가 사이의 종교적·문화적 교류', '정치적으로 분열된 그리스 세계에서 공통 문화의식 형성에 기여하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-eastern-zhou', '동주 시대의 시작', '', 'CHINA', '', 'POLITICS', 'A', -770, -769, 'exact', '주 왕실이 수도를 낙읍으로 옮기면서 동주 시대가 시작되고 왕권의 실질적 영향력이 약화되었다.', '춘추·전국시대로 이어지는 중국의 정치적 분열과 사상적 혁신의 출발점이다.', '견융의 침입과 서주의 정치적 약화', '제후국의 독립성이 증가하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-spring-autumn', '춘추시대의 시작', '', 'CHINA', '', 'POLITICS', 'A', -770, -476, 'exact', '주 왕실의 권력이 약화된 가운데 여러 제후국이 패권을 경쟁하였다.', '중국의 정치적 다원화와 군사·행정제도의 발전, 제자백가의 배경을 제공하였다.', '주 왕실 권력 약화와 제후국의 성장', '패자 경쟁과 국가개혁이 활발해졌다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-spring-autumn-warring', '춘추전국시대 및 제자백가 사상', 'Spring and Autumn & Warring States Period', 'CHINA', '중원', 'RELIGION', 'A', -770, -221, 'exact', '주나라 왕실이 쇠퇴하고 제후국들이 패권을 다투며 유학·도가·법가 등 제자백가 사상이 만개한 격변기.', '동아시아 사상과 국가 통치 철학(유가, 법가)의 기틀이 확립되었으며 철기 보급으로 농업과 군사가 비약적으로 발전.', '견융족 침입으로 주나라의 동천 이후 제후국 간 권력 투쟁 격화.', '진(秦)나라에 의한 최초의 중국 천하 통일로 이어짐.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-gojoseon-tradition', '고조선 형성에 관한 전승과 초기 정치체의 등장', '', 'KOREA', '', 'POLITICS', 'B', -700, -501, 'range', '한반도와 요동 일대에서 초기 정치체들이 성장했으며 후대 문헌에서는 이를 고조선과 연결한다.', '한국 고대 국가 형성의 중요한 주제이지만 구체적인 건국연대와 초기 역사에는 논쟁이 많다.', '청동기문화의 발전과 지역 정치체의 성장', '후대 고조선 관련 정치적 전통의 기반이 형성되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-greek-philosophy', '그리스 자연철학의 등장', '', 'WEST', '', 'SCIENCE', 'A', -600, -500, 'range', '탈레스·아낙시만드로스·헤라클레이토스 등 초기 철학자들이 신화적 설명을 넘어 자연현상을 이성적으로 설명하려 시도하였다.', '서양 철학과 과학적 탐구의 중요한 출발점이다.', '그리스 도시국가의 지적 교류와 문자문화 발전', '자연·우주·인간에 대한 합리적 탐구 전통이 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-crossbow', '석궁 기술의 발전', '', 'CHINA', '', 'SCIENCE', 'C', -600, -400, 'approximate', '춘추시대부터 석궁 기술이 발전하고 전국시대에 군사적으로 널리 활용되었다.', '중국 고대 군사기술의 발전과 보병 전술 변화의 중요한 사례이다.', '제후국 간 군사 경쟁과 무기 기술 발전', '원거리 무기 운용과 군사조직의 변화에 영향을 주었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-athens-solon', '솔론의 아테네 개혁', '', 'WEST', '', 'POLITICS', 'A', -594, -590, 'approximate', '솔론이 아테네의 사회적 갈등을 완화하기 위한 정치·경제 개혁을 실시하였다.', '아테네 민주정으로 이어지는 제도적 발전의 중요한 단계이다.', '귀족과 평민 사이의 사회경제적 갈등', '시민 정치 참여의 기반이 확대되고 이후 민주정 발전의 토대가 마련되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-confucius', '공자와 유학의 형성', '', 'CHINA', '', 'RELIGION', 'A', -551, -479, 'exact', '공자는 인과 예를 중심으로 인간관계와 정치질서에 대한 사상을 발전시켰다.', '후대 유학 및 동아시아 정치·윤리·교육사상의 핵심적 기반을 형성하였다.', '춘추시대 정치질서의 붕괴와 사회적 혼란', '유학이라는 장기적인 사상 전통이 형성되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-hundred-schools', '제자백가의 등장', '', 'CHINA', '', 'RELIGION', 'A', -550, -501, 'range', '춘추전국시대의 정치적 혼란 속에서 유가·도가·묵가 등 다양한 사상 전통이 등장하였다.', '중국 철학과 정치사상의 기본 틀이 형성된 시기이다.', '정치적 분열과 국가 통치에 대한 새로운 해법의 필요', '중국 정치철학과 윤리사상의 장기적 기반이 형성되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-pythagoras', '피타고라스와 수학·철학 전통', '', 'WEST', '', 'SCIENCE', 'B', -530, -500, 'approximate', '피타고라스와 그 추종자들이 수학적 질서와 우주론을 결합한 철학적 전통을 발전시켰다.', '수학과 자연철학의 결합이라는 고대 그리스 지적 전통을 보여준다.', '그리스 자연철학과 수학적 탐구의 발전', '후대 서양 수학·철학 전통에 영향을 주었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-athens-democracy', '아테네 민주정의 제도적 형성', '', 'WEST', '', 'POLITICS', 'A', -508, -507, 'exact', '클레이스테네스의 개혁으로 아테네 시민정치의 제도적 기반이 크게 재편되었다.', '직접민주주의의 대표적 역사적 기원으로 서양 정치사에 장기적인 영향을 미쳤다.', '귀족정 내부의 경쟁과 시민 정치 참여 확대 요구', '시민 공동체를 기반으로 한 아테네 민주정이 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('athens-democracy-philosophy', '그리스 아테네 민주정과 고전 철학', 'Athenian Democracy & Classical Philosophy', 'WEST', '그리스', 'POLITICS', 'A', -508, -322, 'exact', '클레이스테네스의 개혁으로 직접 민주주의가 수립되고, 소크라테스·플라톤·아리스토텔레스로 이어지는 서양 철학의 기초가 확립됨.', '서구 민주주의 정치 제도와 이성적 철학 탐구의 모태.', '솔론, 클레이스테네스 등의 개혁과 페르시아 전쟁 승리로 인한 시민 발언권 증대.', '펠로폰네소스 전쟁으로 쇠퇴 후 마케도니아 알렉산드로스 제국으로 흡수.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-early-iron-contact', '한반도 철기문화의 초기 전파', '', 'KOREA', '', 'SCIENCE', 'C', -501, -500, 'approximate', '철기문화가 한반도 북부와 주변지역에서 점차 확산되기 시작하였다.', '후대 철기시대와 국가 형성으로 이어지는 기술적 변화의 초기 단계이다.', '중국 동북부 및 주변지역과의 교류', '철제 무기와 도구의 확산 기반이 마련되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-dettit-band-pottery', '한반도 덧띠무늬토기 문화의 확산', '', 'KOREA', '', 'ART_CULTURE', 'B', -500, -401, 'approximate', '기원전 5~4세기경 한반도 중남부 지역에서 덧띠무늬토기 계통의 토기문화가 나타나고 확산되었다.', '청동기시대 말기와 초기 철기시대의 문화적 변화를 이해하는 중요한 고고학적 자료이다.', '지역 간 교류와 토기 제작기술 및 생활문화의 변화', '한반도 중남부 지역의 새로운 생활문화와 사회적 변화가 나타났다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-gojoseon-development', '고조선의 정치체 발전', '', 'KOREA', '', 'POLITICS', 'A', -500, -401, 'approximate', '기원전 5~4세기경 한반도 및 요동 지역에서 고조선과 연결되는 정치체의 발전을 추정할 수 있다.', '한국 고대 국가 형성 과정을 이해하는 핵심 주제이다.', '농경사회 발전, 청동기문화의 정치적 통합, 지역 간 교류', '한반도와 요동 지역에서 보다 복합적인 정치체가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-iron-culture-formation', '한반도 철기문화의 형성', '', 'KOREA', '', 'SCIENCE', 'A', -500, -401, 'approximate', '기원전 5~4세기경 중국 및 주변 지역과의 교류를 통해 철기문화가 한반도에 확산되기 시작하였다.', '청동기 중심의 사회에서 철기 생산과 사용이 확대되는 장기적인 기술·사회 변화의 출발점으로, 농업 생산과 무기체계 및 사회구조 변화와 연결된다.', '중국 및 요동 지역과의 교류와 철기 기술의 확산', '철제 농기구와 무기의 사용이 확대되고 이후 초기 국가 및 지역 정치체의 발전에 영향을 주었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-laozi-daoism', '노자와 도가 사상의 형성', '', 'CHINA', '', 'RELIGION', 'C', -500, -400, 'approximate', '노자와 도가 전통은 자연과 무위의 원리를 강조하는 중국 철학의 중요한 흐름을 형성하였다.', '후대 도가 철학과 중국 종교문화 발전에 큰 영향을 미쳤다.', '춘추전국시대의 정치·사회적 혼란', '유가와 다른 자연주의적 사상 전통이 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-sun-tzu', '손자와 병법 전통', '', 'CHINA', '', 'SCIENCE', 'B', -500, -400, 'approximate', '손자병법으로 대표되는 전략·전술 사상이 춘추전국시대 전쟁 경험을 바탕으로 발전하였다.', '동아시아 병법사뿐 아니라 세계 군사사에서 장기적인 영향을 끼친 전략 사상의 대표적 사례이다.', '제후국 간 지속적인 전쟁과 군사 경쟁', '전쟁을 체계적으로 분석하는 병법 전통이 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ionian-revolt', '이오니아 반란', '', 'WEST', '', 'POLITICS', 'A', -499, -493, 'exact', '소아시아의 이오니아 그리스 도시들이 페르시아 제국에 반란을 일으켰다.', '그리스-페르시아 전쟁으로 이어지는 직접적인 계기 가운데 하나이다.', '페르시아의 지배와 이오니아 도시들의 정치적 갈등', '페르시아와 본토 그리스 세계의 갈등이 확대되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-marathon', '마라톤 전투', '', 'WEST', '', 'POLITICS', 'A', -490, -490, 'exact', '아테네와 플라타이아 연합군이 마라톤에서 페르시아군을 격퇴하였다.', '그리스-페르시아 전쟁의 대표적 전투이며 아테네의 군사적 위상을 높였다.', '페르시아의 그리스 원정과 이오니아 반란 이후의 갈등', '아테네의 군사적 자신감과 정치적 영향력이 확대되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-salamis', '살라미스 해전', '', 'WEST', '', 'POLITICS', 'A', -480, -480, 'exact', '그리스 연합 함대가 살라미스 해협에서 페르시아 함대를 격파하였다.', '제2차 페르시아 전쟁의 결정적인 전환점이며 아테네의 해군력과 그리스 연합의 중요성을 보여준다.', '페르시아의 그리스 본토 침공', '페르시아의 해상전략이 약화되고 그리스 측의 반격이 가능해졌다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-thermopylae', '테르모필레 전투', '', 'WEST', '', 'POLITICS', 'B', -480, -480, 'exact', '그리스 연합군이 테르모필레 협곡에서 페르시아군의 진격을 저지하려 했으며 결국 패배하였다.', '그리스-페르시아 전쟁의 상징적인 전투이자 스파르타 군사문화의 대표적 사례이다.', '크세르크세스 1세의 그리스 침공', '페르시아군이 중부 그리스로 진격했지만 그리스 해군은 살라미스에서 반격하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-plataea', '플라타이아 전투', '', 'WEST', '', 'POLITICS', 'A', -479, -479, 'exact', '그리스 연합군이 플라타이아에서 페르시아 지상군을 격파하였다.', '제2차 페르시아 전쟁의 육상전에서 결정적인 승리를 거둔 사건이다.', '페르시아의 그리스 본토 침공', '페르시아의 그리스 본토 지배 시도가 좌절되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-socrates', '소크라테스의 활동', '', 'WEST', '', 'RELIGION', 'B', -470, -399, 'approximate', '소크라테스는 아테네에서 대화와 논박을 통해 윤리·지식·정의의 문제를 탐구하였다.', '플라톤과 이후 서양 철학에 결정적인 영향을 준 철학적 전환을 대표한다.', '고전기 아테네의 정치·사회적 변화와 철학적 논쟁', '윤리와 인식론 중심의 철학적 탐구가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-mozi', '묵자와 묵가 사상', '', 'CHINA', '', 'RELIGION', 'B', -470, -391, 'approximate', '묵자는 겸애·절용·비공 등의 사상을 주장하며 유가와 다른 사회·윤리적 관점을 제시하였다.', '제자백가의 다양성과 전국시대 사회·정치사상의 발전을 보여주는 핵심 사례이다.', '전국시대 사회질서와 전쟁에 대한 비판', '묵가라는 독자적인 사상 학파가 형성되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-hippocrates', '히포크라테스 의학 전통', '', 'WEST', '', 'SCIENCE', 'B', -460, -400, 'approximate', '질병을 초자연적 원인보다 자연적 원인으로 설명하려는 의학적 전통이 발전하였다.', '서양 의학에서 관찰과 합리적 설명을 강조하는 전통의 중요한 기반이 되었다.', '자연철학과 경험적 관찰의 발전', '의학을 독립적인 지식체계로 발전시키는 데 영향을 주었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-jin-partition', '진의 분열과 전국시대의 시작', '', 'CHINA', '', 'POLITICS', 'A', -453, -403, 'range', '진의 실질적 권력이 한·조·위 세 가문으로 넘어가고 이후 세 나라가 독립적인 정치세력으로 자리잡으면서 전국시대의 정치질서가 형성되었다.', '춘추시대에서 전국시대로 넘어가는 중국 정치질서의 핵심적인 전환이다.', '귀족 가문의 권력 성장과 진나라 왕실 권력 약화', '전국시대의 국가 경쟁과 중앙집권적 국가 발전이 본격화되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-parthenon', '파르테논 신전 건립', '', 'WEST', '', 'ART_CULTURE', 'B', -447, -432, 'exact', '아테네 아크로폴리스에 아테나에게 봉헌된 파르테논 신전이 건립되었다.', '고전기 그리스 건축과 조각의 대표적 성취이며 아테네의 정치·문화적 위상을 상징한다.', '페르시아 전쟁 이후 아테네의 부흥과 재건', '고전 그리스 예술의 대표적인 기념물이 되었다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-peloponnesian-war', '펠로폰네소스 전쟁', '', 'WEST', '', 'POLITICS', 'A', -431, -404, 'exact', '아테네와 스파르타를 중심으로 한 그리스 세계의 장기적인 전쟁이 벌어졌다.', '고전기 그리스의 세력 균형을 근본적으로 변화시키고 아테네의 패권을 종식시켰다.', '아테네 제국의 확대와 스파르타 및 동맹국들의 위협 인식', '아테네가 패배하고 스파르타가 그리스 세계의 우세한 세력으로 부상하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-narrow-blade-bronze-dagger', '세형동검의 등장', '', 'KOREA', '', 'SCIENCE', 'B', -401, -400, 'approximate', '기원전 4세기경 한반도에서 한국식 세형동검이 나타나기 시작하였다.', '기존 비파형동검 문화에서 한반도 지역의 독자적인 청동기 문화가 발전하는 과정을 보여준다.', '지역적 청동기 제작기술의 발전', '한반도 청동기문화의 지역적 특성이 더욱 뚜렷해졌다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-dolmen-peak', '남방식 바둑판식 고인돌 축조', '남방식 바둑판식 고인돌 축조', 'KOREA', '', 'INSTITUTION', 'B', -400, -301, 'exact', '호남·영남 해안가에 수십 톤의 상석을 얹은 고인돌 집중 축조.', '수백 명을 동원할 수 있는 족장 사회의 권력 가시화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-early-iron', '단조 철기 농기구의 초기 유입', '단조 철기 농기구의 초기 유입', 'KOREA', '', 'SCIENCE', 'B', -400, -301, 'exact', '손칼, 괭이 등 철제 도구가 보급되며 생산력이 향상됨.', '철기 시대로의 진입과 읍락의 정치적 통합 촉진.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-pottery-stripes', '점토대토기 문화의 확산', '점토대토기 문화의 확산', 'KOREA', '', 'ART_CULTURE', 'C', -400, -301, 'exact', '원형 덧띠를 아가리에 두른 토기가 한반도 중남부로 확산.', '초기 철기시대 진입의 표지 유물.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-slender-dagger', '한국식 세형동검 문화의 확립', '한국식 세형동검 문화의 확립', 'KOREA', '', 'SCIENCE', 'A', -400, -301, 'exact', '비파형동검을 개량하여 한반도 고유의 독창적 세형동검을 주조함.', '독자적인 한반도 청동기 금속 공학의 절정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-songgukri-farming', '송국리형 농경 취락과 벼농사', '송국리형 농경 취락과 벼농사', 'KOREA', '', 'INSTITUTION', 'B', -400, -301, 'exact', '원형 주거지와 탄화미, 반달돌칼을 사용하는 대규모 농경 마을 번영.', '한반도 수전(논농사) 농경 사회의 완전한 정착.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-socrates-death', '소크라테스의 재판과 사형', '소크라테스의 재판과 사형', 'WEST', '', 'RELIGION', 'A', -399, -399, 'exact', '아테네 법정에서 청년들을 타락시켰다는 혐의로 소크라테스가 독배를 마심.', '비판적 이성 철학의 상징이자 플라톤 철학의 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-gallic-sack', '갈리아족의 로마 침공 및 약탈', '갈리아족의 로마 침공 및 약탈', 'WEST', '', 'POLITICS', 'B', -390, -387, 'exact', '브렌누스가 이끄는 갈리아족이 알리아 전투 후 로마 시를 점령함.', '로마의 방어 체제 재편과 세르비우스 성벽 강화 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-palisade-town', '환호와 목책 방어 취락 증대', '환호와 목책 방어 취락 증대', 'KOREA', '', 'POLITICS', 'C', -390, -301, 'exact', '취락 주위에 도랑과 나무 울타리를 둘러 집단 간 침입 대비.', '군사적 성채 취락의 발달과 성곽 축조의 원형.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-plato-academy', '플라톤의 아카데미아 창설', '플라톤의 아카데미아 창설', 'WEST', '', 'SCIENCE', 'A', -387, -387, 'exact', '아테네에 서양 최초의 고등 교육·연구 기관 아카데미아를 설립함.', '서양 대학 및 아카데미 제도의 원형.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-iron-plow', '철제 보습과 우경 농업의 보급', '철제 보습과 우경 농업의 보급', 'CHINA', '', 'SCIENCE', 'C', -380, -301, 'exact', '소 쟁기질과 단단한 철제 농기구로 토지 생산성이 급증함.', '대규모 인구 증가와 도시 경제 발달 촉진.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-danyu-mirror', '국보 다뉴세문경(정문경) 주조', '국보 다뉴세문경(정문경) 주조', 'KOREA', '', 'ART_CULTURE', 'B', -380, -301, 'exact', '0.3mm 간격의 초정밀 기하학 문양을 새긴 청동 거울 제작.', '고대 동아시아 최고의 청동 주조 정밀 기술 입증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-ritual-bells', '청동 팔주령·간두령과 제천 의례', '청동 팔주령·간두령과 제천 의례', 'KOREA', '', 'RELIGION', 'C', -380, -301, 'exact', '제의용 청동 방울을 통해 군장의 제정일치 종교 권위 행사.', '단군왕검 샤머니즘 제의의 고고학적 실증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-mencius', '맹자의 왕도정치와 성선설', '맹자의 왕도정치와 성선설', 'CHINA', '', 'RELIGION', 'A', -372, -301, 'exact', '인의(仁義)에 기초한 왕도정치와 민본주의 역성혁명론을 주장함.', '동아시아 유교 정치사상의 기본 규범 정립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-leuctra-battle', '레욱트라 전투와 테베의 패권', '레욱트라 전투와 테베의 패권', 'WEST', '', 'POLITICS', 'B', -371, -371, 'exact', '에파메이논다스의 사선진 전술로 테베가 스파르타를 격파함.', '스파르타 불패 신화 붕괴와 전술학의 혁신.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-diogenes-cynic', '디오게네스의 견유학파 철학', '디오게네스의 견유학파 철학', 'WEST', '', 'RELIGION', 'C', -370, -323, 'exact', '관습과 세속적 부를 거부하고 자연에 따른 무소유를 실천함.', '헬레니즘 개인주의 윤리학과 스토아 철학의 선구.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-liaodong-trade', '고조선 요동-서해 해상 교역망', '고조선 요동-서해 해상 교역망', 'KOREA', '', 'ECONOMY', 'C', -370, -301, 'exact', '요동반도와 대동강, 서해안을 잇는 무역로로 모피, 소금, 청동 교환.', '중계 무역을 통한 고조선의 경제적 성장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-zhuangzi', '장자의 도가 철학과 제물론', '장자의 도가 철학과 제물론', 'CHINA', '', 'RELIGION', 'A', -369, -301, 'exact', '만물의 평등과 절대적 자유(소요유)를 역설한 도가 철학 집대성.', '동양 예술론과 문학, 선불교에 지대한 영향.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-jixia-academy', '제나라 직하학궁 번영', '제나라 직하학궁 번영', 'CHINA', '', 'SCIENCE', 'A', -360, -301, 'exact', '임치에 제자백가 학자들을 모아 자유로운 학술 토론을 지원함.', '동양 최초의 국립 종합 학술원으로서 백가쟁명 주도.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-shang-yang', '진나라 상앙의 변법 개혁', '진나라 상앙의 변법 개혁', 'CHINA', '', 'INSTITUTION', 'A', -356, -338, 'exact', '군공수작제, 군현제, 십오제를 통해 철저한 법가적 부국강병 추진.', '진나라가 천하 통일의 기반을 구축한 결정적 개혁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-seven-powers', '전국 칠웅의 총력전 체제', '전국 칠웅의 총력전 체제', 'CHINA', '', 'POLITICS', 'C', -350, -301, 'exact', '진, 초, 제, 연, 조, 위, 한의 상호 침략전이 전면화됨.', '귀족 사회에서 관료제 국가로의 완전한 이행.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc4-yan-rivalry', '고조선과 연나라의 왕호 칭당 및 대립', '고조선과 연나라의 왕호 칭당 및 대립', 'KOREA', '', 'POLITICS', 'A', -350, -301, 'exact', '고조선 후가 왕을 칭하며 연나라와 요동에서 대등하게 대립함.', '고조선이 만주-한반도 일대 강력한 왕국임을 보여주는 문헌 기록.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-samnite-wars', '로마의 삼니움 전쟁', '로마의 삼니움 전쟁', 'WEST', '', 'POLITICS', 'B', -343, -301, 'exact', '로마가 삼니움족을 격파하고 이탈리아 중남부의 패권을 장악함.', '로마 군단병(레기온) 전술의 완성 및 이탈리아 통일의 발판.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-sun-bin', '손빈의 마릉 전투와 손빈병법', '손빈의 마릉 전투와 손빈병법', 'CHINA', '', 'SCIENCE', 'B', -341, -341, 'exact', '감조지계 전술로 위나라 군대를 섬멸하고 병법 체계를 발전시킴.', '집단 석궁 운용과 기동전술의 획기적 발전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-qu-yuan', '굴원의 초사 문학과 이소', '굴원의 초사 문학과 이소', 'CHINA', '', 'ART_CULTURE', 'B', -340, -301, 'exact', '초나라 시인 굴원이 나라를 걱정하며 장편 서정시 이소경을 지음.', '중국 남방 낭만주의 문학의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('alexander-hellenism', '알렉산드로스 제국과 헬레니즘 문화', 'Alexander''s Empire & Hellenism', 'WEST', '지중해/오리엔트', 'ART_CULTURE', 'A', -336, -323, 'exact', '알렉산드로스 대왕의 동방 원정으로 그리스 문화와 오리엔트 문화가 융합되어 헬레니즘 세계가 형성됨.', '동서 문화 교류를 촉진하고 이후 로마 문화와 간다라 불교 미술에 지대한 영향을 미침.', '마케도니아의 그리스 통일과 페르시아 정복 야망.', '알렉산드로스 사후 제국 분열 및 간다라 미술(동서 융합) 태동.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-aristotle-lyceum', '아리스토텔레스의 리케이온 설립', '아리스토텔레스의 리케이온 설립', 'WEST', '', 'SCIENCE', 'A', -335, -335, 'exact', '경험적 관찰과 귀납적 논리학을 연구하는 학당 리케이온을 세움.', '자연과학, 논리학, 윤리학 체계의 기초 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-alexander-conquests', '알렉산드로스 대왕의 동방 원정', '알렉산드로스 대왕의 동방 원정', 'WEST', '', 'POLITICS', 'A', -334, -323, 'exact', '페르시아를 정복하고 이집트와 인도 서북부까지 뻗은 제국을 건설함.', '그리스와 동방 문화를 융합한 헬레니즘 시대 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-su-qin-zhang-yi', '합종연횡 외교술의 대결', '합종연횡 외교술의 대결', 'CHINA', '', 'POLITICS', 'B', -330, -310, 'exact', '소진의 6국 합종책과 장의의 연횡책이 펼쳐진 치열한 외교전.', '세력균형과 다자외교의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-pytheas-voyage', '피테아스의 북유럽 탐험', '피테아스의 북유럽 탐험', 'WEST', '', 'SCIENCE', 'C', -325, -320, 'exact', '마살리아의 피테아스가 브리튼과 북극해 인근 툴레를 탐험함.', '고대 지중해 세계 최초의 북유럽 및 조석 관측 기록.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc4-appian-way', '아피아 가도 및 수도교 건설', '아피아 가도 및 수도교 건설', 'WEST', '', 'INSTITUTION', 'B', -312, -312, 'exact', '로마 최초의 포장 군사도로와 수도교 아쿠아 아피아를 축조함.', '로마 토목 공학 인프라의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc4-wuling-king', '조나라 무령왕의 호복기사', '조나라 무령왕의 호복기사', 'CHINA', '', 'INSTITUTION', 'B', -307, -307, 'exact', '유목민의 복장과 궁기병 전술을 중원에 최초로 도입함.', '동아시아 기병 전술의 혁신과 전차의 퇴조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-euclid-elements', '유클리드의 기하학 원론 편찬', '유클리드의 기하학 원론 편찬', 'WEST', '', 'SCIENCE', 'A', -300, -275, 'exact', '공리와 정리를 바탕으로 유클리드 기하학 체계를 완성함.', '2천 년간 서양 수학 교육과 논리적 사고의 표준 교과서.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-epicureanism', '에피쿠로스의 쾌락주의 철학', '에피쿠로스의 쾌락주의 철학', 'WEST', '', 'RELIGION', 'B', -300, -270, 'exact', '마음의 동요가 없는 정신적 평정(아타락시아)과 원자론적 자연관 제시.', '근대 유물론과 자유주의 철학의 원류.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-stoicism-zeno', '제논의 스토아 철학 창시', '제논의 스토아 철학 창시', 'WEST', '', 'RELIGION', 'B', -300, -260, 'exact', '아테네 채색 주랑에서 이성(로고스)과 금욕, 평정심(아파테이아)을 가르침.', '로마 제국 지식인들의 핵심 통치·윤리 철학으로 발전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-black-pottery', '흑색마제토기(검은간토기)의 성행', '흑색마제토기(검은간토기)의 성행', 'KOREA', '', 'ART_CULTURE', 'C', -300, -201, 'exact', '표면을 곱게 문질러 광택을 낸 정교한 흑색 토기가 지배층 무덤에 부장됨.', '고급 토기 제작 기술과 지배층의 미적 취향 반영.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-gojoseon-royal-strengthening', '고조선 왕정 강화', '', 'KOREA', '', 'POLITICS', 'C', -300, -201, 'approximate', '부왕과 준왕 등의 존재가 전하는 고조선 후기 정치체제의 변화가 나타난다.', '초기 국가의 왕권과 지배체제 발전을 이해하는 자료이다.', '지역 정치체의 성장과 중국 및 주변 세력과의 관계 변화', '고조선의 정치적 조직과 지배층 구조가 발전하였다.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-xunzi', '순자의 성악설과 예치 사상', '순자의 성악설과 예치 사상', 'CHINA', '', 'RELIGION', 'B', -298, -238, 'exact', '인간의 본성은 악하므로 인위적인 배움과 예(禮)로써 교화해야 한다고 주장.', '이사, 한비자 등 법가 사상가들을 배출한 현실주의 유학.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-alexandria-library', '알렉산드리아 도서관 설립', '알렉산드리아 도서관 설립', 'WEST', '', 'SCIENCE', 'A', -295, -280, 'exact', '프톨레마이오스 왕조가 알렉산드리아에 수십만 권의 두루마리를 수집한 연구소 건립.', '고대 세계 최대의 학문과 지식 연구 거점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-archimedes', '아르키메데스의 부력과 역학 원리 발견', '아르키메데스의 부력과 역학 원리 발견', 'WEST', '', 'SCIENCE', 'A', -287, -212, 'exact', '시라쿠사의 아르키메데스가 부력, 지렛대, 원주율 계산 등 수학·물리학을 혁신함.', '고대 역학 및 수학의 최고봉이자 공학의 선구.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-yan-invasion', '연나라 진개의 침략과 만번한 경계', '연나라 진개의 침략과 만번한 경계', 'KOREA', '', 'POLITICS', 'A', -280, -280, 'exact', '연나라 장수 진개가 고조선 서방 2천여 리를 침략하여 만번한을 경계로 삼음.', '고조선의 중심지가 요하 유역에서 평양 대동강 유역으로 이동하는 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-colossus-rhodes', '로도스의 거상 완성', '로도스의 거상 완성', 'WEST', '', 'ART_CULTURE', 'B', -280, -280, 'exact', '로도스섬 입구에 세워진 33m 높이의 태양신 헬리오스 청동 거상.', '헬레니즘 청동 조각 기술의 기념비적 걸작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-han-feizi', '한비자의 법가 사상 집대성', '한비자의 법가 사상 집대성', 'CHINA', '', 'INSTITUTION', 'B', -280, -233, 'exact', '법(法), 술(術), 세(勢)를 결합하여 군주 전제 통치의 이론을 완성함.', '진시황의 통치 철학이자 중국 제국 통치술의 뼈대.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-mould-cast', '평양·영암 등지 활석제 거푸집 주조', '평양·영암 등지 활석제 거푸집 주조', 'KOREA', '', 'SCIENCE', 'C', -280, -201, 'exact', '세형동검, 동과(창)를 정밀하게 대량 생산하는 활석 거푸집 공방 운영.', '전문 장인 집단의 존재와 독자 생산 체계 완비.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-punic-war-1', '제1차 포에니 전쟁', '제1차 포에니 전쟁', 'WEST', '', 'POLITICS', 'A', -264, -241, 'exact', '시칠리아 주도권을 두고 로마와 카르타고가 격돌하여 로마가 최초의 속주를 획득함.', '로마가 육상 국가에서 지중해 해상 강국으로 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-dujiangyan', '이빙의 도강언 수리 시설', '이빙의 도강언 수리 시설', 'CHINA', '', 'SCIENCE', 'B', -256, -256, 'exact', '촉나라 민강에 댐 없이 물길을 나누는 자연 친화적 수리시설 축조.', '사천 분지를 ''천부지국(풍요의 땅)''으로 탈바꿈시킴.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-buwang-junwang', '고조선 부왕·준왕의 왕권 강화', '고조선 부왕·준왕의 왕권 강화', 'KOREA', '', 'POLITICS', 'A', -250, -201, 'exact', '부왕과 그의 아들 준왕으로 이어지는 확고한 왕위 부자상속제와 관직 체계 확립.', '고조선이 중앙집권적 고대 군주국가로 체제를 정비했음을 입증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-eight-prohibitions', '고조선 범금 8조의 사유재산·신분 질서', '고조선 범금 8조의 사유재산·신분 질서', 'KOREA', '', 'INSTITUTION', 'B', -250, -201, 'exact', '살인, 상해, 절도 등을 처벌하는 8조의 법을 통해 생명·사유재산·노비 신분 보장.', '고조선 사회의 성숙한 법률과 계급 사회 구조를 반영.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-iron-expansion', '철기 농기구의 전국적 보급과 대량 생산', '철기 농기구의 전국적 보급과 대량 생산', 'KOREA', '', 'SCIENCE', 'B', -250, -201, 'exact', '주조 철부(쇠도끼), 철겸(낫), 괭이 등이 대량 생산되어 농업 생산력 비약.', '청동기가 제기(祭器)로 물러나고 철기가 실용 도구로 완전 정착.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-jin-state', '한반도 남부 진국(辰國)의 대두', '한반도 남부 진국(辰國)의 대두', 'KOREA', '', 'POLITICS', 'B', -250, -201, 'exact', '한반도 남부 지역에 삼한의 모태가 되는 정치 연맹체 진국이 출현함.', '고조선과 함께 한반도 남북의 양대 정치 축 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-wooden-tomb', '목관묘(널무덤)의 보급', '목관묘(널무덤)의 보급', 'KOREA', '', 'INSTITUTION', 'C', -250, -201, 'exact', '고인돌 대신 나무 널을 땅에 묻는 널무덤이 주요 묘제로 확산됨.', '철기 문화의 보급과 묘제 양식의 일대 전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('roman-warm-period', '로마 온난기 (Roman Warm Period)', 'Roman Warm Period', 'CLIMATE', '유럽 및 북반구', 'CLIMATE_ENVIRONMENT', 'B', -250, 400, 'approximate', '지중해와 유럽, 아시아 일대에 걸쳐 온화하고 강우량이 풍부했던 시기로, 농업 생산성과 문명 팽창을 뒷받침함.', '로마 제국과 동한(東漢)의 번영을 가능하게 했던 핵심적 자연환경 요인.', '태양 복사 활동의 극대화와 화산 활동 감소.', '5세기 이후 한랭기 도래로 유목민족 이동(게르만/훈족) 및 제국 붕괴에 영향.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-terracotta', '진시황릉 병마용갱 조성', '진시황릉 병마용갱 조성', 'CHINA', '', 'ART_CULTURE', 'C', -246, -208, 'exact', '실물 크기의 정교한 도용 군단 수천 점을 지하 궁전에 매장.', '진나라의 군사 편제와 놀라운 사실주의 조각 예술 증명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-eratosthenes', '에라토스테네스의 지구 둘레 측정', '에라토스테네스의 지구 둘레 측정', 'WEST', '', 'SCIENCE', 'A', -240, -240, 'exact', '시에네와 알렉산드리아의 하짓날 그림자 각도를 이용해 지구 둘레를 오차 2% 이내로 측정.', '인류 최초의 과학적 지구 크기 계산.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-furnace', '원초적 제철로와 단야구 발전', '원초적 제철로와 단야구 발전', 'KOREA', '', 'SCIENCE', 'C', -230, -201, 'exact', '사철과 철광석을 제련하여 철을 추출하는 초기 용해로 가동.', '철기 수입국에서 자체 제철 생산국으로의 진화 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-qin-unification', '진시황의 중국 천하 통일', '진시황의 중국 천하 통일', 'CHINA', '', 'POLITICS', 'A', -221, -221, 'exact', '진나라 영정이 6국을 모두 멸망시키고 최초의 중앙집권 통일 황제국을 세움.', '2천 년간 이어질 중국 제국 통치 구조의 기틀 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-standardization', '도량형·문자·화폐·차궤의 표준화', '도량형·문자·화폐·차궤의 표준화', 'CHINA', '', 'INSTITUTION', 'A', -221, -210, 'exact', '소전체 문자, 반량전, 통일 도량형을 전국에 강제하여 국가 단일화 완성.', '동일한 문화와 경제권을 형성하여 중국의 단일 정체성 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('qin-unification', '진시황의 중국 통일 및 군현제 확립', 'Qin Unification & Centralization', 'CHINA', '진(秦)', 'POLITICS', 'A', -221, -206, 'exact', '진나라 시황제가 전국 7웅을 병합하여 최초의 중앙집권적 통일 제국을 건립하고 도량형, 문자, 화폐를 통일함.', '봉건제를 폐지하고 군현제를 도입하여 이후 2천 년간 이어질 중국 제국 통치 시스템의 원형 구축.', '상앙의 변법을 통한 법가적 부국강병과 강력한 군사력.', '과도한 토목공사(만리장성, 아방궁)와 가혹한 형벌로 시황제 사후 15년 만에 멸망하고 한나라로 교체.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc3-refugees', '중국 전란민의 고조선 대규모 망명 유입', '중국 전란민의 고조선 대규모 망명 유입', 'KOREA', '', 'INSTITUTION', 'B', -221, -201, 'exact', '진나라의 통일 전쟁과 초한전쟁의 전란을 피해 연·제 유민들이 고조선 서부로 망명.', '선진 철기 기술과 제련술이 고조선에 급속도로 유입되는 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-hannibal-punic-2', '제2차 포에니 전쟁과 한니발의 알프스 횡단', '제2차 포에니 전쟁과 한니발의 알프스 횡단', 'WEST', '', 'POLITICS', 'A', -218, -201, 'exact', '한니발이 알프스를 넘어 칸나에에서 로마군을 전멸시켰으나 스키피오가 자마에서 승리함.', '서지중해의 완전한 패권을 로마가 장악.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-great-wall', '만리장성 연결 축조', '만리장성 연결 축조', 'CHINA', '', 'POLITICS', 'A', -215, -210, 'exact', '몽염 장군을 파견해 흉노를 격퇴하고 기존 전국 6국의 성벽을 연결하여 거대 장성을 완공.', '농경 문명과 북방 유목 문명의 경계선을 확정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-burning-books', '분서갱유(焚書坑儒)', '분서갱유(焚書坑儒)', 'CHINA', '', 'ART_CULTURE', 'A', -213, -212, 'exact', '이사(李斯)의 건의로 민간의 사상 서적을 불태우고 비판 유학자들을 생매장함.', '극단적 사상 통제와 법가 독재의 상징적 사건.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-chen-sheng-wu-guang', '진승·오광의 난', '진승·오광의 난', 'CHINA', '', 'POLITICS', 'A', -209, -208, 'exact', '''왕후장상의 씨가 따로 있는가''를 외치며 일어난 중국 최초의 대규모 농민 봉기.', '진나라 붕괴의 도화선이자 신분 해방 의식의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc3-chu-han-contention', '초한전쟁과 한나라 건국', '초한전쟁과 한나라 건국', 'CHINA', '', 'POLITICS', 'A', -206, -202, 'exact', '항우와 유방의 패권 쟁탈전 끝에 해하 전투에서 유방이 승리하여 한나라를 건국함.', '400년 한나라 번영과 ''한족(漢族)'' 문화권 형성의 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc3-scipio-africanus', '스키피오 아프리카누스의 전술 혁신', '스키피오 아프리카누스의 전술 혁신', 'WEST', '', 'POLITICS', 'C', -202, -202, 'exact', '자마 전투에서 한니발의 전투 코끼리를 무력화하고 배후 기병 기습으로 카르타고 굴복.', '로마 지휘관의 지략과 전술적 유연성을 입증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('han-dynasty-flourishing', '한나라의 번영과 비단길(실크로드) 개척', 'Han Dynasty & The Silk Road', 'CHINA', '한(漢)', 'POLITICS', 'A', -202, 220, 'exact', '한무제의 영토 확장과 장건의 서역 파견으로 유라시아 대륙을 잇는 비단길(실크로드)이 개척되고 유교가 국교화됨.', '동서 문명 교류의 대동맥 형성 및 중국 ''한족(漢族)'' 정체성과 한자 문화권 확립.', '초한전쟁 승리와 유방의 건국, 경제적 안정(문경의 치).', '종이 발명, 불교 전래 등으로 문화적 융성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-wiman-joseon', '위만의 고조선 집권과 위만조선 성립', '위만의 고조선 집권과 위만조선 성립', 'KOREA', '', 'POLITICS', 'A', -194, -194, 'exact', '연나라에서 망명한 위만이 상투를 틀고 조선인 복장으로 준왕을 몰아내고 왕검성에 집권.', '철기 문화를 기반으로 한 고조선의 비약적 국력 신장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-cato-elder', '대 카토의 전통 가치 수호와 ''카르타고 멸망론''', '대 카토의 전통 가치 수호와 ''카르타고 멸망론''', 'WEST', '', 'POLITICS', 'C', -184, -149, 'exact', '엄격한 로마식 농경 도덕을 강조하며 모든 연설을 ''카르타고는 파괴되어야 한다''로 끝맺음.', '로마 보수주의와 라틴어 산문 문학의 창시자.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-pergamon-library', '페르가몬 왕국의 양피지(파치먼트) 발전', '페르가몬 왕국의 양피지(파치먼트) 발전', 'WEST', '', 'SCIENCE', 'C', -180, -150, 'exact', '이집트의 파피루스 수출 금지에 맞서 동물의 가죽을 가공한 양피지 도서 제작 기술 고도화.', '책(코덱스) 형태의 발전과 지식 보존의 획기적 기여.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-maccabean-revolt', '유대 마카베오 봉기와 하스몬 왕조 수립', '유대 마카베오 봉기와 하스몬 왕조 수립', 'WEST', '', 'RELIGION', 'B', -167, -140, 'exact', '셀레우코스 왕조의 헬레니즘 강요에 맞서 유다 마카베오가 성전을 탈환하고 독립 왕국 건국.', '유대교 성전 정결 기념일 하누카(Hanukkah)의 기원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-rebellion-seven-states', '오·초 칠국의 난 진압과 제후국 억압', '오·초 칠국의 난 진압과 제후국 억압', 'CHINA', '', 'POLITICS', 'B', -154, -154, 'exact', '한경제 시기 주아부가 오왕 유비 등 제후왕들의 반란을 3개월 만에 평정함.', '군국제의 제후국 세력을 무력화하고 완전한 군현제 일원화 달성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-polybius-history', '폴리비오스의 역사 저술과 혼합정체론', '폴리비오스의 역사 저술과 혼합정체론', 'WEST', '', 'SCIENCE', 'B', -150, -120, 'exact', '그리스 역사가 폴리비오스가 로마가 53년 만에 지중해를 제패한 원인을 혼합정체(집정관·원로원·민회)로 설명.', '서양 헌정주의와 권력 분립 이론의 선구.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-transit-trade', '위만조선의 중계무역 독점', '위만조선의 중계무역 독점', 'KOREA', '', 'ECONOMY', 'B', -150, -109, 'exact', '한반도 남부 진국과 중국 한나라 사이의 무역을 독점하여 막대한 경제적 부 축적.', '한무제가 고조선을 침공하게 된 핵심 경제적 원인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-iron-weapons-mass', '철제 장검·투구·갑옷의 보급', '철제 장검·투구·갑옷의 보급', 'KOREA', '', 'SCIENCE', 'B', -150, -101, 'exact', '단련강 기술로 제작된 긴 철검과 철제 창, 판갑이 군대에 광범위하게 보급됨.', '고조선군의 막강한 군사력과 한나라 침략군 격퇴의 무기적 기반.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-samhan-chiefdoms', '삼한(마한·진한·변한) 78개 소국의 형성', '삼한(마한·진한·변한) 78개 소국의 형성', 'KOREA', '', 'POLITICS', 'B', -150, -101, 'exact', '준왕의 남천 이후 한반도 중남부에 신지, 읍차 등 군장이 다스리는 연맹 소국들이 분립.', '백제, 신라, 가야로 발전하는 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-sodo-heaven-lord', '삼한의 소도(蘇塗)와 천군(天君) 신앙', '삼한의 소도(蘇塗)와 천군(天君) 신앙', 'KOREA', '', 'RELIGION', 'B', -150, -101, 'exact', '정치 군장과 분리된 종교 지도자 천군이 신성 구역 소도에서 방울과 북을 치며 제사.', '제정분리 사회로의 진화와 솟대 신앙의 기원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-carthage-destruction', '제3차 포에니 전쟁과 카르타고 파괴', '제3차 포에니 전쟁과 카르타고 파괴', 'WEST', '', 'POLITICS', 'A', -149, -146, 'exact', '로마가 카르타고를 완전히 포위하여 함락하고 도시를 철저히 파괴함.', '서지중해의 라이벌 카르타고 소멸 및 아프리카 속주 설치.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-hipparchus', '히파르코스의 춘분점 세차운동 발견 및 별자리 지도', '히파르코스의 춘분점 세차운동 발견 및 별자리 지도', 'WEST', '', 'SCIENCE', 'B', -147, -127, 'exact', '천문학자 히파르코스가 춘분점의 세차운동을 발견하고 850개 항성의 등급을 분류.', '고대 정밀 천문학 및 삼각법의 창시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-corinth-conquest', '로마의 코린토스 파괴와 그리스 정복', '로마의 코린토스 파괴와 그리스 정복', 'WEST', '', 'POLITICS', 'A', -146, -146, 'exact', '로마군이 마케도니아와 아카이아 동맹을 제압하고 코린토스를 파괴함.', '헬레니즘 그리스 세계 전체가 로마의 영토로 편입.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-han-wudi', '한무제의 통치와 대제국 전성기', '한무제의 통치와 대제국 전성기', 'CHINA', '', 'POLITICS', 'A', -141, -87, 'exact', '군현제 전국 강화, 흉노 정벌, 남월과 고조선 정복을 통해 한나라 영토를 극대화함.', '동아시아 중화 제국의 표준 영토와 통치 시스템 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-huainanzi', '회남자(淮南子) 편찬과 백과사전적 사상 융합', '회남자(淮南子) 편찬과 백과사전적 사상 융합', 'CHINA', '', 'SCIENCE', 'C', -139, -139, 'exact', '회남왕 유안이 빈객들을 모아 도가, 유가, 음양가, 천문지리를 융합한 저작 편찬.', '한대 초기 황로사상과 자연학의 집대성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-silk-road-zhang-qian', '장건의 서역 개척과 실크로드 개통', '장건의 서역 개척과 실크로드 개통', 'CHINA', '', 'ECONOMY', 'A', -138, -126, 'exact', '한무제의 명으로 대월지를 찾아 서역을 탐험하여 중앙아시아와 지중해를 잇는 비단길 개척.', '동서 유라시아 문명 교류의 대동맥 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-confucian-orthodoxy', '동중서의 건의와 유교의 국교화', '동중서의 건의와 유교의 국교화', 'CHINA', '', 'RELIGION', 'A', -134, -134, 'exact', '백가 사상을 배척하고 오경박사를 설치하여 유학을 국가 통치의 유일한 이념으로 공인.', '2천 년간 동아시아 관료제와 과거 시험의 핵심 철학 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-gracchi-reforms', '그라쿠스 형제의 토지 개혁 운동', '그라쿠스 형제의 토지 개혁 운동', 'WEST', '', 'POLITICS', 'A', -133, -121, 'exact', '호민관 티베리우스와 가이우스 그라쿠스가 자영농 육성을 위한 농지법을 추진하다 원로원에 암살당함.', '로마 공화정 말기 내란의 세기(벌족파 vs 평민파) 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-venus-de-milo', '밀로의 비너스 조각상 제작', '밀로의 비너스 조각상 제작', 'WEST', '', 'ART_CULTURE', 'B', -130, -100, 'exact', '에게해 밀로스섬에서 발견된 고전미와 헬레니즘 관능미가 결합된 대리석 아프로디테상.', '서양 고전 미술의 황금비율을 상징하는 걸작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-xiongnu-expedition', '위청·곽거병의 흉노 대토벌과 하서주랑 장악', '위청·곽거병의 흉노 대토벌과 하서주랑 장악', 'CHINA', '', 'POLITICS', 'B', -129, -119, 'exact', '기병 군단으로 막북 전투에서 흉노 선우를 격파하고 하서 4군(무위·장액·주천·돈황)을 설치.', '서역 교역로의 안전 확보와 흉노의 분열 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-iron-ingot-currency', '변한·진한의 덩이쇠(철정) 화폐 사용', '변한·진한의 덩이쇠(철정) 화폐 사용', 'KOREA', '', 'ECONOMY', 'C', -120, -101, 'exact', '낙동강 유역의 풍부한 철을 일정한 규격의 덩이쇠로 만들어 화폐 및 무역 교환 매개물로 사용.', '낙랑, 대방, 왜를 잇는 국제 철 무역망 가동.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-salt-iron-monopoly', '소금·철·술의 국가 전매제(전매관) 실시', '소금·철·술의 국가 전매제(전매관) 실시', 'CHINA', '', 'ECONOMY', 'B', -119, -115, 'exact', '흉노 정벌로 고갈된 국가 재정을 확충하기 위해 상홍양의 주도로 염철 전매와 균수법·평준법 시행.', '국가 주도 통제 경제 정책의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-nanling-conquest', '남월(南越) 정복과 9군 설치', '남월(南越) 정복과 9군 설치', 'CHINA', '', 'POLITICS', 'C', -111, -111, 'exact', '광둥과 베트남 북부의 남월국을 멸망시키고 남해군·교지군 등을 설치.', '중국 남부 해양 교역로 장악.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-gojoseon-han-war', '고조선-한나라 전쟁과 왕검성 결사항전', '고조선-한나라 전쟁과 왕검성 결사항전', 'KOREA', '', 'POLITICS', 'A', -109, -108, 'exact', '우거왕이 한무제의 5만 육해군을 맞아 1년간 왕검성에서 결사 항전함.', '고대 동북아의 패권을 두고 벌어진 최고 수준의 국제 대전쟁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-sima-qian-shiji', '사마천의 『사기(史記)』 저술', '사마천의 『사기(史記)』 저술', 'CHINA', '', 'ART_CULTURE', 'A', -109, -91, 'exact', '궁형의 치욕을 견디며 황제부터 서민까지 3천 년 역사를 기전체로 서술한 역사서 완성.', '동양 역사학의 모범이자 불멸의 문학 걸작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-fall-of-gojoseon', '고조선 멸망과 한사군 설치', '고조선 멸망과 한사군 설치', 'KOREA', '', 'POLITICS', 'A', -108, -108, 'exact', '지배층 내부 분열로 왕검성이 함락되고 낙랑, 임둔, 현도, 진번 4군이 설치됨.', '고조선 해체 후 부여, 고구려, 옥저, 동예, 삼한의 여러 소국으로 분화 발전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc2-marian-reforms', '가이우스 마리우스의 군제 개혁', '가이우스 마리우스의 군제 개혁', 'WEST', '', 'INSTITUTION', 'A', -107, -107, 'exact', '무산자 시민을 모병하여 국가가 무장을 지급하는 직업군인제와 코호트 편제 도입.', '로마 군대의 사병화와 장군들의 군사 독재 발판 마련.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-goguryeo-hyeon', '현도군 공격과 고구려 초기 나부 세력 성장', '현도군 공격과 고구려 초기 나부 세력 성장', 'KOREA', '', 'POLITICS', 'C', -107, -101, 'exact', '압록강 유역의 토착 세력들이 한나라 현도군을 공격하여 치소를 서쪽으로 밀어냄.', '고구려 건국 주도 세력의 급속한 성장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc2-taichu-calendar', '태초력(太初曆) 제정과 천문 역법 개혁', '태초력(太初曆) 제정과 천문 역법 개혁', 'CHINA', '', 'SCIENCE', 'C', -104, -104, 'exact', '사마천, 낙하홍 등이 1년을 365.2502일로 계산한 중국 최초의 완전한 역법 반포.', '동양 음양력 체계의 기준 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc2-daho-ri-brush', '창원 다호리 유적의 붓과 문자 사용', '창원 다호리 유적의 붓과 문자 사용', 'KOREA', '', 'ART_CULTURE', 'C', -100, -100, 'exact', '다호리 목관묘에서 출토된 옻칠 붓 5자루와 중국 한나라 오수전, 철기 유물.', '기원전 1~2세기 한반도 남부에서 한자를 이용한 문서 행정이 시작되었음을 실증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-jiuzhang-suanshu', '『구장산술(九章算術)』 기초 형성', '『구장산술(九章算術)』 기초 형성', 'CHINA', '', 'SCIENCE', 'B', -100, -1, 'exact', '분수 계산, 연립방정식(방정론), 피타고라스 정리(구고현), 면적·부피 계산법 집대성.', '동양 수학의 체계적 기틀을 세운 불후의 고전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-buyeo-confederacy', '부여 5가(마가·우가·저가·구가) 연맹 왕국의 발전', '부여 5가(마가·우가·저가·구가) 연맹 왕국의 발전', 'KOREA', '', 'POLITICS', 'A', -100, -1, 'exact', '송화강 유역의 평야 지대에서 가축 이름을 딴 4출도를 다스리는 5부족 연맹체 부여 번영.', '고구려와 백제의 지배층이 모두 부여 계통임을 표방한 한민족 고대사의 주요 뿌리.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-dongye-cheongun', '동예의 무천(舞天)과 책화(責禍) 풍습', '동예의 무천(舞天)과 책화(責禍) 풍습', 'KOREA', '', 'INSTITUTION', 'B', -100, -1, 'exact', '10월 제천 행사 무천을 열고, 다른 부족의 경계를 침범하면 노비나 소·말로 변상하는 책화 엄수.', '초기 읍락 사회의 독자적 경계 질서와 제천 의례 증명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-lelang-trade', '낙랑군과의 교역 및 칠기·옥기 문화 유입', '낙랑군과의 교역 및 칠기·옥기 문화 유입', 'KOREA', '', 'ECONOMY', 'C', -100, -1, 'exact', '평양의 낙랑군을 매개로 한나라의 칠기, 거울, 비단과 삼한의 철, 곡물 교환.', '선진 문화 수용과 토착 지배층의 위세품 축적.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-okjeo-minmyeoneuri', '옥저의 민며느리제와 골장제(가족공동묘)', '옥저의 민며느리제와 골장제(가족공동묘)', 'KOREA', '', 'INSTITUTION', 'B', -100, -1, 'exact', '어린 신부를 미리 데려와 키운 후 혼인시키는 매매혼 풍습과 거대한 목곽에 뼈를 모으는 골장제.', '함경도 동해안 초기 부족 국가의 독특한 가족·사회 구조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-zhaodi-xuandi-renaissance', '소제·선제의 소선중흥(昭宣中興)', '소제·선제의 소선중흥(昭宣中興)', 'CHINA', '', 'POLITICS', 'A', -87, -49, 'exact', '곽광의 보필과 선제의 유법양용(儒法兩用) 통치로 한무제 시기 피폐해진 민생을 회복함.', '한나라의 정치·사회적 안정과 태평성대 구가.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-salt-iron-debate', '염철회의(鹽鐵會議)와 염철론 편찬', '염철회의(鹽鐵會議)와 염철론 편찬', 'CHINA', '', 'INSTITUTION', 'A', -81, -81, 'exact', '한소제 시기 관료파(상홍양)와 민간 유학자들이 국가 전매제와 시장 경제를 두고 대토론.', '국가 개입주의와 유교적 자유방임주의 간의 동양 최초 경제 정책 논쟁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-shiyuan-reign', '한대 호족(豪族) 세력의 대토지 겸병 심화', '한대 호족(豪族) 세력의 대토지 겸병 심화', 'CHINA', '', 'INSTITUTION', 'C', -80, -1, 'exact', '지방 유력 가문들이 장원을 형성하고 농민을 소작농·노비로 전락시킴.', '후한 및 위진남북조 시대를 지배할 호족 계층의 태동.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-spartacus-revolt', '스파르타쿠스 검투사 노예 봉기', '스파르타쿠스 검투사 노예 봉기', 'WEST', '', 'POLITICS', 'B', -73, -71, 'exact', '카푸아 검투사 스파르타쿠스가 이끄는 10만 노예군이 로마 군단에 맞서 이탈리아를 뒤흔듦.', '고대 노예제 사회의 구조적 모순을 폭로한 자유 투쟁의 상징.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-cicero-eloquence', '키케로의 수사학·철학 저술과 공화정 수호', '키케로의 수사학·철학 저술과 공화정 수호', 'WEST', '', 'ART_CULTURE', 'B', -70, -43, 'exact', '카틸리나 탄핵 등 명연설과 『의무론』, 『국가론』을 통해 라틴 문학의 황금기를 엶.', '서양 인문주의와 자연법 사상의 원천.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-sima-xiangru-fu', '사마상여의 한부(漢賦) 문학 절정', '사마상여의 한부(漢賦) 문학 절정', 'CHINA', '', 'ART_CULTURE', 'B', -70, -40, 'exact', '자허부, 상림부 등 제국의 웅장함과 황제의 권위를 화려한 수사로 노래한 산문시 발전.', '한대 고전문학의 대표 장르 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-western-regions-protectorate', '서역도호부(西域都護府) 설치', '서역도호부(西域都護府) 설치', 'CHINA', '', 'POLITICS', 'A', -60, -60, 'exact', '한선제가 정길을 초대 서역도호로 임명하여 타림 분지 36개 도시국가를 직접 관할.', '신장(서역) 지역이 중국 제국의 행정 통제 하에 편입된 기원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-lucretius-nature', '루크레티우스의 『사물의 본성에 관하여』', '루크레티우스의 『사물의 본성에 관하여』', 'WEST', '', 'SCIENCE', 'C', -60, -55, 'exact', '신화적 공포를 배격하고 데모크리토스와 에피쿠로스의 고대 원자론을 시적 언어로 해설.', '근대 과학 혁명기 원자론 부활의 불씨.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-caesar-gaul', '율리우스 카이사르의 갈리아 원정', '율리우스 카이사르의 갈리아 원정', 'WEST', '', 'POLITICS', 'A', -58, -50, 'exact', '카이사르가 갈리아 전역을 정복하고 알레시아 공방전에서 베르킨게토리크스를 굴복시킴.', '프랑스·서유럽이 로마 문명권에 완전 편입되는 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-silla-founding', '신라 건국 (박혁거세의 서라벌 건국)', '신라 건국 (박혁거세의 서라벌 건국)', 'KOREA', '', 'POLITICS', 'A', -57, -57, 'exact', '경주 분지 6촌 촌장들의 추대로 박혁거세가 거서간으로 즉위하여 사로국(신라)을 개창함.', '천년 왕조 신라의 출발점이자 삼국시대의 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-xiongnu-submission', '흉노 호한야 선우의 한나라 입조와 화친', '흉노 호한야 선우의 한나라 입조와 화친', 'CHINA', '', 'POLITICS', 'A', -51, -33, 'exact', '흉노의 호한야 선우가 장안을 방문해 한나라에 칭신하고 왕소군과의 화번공주 혼인 성사.', '한-흉노 150년 전쟁 종식과 장기 평화 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-silk-monopoly-trade', '비단·칠기 공방의 관영 생산 체제', '비단·칠기 공방의 관영 생산 체제', 'CHINA', '', 'ECONOMY', 'C', -50, -1, 'exact', '장안과 낙양의 관영 공방에서 최고급 견직물과 정교한 칠기를 제작해 서역에 수출.', '실크로드를 통한 글로벌 사치품 교역의 주도권 확보.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-eupcha-sinji', '삼한 지배층의 신지·견지·읍차 칭호 분화', '삼한 지배층의 신지·견지·읍차 칭호 분화', 'KOREA', '', 'INSTITUTION', 'C', -50, -1, 'exact', '세력 크기에 따라 군장들의 칭호가 차등화되며 계층화 진전.', '소국 연맹에서 연맹 왕국으로 발전하는 중간 단계.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-iron-armors-weapons', '고구려·신라 초기 비늘갑옷(찰갑)과 철제 무기', '고구려·신라 초기 비늘갑옷(찰갑)과 철제 무기', 'KOREA', '', 'SCIENCE', 'B', -50, -1, 'exact', '작은 철판을 가죽 끈으로 엮은 찰갑과 강력한 복합궁(맥궁)을 장비한 기병 양성.', '주변 읍락 정복과 고대 국가 성장의 군사적 원동력.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-rubicon-civil-war', '카이사르의 루비콘강 도하와 로마 내전', '카이사르의 루비콘강 도하와 로마 내전', 'WEST', '', 'POLITICS', 'A', -49, -45, 'exact', '''주사위는 던져졌다''를 외치며 루비콘강을 건너 폼페이우스와 원로원파를 파르살로스에서 격파.', '500년 로마 공화정의 종말과 1인 독재관 체제 수립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-julian-calendar', '율리우스력(태양력) 도입', '율리우스력(태양력) 도입', 'WEST', '', 'SCIENCE', 'A', -45, -45, 'exact', '알렉산드리아 천문학자 소시게네스의 자문을 받아 1년을 365.25일로 정한 태양력 반포.', '현대 그레고리력의 모태가 된 서양 표준 달력.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-ides-of-march', '카이사르 암살 (3월 15일의 변)', '카이사르 암살 (3월 15일의 변)', 'WEST', '', 'POLITICS', 'A', -44, -44, 'exact', '브루투스와 카시우스 등 공화파 원로원 의원들이 폼페이우스 극장에서 카이사르를 암살함.', '공화정 복고 실패와 옥타비아누스·안토니우스의 후계 내전 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-goguryeo-founding', '고구려 건국 (동명성왕 주몽)', '고구려 건국 (동명성왕 주몽)', 'KOREA', '', 'POLITICS', 'A', -37, -37, 'exact', '부여에서 남하한 주몽이 졸본에 도읍을 정하고 압록강 지류 일대를 통합하여 고구려를 건국.', '동북아의 패자로 군림할 강력한 기마 군사 국가의 출범.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-stone-mound-tomb', '고구려 적석총(돌무지무덤)의 축조', '고구려 적석총(돌무지무덤)의 축조', 'KOREA', '', 'ART_CULTURE', 'C', -37, -1, 'exact', '압록강과 독로강 유역에 강돌을 계단식으로 쌓아 올린 웅장한 지배자 무덤 축조.', '고구려 초기 지배 권력의 성장과 독자적 석조 건축 기술.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-actium-battle', '악티움 해전과 로마 제정 성립', '악티움 해전과 로마 제정 성립', 'WEST', '', 'POLITICS', 'A', -31, -27, 'exact', '옥타비아누스가 안토니우스와 클레오파트라 연합 함대를 격파하고 아우구스투스 황제로 등극.', '로마 제국(팍스 로마나)의 공식 출범.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-vitruvius-architecture', '비트루비우스의 『건축십서(De Architectura)』', '비트루비우스의 『건축십서(De Architectura)』', 'WEST', '', 'SCIENCE', 'C', -30, -20, 'exact', '건축의 3대 요소로 구조적 안정(Firmitas), 기능성(Utilitas), 미(Venustas)를 제시.', '르네상스 건축(레오나르도 다 빈치의 비트루비우스 인간)의 핵심 교본.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-bc1-virgil-aeneid', '베르길리우스의 서사시 『아이네이스』', '베르길리우스의 서사시 『아이네이스』', 'WEST', '', 'ART_CULTURE', 'B', -29, -19, 'exact', '트로이 영웅 아이네아스가 이탈리아로 건너와 로마를 건국하는 로마의 민족 대서사시.', '아우구스투스 황제 통치의 정당성을 부여한 라틴 문학 최고 걸작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('roman-empire-pax-romana', '로마 제정 성립 및 팍스 로마나', 'Pax Romana & Rise of the Roman Empire', 'WEST', '로마', 'POLITICS', 'A', -27, 180, 'exact', '아우구스투스의 제정 수립 이후 지중해 전역에 걸친 약 200년간의 로마 평화기와 도로망·법률 번영.', '로마법, 건축 토목 기술, 도로망을 통해 서구 문명의 법적·공학적 기반 마련.', '카이사르 암살 후 삼두정치 종식과 옥타비아누스의 권력 장악.', '군인 황제 시대의 혼란과 3세기 위기로 이어짐.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-liu-xiang-bibliography', '유향의 『별록』과 황실 장서 분류', '유향의 『별록』과 황실 장서 분류', 'CHINA', '', 'SCIENCE', 'C', -26, -10, 'exact', '황실 도서관의 경서, 제자백가 서적을 교정하고 중국 최초의 도서 분류 목록 편찬.', '동양 서지학과 도서관학의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-bc1-baekje-founding', '백제 건국 (온조왕의 위례성 건국)', '백제 건국 (온조왕의 위례성 건국)', 'KOREA', '', 'POLITICS', 'A', -18, -18, 'exact', '주몽의 아들 온조가 남하하여 한강 유역 한남 위례성에 도읍하고 십제(백제)를 건국함.', '비옥한 한강 유역을 장악한 해상 해양 강국의 태동.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-bc1-wang-mang-rise', '왕망의 권력 장악과 신(新) 왕조 준비', '왕망의 권력 장악과 신(新) 왕조 준비', 'CHINA', '', 'POLITICS', 'B', -8, -1, 'exact', '외척 왕망이 유교적 성인 행세를 하며 대사마에 오르고 왕실을 찬탈할 기반 구축.', '전한 말기 호족 발흥과 왕조 교체의 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-ondol-heating', '고구려·백제 전통 온돌(구들) 난방의 발전', '고구려·백제 전통 온돌(구들) 난방의 발전', 'KOREA', '', 'SCIENCE', 'C', 1, 100, 'exact', '방바닥 아래 고래를 켜고 아궁이 불길로 바닥 전체를 데우는 쪽구들 난방 기술 발전.', '한민족 고유의 독창적 주거 난방 문화 정착.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-goguryeo-yurimyeong', '고구려 유리명왕의 국내성(국내위나암성) 천도', '고구려 유리명왕의 국내성(국내위나암성) 천도', 'KOREA', '', 'POLITICS', 'B', 3, 3, 'exact', '졸본에서 방어와 농경에 유리한 압록강변 국내성(통구 평야)으로 도읍을 옮김.', '이후 400년간 고구려 제국의 심장부가 된 국내성 시대 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-teutoburg-forest', '토이토부르크 숲 전투 (바루스 패전)', '토이토부르크 숲 전투 (바루스 패전)', 'WEST', '', 'POLITICS', 'A', 9, 9, 'exact', '아르미니우스가 이끄는 게르만 연합군이 바루스의 로마 3개 군단을 숲속에서 전멸시킴.', '로마의 엘베강 진출 좌절 및 라인강을 로마-게르마니아의 영구 국경선으로 확정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-wang-mang-xin', '왕망의 신(新) 왕조 건국과 왕전문 개혁', '왕망의 신(新) 왕조 건국과 왕전문 개혁', 'CHINA', '', 'INSTITUTION', 'A', 9, 23, 'exact', '주례(周禮)를 모방하여 토지 국유화(왕전제), 노비 매매 금지, 오균육관제를 추진했으나 대혼란 초래.', '이상주의적 복고 개혁의 실패와 농민 봉기(적미·녹림의 난).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-silla-talhae-yuri', '신라 유리이사금의 6부 개편과 가배(추석) 풍습', '신라 유리이사금의 6부 개편과 가배(추석) 풍습', 'KOREA', '', 'INSTITUTION', 'A', 24, 57, 'exact', '6촌을 6부로 개편하고 관등(17관등 기초)을 제정하였으며 두레 길쌈 놀이인 가배(추석) 장려.', '신라의 국가 제도 정비와 민족 명절 한가위의 기원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-eastern-han-founding', '광무제 유수의 후한(後漢) 건국과 광무중흥', '광무제 유수의 후한(後漢) 건국과 광무중흥', 'CHINA', '', 'POLITICS', 'A', 25, 57, 'exact', '한나라 종실 유수가 낙양에 도읍하고 군웅들을 평정하여 한 왕조를 재건함.', '후한 200년 번영의 개막과 유학 중심 통치 질서 정착.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-baekje-daroo-expansion', '백제 다루왕·기루왕의 영토 확장과 마한 압박', '백제 다루왕·기루왕의 영토 확장과 마한 압박', 'KOREA', '', 'POLITICS', 'A', 28, 100, 'exact', '한강 유역에서 충청도 일대로 세력을 확장하며 마한 연맹체들을 복속시키기 시작.', '백제가 한반도 중부의 패권 국가로 성장하는 기반 마련.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-jesus-crucifixion', '예수 그리스도의 사역과 기독교의 탄생', '예수 그리스도의 사역과 기독교의 탄생', 'WEST', '', 'RELIGION', 'A', 30, 33, 'exact', '예수가 하나님 나라와 사랑의 복음을 전파하고 십자가에 처형된 후 사도들을 통해 기독교가 전파됨.', '서구 문명과 세계 윤리관을 근본적으로 뒤바꾼 기독교의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-iron-casting-hydraulic', '두시의 수력 풀무(수배) 발명과 주철 혁신', '두시의 수력 풀무(수배) 발명과 주철 혁신', 'CHINA', '', 'SCIENCE', 'C', 31, 31, 'exact', '남양태수 두시가 물의 힘으로 용광로에 바람을 불어넣는 수배를 만들어 철기 생산 극대화.', '유럽보다 1천 년 이상 앞선 수력 야금 기술.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-lelang-han-conflict', '고구려의 낙랑군 살수(청천강) 방어선 침공', '고구려의 낙랑군 살수(청천강) 방어선 침공', 'KOREA', '', 'POLITICS', 'C', 32, 44, 'exact', '호동왕자와 낙랑공주 설화의 배경 속에서 고구려가 낙랑군을 압박하여 살수 이북 통제.', '한사군 축출을 향한 고구려의 끈질긴 남진 투쟁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-seneca-stoic', '세네카의 스토아 철학과 도덕 서간', '세네카의 스토아 철학과 도덕 서간', 'WEST', '', 'RELIGION', 'C', 40, 65, 'exact', '네로의 스승이자 정치가인 세네카가 『인생의 짧음에 관하여』 등 후기 스토아 철학 저술.', '인간의 도덕적 품격과 운명에 대한 담담한 수용 강조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-gaya-founding-suro', '금관가야 건국 (김수로왕과 허황옥)', '금관가야 건국 (김수로왕과 허황옥)', 'KOREA', '', 'POLITICS', 'A', 42, 42, 'exact', '김해 구지봉 설화와 함께 김수로왕이 가락국(금관가야)을 건국하고 인도 아유타국 공주 허황옥과 혼인.', '가야 연맹의 맹주국 탄생과 고대 국제 해상 교역망 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-claudius-britain', '클라우디우스 황제의 브리타니아 정복', '클라우디우스 황제의 브리타니아 정복', 'WEST', '', 'POLITICS', 'B', 43, 43, 'exact', '로마군이 브리튼섬을 침공하여 론디니움(런던)을 건설하고 브리타니아 속주를 설치.', '영국 브리튼 지역이 로마 문명권에 편입.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-paul-missionary', '사도 바울의 지중해 선교 여행', '사도 바울의 지중해 선교 여행', 'WEST', '', 'RELIGION', 'A', 46, 64, 'exact', '바울이 소아시아, 그리스, 로마를 순회하며 이방인에게 기독교를 전파하고 서신서(바울 서신)를 작성.', '유대교 분파를 넘어 보편적 세계 종교로 기독교를 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-iron-export-gaya', '가야·변한의 철 생산과 왜·낙랑 수출', '가야·변한의 철 생산과 왜·낙랑 수출', 'KOREA', '', 'ECONOMY', 'B', 50, 100, 'exact', '김해·창원 일대 풍부한 철광석으로 덩이쇠를 대량 제련하여 낙랑과 왜에 수출.', '고대 동아시아 철의 제국으로서 가야의 경제적 번영.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-pottery-wheel', '물레를 이용한 회청색 경질토기의 등장', '물레를 이용한 회청색 경질토기의 등장', 'KOREA', '', 'ART_CULTURE', 'C', 50, 100, 'exact', '회전 물레와 1000도 이상의 가마를 이용해 단단한 경질 도질토기 생산 시작.', '토기 제작 기술의 획기적 도약과 삼국 토기 문화의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-taejo-goguryeo', '고구려 태조대왕의 중앙집권적 영토 확장', '고구려 태조대왕의 중앙집권적 영토 확장', 'KOREA', '', 'POLITICS', 'A', 53, 100, 'exact', '계루부 고씨의 왕위 세습권을 확립하고 옥저, 동예를 복속하며 현도군·요동군을 공격.', '5부 연맹체 고구려가 확고한 중앙집권 고대 왕국으로 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce1-silla-seok-clan', '석탈해의 즉위와 박·석·김 3성 교립 체제', '석탈해의 즉위와 박·석·김 3성 교립 체제', 'KOREA', '', 'POLITICS', 'B', 57, 80, 'exact', '용성국 출신 석탈해가 이사금으로 즉위하고 김알지 설화가 나타나며 3성 교립 왕권 형성.', '신라 초기 연맹체 왕권의 다원적 발전 특성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-ming-zhang-reign', '명제·장제의 명장지치(明章之治)', '명제·장제의 명장지치(明章之治)', 'CHINA', '', 'POLITICS', 'C', 57, 88, 'exact', '부세를 감면하고 형벌을 완화하며 태학을 장려하여 후한의 황금기 구가.', '유교적 덕치주의의 모범적 통치기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-nero-fire-persecution', '로마 대화재와 네로 황제의 최초 기독교 박해', '로마 대화재와 네로 황제의 최초 기독교 박해', 'WEST', '', 'POLITICS', 'B', 64, 64, 'exact', '로마 시가지에 대화재가 발생하자 네로가 기독교인들에게 방화 혐의를 씌워 베드로, 바울을 순교시킴.', '로마 제국의 조직적 기독교 박해의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-jerusalem-siege', '제1차 유대-로마 전쟁과 예루살렘 성전 파괴', '제1차 유대-로마 전쟁과 예루살렘 성전 파괴', 'WEST', '', 'POLITICS', 'B', 66, 70, 'exact', '티투스 장군이 예루살렘을 함락하고 제2성전을 철저히 파괴함(통곡의 벽만 잔존).', '유대인들의 2천 년 디아스포라(이산)와 랍비 유대교 전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-buddhism-white-horse', '명제의 백마사 창건과 불교 공식 전래', '명제의 백마사 창건과 불교 공식 전래', 'CHINA', '', 'RELIGION', 'A', 67, 68, 'exact', '한명제가 금인(金人) 꿈을 꾼 후 서역에서 가섭마등, 축법란을 모셔와 낙양에 최초의 사찰 백마사 건립.', '불교가 중국 문화와 사상계에 공식적으로 뿌리내린 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-colosseum-built', '로마 콜로세움(플라비우스 원형극장) 완공', '로마 콜로세움(플라비우스 원형극장) 완공', 'WEST', '', 'ART_CULTURE', 'A', 70, 80, 'exact', '베스파시아누스 황제가 착공하고 티투스 황제가 완공한 5만 명 수용 규모의 거대 원형경기장.', '로마 콘크리트 아치 공학의 최고 걸작이자 제국의 위용 과시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-ban-chao-silk-road', '반초의 서역 36국 평정과 실크로드 재장악', '반초의 서역 36국 평정과 실크로드 재장악', 'CHINA', '', 'POLITICS', 'B', 73, 97, 'exact', '불입호혈 부득호자(호랑이 굴에 들어가지 않고 어찌 호랑이를 잡으랴)의 기개로 서역 50여 국 복속.', '동서 무역로의 안전 확보 및 로마 제국과의 간접 접촉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-pliny-elder', '대 플리니우스의 『박물지(Naturalis Historia)』 편찬', '대 플리니우스의 『박물지(Naturalis Historia)』 편찬', 'WEST', '', 'SCIENCE', 'C', 77, 77, 'exact', '천문, 지리, 동물, 식물, 광물, 의학을 망라한 37권의 서양 최초 백과사전.', '중세와 르네상스 자연과학의 핵심 표준 레퍼런스.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce1-vesuvius-pompeii', '베수비오 화산 폭발과 폼페이의 파멸', '베수비오 화산 폭발과 폼페이의 파멸', 'WEST', '', 'CLIMATE_ENVIRONMENT', 'A', 79, 79, 'exact', '베수비오 화산이 대폭발하여 나폴리만의 번영하던 로마 도시 폼페이와 헤르쿨라네움이 화산재에 매몰됨.', '로마 제국의 일상생활, 벽화, 건축 유적이 생생하게 보존된 고고학의 보물창고.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-ban-gu-hanshu', '반고의 『한서(漢書)』 편찬', '반고의 『한서(漢書)』 편찬', 'CHINA', '', 'ART_CULTURE', 'B', 80, 92, 'exact', '서한 230년의 역사를 단대사(斷代史) 기전체 형식으로 정리한 정사(正史) 완성.', '이후 역대 중국 왕조 정사 편찬의 절대적 표준 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-wang-chong-lunheng', '왕충의 『논형(論衡)』과 유물론적 회의주의', '왕충의 『논형(論衡)』과 유물론적 회의주의', 'CHINA', '', 'SCIENCE', 'B', 86, 86, 'exact', '당시 성행하던 참위설(도참)과 천인감응설을 비판하고 자연의 자발성과 경험적 사실을 옹호.', '고대 동양의 독보적인 합리주의·무신론 철학.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-five-good-emperors', '오현제 시대와 로마 제국의 최대 판도', '오현제 시대와 로마 제국의 최대 판도', 'WEST', '', 'POLITICS', 'A', 96, 180, 'exact', '네르바, 트라야누스, 하드리아누스, 안토니누스 피우스, 마르쿠스 아우렐리우스로 이어지는 로마의 황금기.', '팍스 로마나의 정점이자 다키아·메소포타미아 정복으로 역사상 최대 판도 달성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-gan-ying-rome-mission', '감영의 대진국(로마 제국) 파견 사절단', '감영의 대진국(로마 제국) 파견 사절단', 'CHINA', '', 'POLITICS', 'C', 97, 97, 'exact', '반초의 부하 감영이 로마 제국(대진국)을 향해 페르시아만 해안까지 도달함.', '고대 중국인이 지중해 세계에 가장 근접했던 공식 외교 탐험.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-plutarch-parallel-lives', '플루타르코스의 『영웅전(비교열전)』 편찬', '플루타르코스의 『영웅전(비교열전)』 편찬', 'WEST', '', 'ART_CULTURE', 'B', 100, 120, 'exact', '그리스와 로마의 위인 48명을 짝지어 그들의 성품과 도덕적 결단을 입체적으로 비교 서술.', '서양 전기 문학과 셰익스피어 희곡의 핵심 원천.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-shuowen-jiezi', '허신의 『설문해자(說文解字)』 완성', '허신의 『설문해자(說文解字)』 완성', 'CHINA', '', 'ART_CULTURE', 'C', 100, 121, 'exact', '9,353자의 한자를 540개 부수로 분류하고 육서(상형·지사·회의·형성·전주·가차) 원리 규명.', '동양 최초의 체계적 한자 자전(字典)이자 문자학의 기초.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce1-cai-lun-paper', '채륜의 실용 제지술 완성 및 보급', '채륜의 실용 제지술 완성 및 보급', 'CHINA', '', 'SCIENCE', 'A', 105, 105, 'exact', '나무껍질, 마, 넝마, 어망을 이용해 가볍고 질긴 ''채후지(蔡侯紙)''를 제조하여 대량 생산 성공.', '세계 문자 문명과 지식 전파에 가장 위대한 혁신.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('paper-invention-cailun', '채륜의 제지술 개량 및 보급', 'Invention of Paper by Cai Lun', 'CHINA', '후한', 'SCIENCE', 'A', 105, 105, 'exact', '후한의 채륜이 식물 섬유를 이용해 실용적인 종이를 제조하는 제지술을 완성하여 지식 전파의 혁명을 촉발함.', '죽간과 양피지를 대체하여 문자와 학문의 보급을 극대화했으며, 탈라스 전투를 거쳐 아랍과 유럽으로 전파됨.', '기록 매체(비단, 죽간)의 비효율성과 행정 문서 수요 폭증.', '한반도, 일본, 이슬람, 유럽으로 전파되어 세계 문자 문명의 도약.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-trajan-column', '트라야누스 원주 축조', '트라야누스 원주 축조', 'WEST', '', 'ART_CULTURE', 'C', 113, 113, 'exact', '다키아 전쟁 승리를 기념하여 30m 높이의 대리석 원주 표면에 2,500명의 인물이 등장하는 나선형 부조 조각.', '로마 군사 장비와 전쟁사의 생생한 시각적 기록.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-baekje-dogang-trade', '백제의 대중국(후한) 및 서해 해상 교역', '백제의 대중국(후한) 및 서해 해상 교역', 'KOREA', '', 'ECONOMY', 'C', 113, 170, 'exact', '남양만 한성 포구를 통해 후한과 사신을 교환하고 도자기와 견직물 수입.', '서해안 해양 국가로서 백제의 대외 통교망 발전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-hadrian-wall', '하드리아누스 성벽 축조', '하드리아누스 성벽 축조', 'WEST', '', 'INSTITUTION', 'A', 122, 128, 'exact', '브리타니아 북부에 117km 길이의 석조 방어벽을 쌓아 픽트족 등 켈트 부족의 침입 차단.', '공세적 팽창에서 제국 국경선 안정화(리메스)로의 전략 대전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-pantheon-rebuilt', '로마 판테온(Pantheon) 신전 재건', '로마 판테온(Pantheon) 신전 재건', 'WEST', '', 'ART_CULTURE', 'B', 125, 128, 'exact', '하드리아누스 황제가 직경 43.3m의 거대한 무근 콘크리트 돔과 오쿨루스(천창)를 가진 만신전 완공.', '고대 로마 건축 공학의 최고봉이자 돔 건축의 원형.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-baekje-chogo-campaign', '백제 개루왕·초고왕의 한강 유역 패권 강화', '백제 개루왕·초고왕의 한강 유역 패권 강화', 'KOREA', '', 'POLITICS', 'A', 128, 200, 'exact', '북한산성을 축조하고 말갈의 침입을 격퇴하며 신라와 소백산맥 국경에서 치열하게 공방전 전개.', '백제의 군사적 전성기 진입을 위한 북방·남방 방어선 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-zhang-heng-seismoscope', '장형의 지진계(지동의)와 혼천의 발명', '장형의 지진계(지동의)와 혼천의 발명', 'CHINA', '', 'SCIENCE', 'A', 132, 132, 'exact', '용의 입에서 구슬이 떨어져 지진 발생 방향을 감지하는 세계 최초의 후풍지동의 제작.', '고대 정밀 기계 공학과 지진 관측의 기적적 성취.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-chadae-tyranny', '고구려 차대왕의 폭정과 신대왕의 옹립', '고구려 차대왕의 폭정과 신대왕의 옹립', 'KOREA', '', 'POLITICS', 'C', 146, 165, 'exact', '차대왕이 신하들을 숙청하고 폭정을 펴다 명림답부에게 시해되고 신대왕이 즉위.', '고구려 최초의 귀족 정변이자 국상 직제 신설 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-ptolemy-almagest', '프톨레마이오스의 『알마게스트』와 천동설', '프톨레마이오스의 『알마게스트』와 천동설', 'WEST', '', 'SCIENCE', 'A', 150, 150, 'exact', '주전원과 이심원 모델을 이용해 지구 중심의 지구 중심 천문학 체계 완성.', '코페르니쿠스 이전까지 서양 천문관의 확고부동한 기준.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-iron-armor-gaya', '가야 판갑(종장판판갑)과 말투구의 정교한 제작', '가야 판갑(종장판판갑)과 말투구의 정교한 제작', 'KOREA', '', 'SCIENCE', 'B', 150, 200, 'exact', '통철판을 인체 곡선에 맞게 두드려 만든 판갑옷과 마구(말갑옷)를 생산.', '고대 동아시아 최고의 중장기병 무구 제작 기술 과시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-silla-gold-crown-origin', '신라 적석목곽분(돌무지덧널무덤)의 태동', '신라 적석목곽분(돌무지덧널무덤)의 태동', 'KOREA', '', 'ART_CULTURE', 'C', 150, 200, 'exact', '경주 평야에 목관 주위에 냇돌을 높이 쌓고 흙을 덮는 거대한 봉토분 축조 시작.', '도굴이 불가능한 구조로 신라 황금 유물의 온전한 보존 바탕.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-silla-adalla-expansion', '신라 아달라이사금의 소백산맥 도로 개척 (죽령·계립령)', '신라 아달라이사금의 소백산맥 도로 개척 (죽령·계립령)', 'KOREA', '', 'INSTITUTION', 'A', 156, 158, 'exact', '경북과 충북을 연결하는 험준한 산악 관문 죽령(158)과 계립령(156)을 개척하여 교통로 확보.', '신라의 북방 진출 및 소백산맥 방어선 구축의 핵심 통로 마련.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-silla-wa-conflict', '신라의 왜구 침입 격퇴와 연오랑 세오녀 전승', '신라의 왜구 침입 격퇴와 연오랑 세오녀 전승', 'KOREA', '', 'POLITICS', 'B', 157, 193, 'exact', '영일만에서 일본으로 건너간 연오랑 세오녀 설화와 왜인의 동해안 침략에 맞선 수비전.', '고대 한일 해상 교류와 일월신화의 역사적 반영.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-galen-medicine', '갈레노스의 의학 체계 집대성', '갈레노스의 의학 체계 집대성', 'WEST', '', 'SCIENCE', 'A', 160, 200, 'exact', '동물 해부와 4체액설을 바탕으로 해부학, 생리학, 약리학의 거대한 체계를 수립.', '1500년간 중세 유럽과 이슬람 의학의 절대적 표준.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-antonine-plague', '안토니누스 역병(로마 천연두 대유행)', '안토니누스 역병(로마 천연두 대유행)', 'WEST', '', 'CLIMATE_ENVIRONMENT', 'B', 165, 180, 'exact', '동방 원정군을 통해 유입된 천연두 역병으로 제국 인구의 10~20%가 사망하고 경제 마비.', '로마 제국 번영의 종말과 3세기 위기의 인구학적 전조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-partisans-disaster', '당고의 화(黨錮之禍)', '당고의 화(黨錮之禍)', 'CHINA', '', 'POLITICS', 'A', 166, 169, 'exact', '십상시 등 환관 세력이 정권을 비판하던 이응 등 청류파 관료와 태학생 수천 명을 투옥·학살.', '후한 중앙 정치의 치명적 부패와 지식인-환관 파벌 갈등 극대화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-marcomannic-wars', '마르코만니 전쟁과 게르만족 압박', '마르코만니 전쟁과 게르만족 압박', 'WEST', '', 'POLITICS', 'C', 166, 180, 'exact', '다뉴브강을 건너 침입한 마르코만니족, 콰디족에 맞서 마르쿠스 아우렐리우스가 친정하여 격퇴.', '게르만족 대이동의 최초의 거대한 경고음.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce2-marcus-aurelius-meditations', '마르쿠스 아우렐리우스의 『명상록』', '마르쿠스 아우렐리우스의 『명상록』', 'WEST', '', 'RELIGION', 'A', 170, 180, 'exact', '게르마니아 전선 막사에서 황제이자 철학자가 기록한 스토아 철학의 자기 성찰록.', '서양 철인 통치자의 이상과 인간 내면 수양의 최고 고전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-xiping-stone-classics', '희평석경(熹平石經) 음각과 경전 표준화', '희평석경(熹平石經) 음각과 경전 표준화', 'CHINA', '', 'ART_CULTURE', 'B', 175, 183, 'exact', '채옹의 글씨로 유교 7대 경전을 46개의 거대한 석판에 새겨 낙양 태학 앞에 전시.', '문자 왜곡을 방지한 국가 공인 정본 표준화와 서예 예술 발전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-gogukcheon-patrilineal', '고구려 왕위 부자상속제 확립 및 5부 행정구역화', '고구려 왕위 부자상속제 확립 및 5부 행정구역화', 'KOREA', '', 'INSTITUTION', 'A', 180, 197, 'exact', '형제상속에서 부자상속으로 왕위를 안정화하고 전통 5부족(소노부·계루부 등)을 동·서·남·북·중 5방위 행정구로 개편.', '부족적 색채 탈피와 강력한 중앙집권 관료 국가 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-hua-tuo-surgery', '화타의 마취약 마비산과 외과 수술', '화타의 마취약 마비산과 외과 수술', 'CHINA', '', 'SCIENCE', 'B', 180, 208, 'exact', '약초 마취제 마비산을 복용시키고 복부 절개 수술을 집도하였으며 오금희(체조) 창안.', '동양 외과의 시조이자 예방 의학의 선구.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-yellow-turban-rebellion', '황건적의 난 (태평도 봉기)', '황건적의 난 (태평도 봉기)', 'CHINA', '', 'POLITICS', 'A', 184, 184, 'exact', '장각이 ''창천이사 황천당립''을 외치며 수십만 농민을 규합해 일으킨 종교적 대봉기.', '후한 조정의 통제력 붕괴 및 삼국시대 군웅할거 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-dong-zhuo-luoyang', '동탁의 권력 장악과 낙양 방화', '동탁의 권력 장악과 낙양 방화', 'CHINA', '', 'POLITICS', 'A', 189, 190, 'exact', '서량 군벌 동탁이 소제를 폐위하고 헌제를 옹립하며 낙양을 불태우고 장안으로 강제 천도.', '400년 한 왕조의 실질적 멸망과 전국적 내전 돌입.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-eulpaso-prime-minister', '을파소 등용과 고구려 능력 중심 인재 선발', '을파소 등용과 고구려 능력 중심 인재 선발', 'KOREA', '', 'POLITICS', 'B', 191, 191, 'exact', '농사짓던 평민 출신 을파소를 국상(총리)에 전격 발탁하여 귀족 연좌 반발을 누르고 개혁 단행.', '귀족 귀족제 극복과 능력주의 인사 행정의 귀감.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-cao-cao-warlord', '조조의 연주 장악과 관도대전 준비', '조조의 연주 장악과 관도대전 준비', 'CHINA', '', 'POLITICS', 'B', 192, 200, 'exact', '조조가 둔전제를 실시하여 경제력을 확보하고 헌제를 영립하여 ''협천자이령제후'' 명분 확립.', '조위 정권 수립과 중원 통일의 초석.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce2-gogukcheon-jindae', '고구려 고국천왕의 진대법(춘궁기 춘대추납) 실시', '고구려 고국천왕의 진대법(춘궁기 춘대추납) 실시', 'KOREA', '', 'INSTITUTION', 'A', 194, 194, 'exact', '국상 을파소의 건의로 봄에 관곡을 빌려주고 가을에 갚게 하는 빈민 구제 제도 시행.', '세계 역사상 가장 이른 시기의 국가적 사회복지 제도로 자영농 몰락 방지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-zhang-zhongjing-shanghan', '장중경의 『상한잡병론』 편찬', '장중경의 『상한잡병론』 편찬', 'CHINA', '', 'SCIENCE', 'B', 195, 200, 'exact', '전염병과 내과 질환을 변증론치(체계적 진단과 처방)로 정리한 의성(醫聖)의 명저.', '한의학 임상 처방학의 영원한 바이블.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce2-tuntian-system', '조조의 민둔·군둔(둔전제) 창설', '조조의 민둔·군둔(둔전제) 창설', 'CHINA', '', 'INSTITUTION', 'C', 196, 196, 'exact', '유민과 군인들을 조직하여 황폐화된 농토를 개간하고 수확량의 50~60%를 군량으로 확보.', '전란기 농업 재건과 군벌 생존의 획기적 제도.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-red-cliffs-battle', '적벽대전 (208년)', '적벽대전 (208년)', 'CHINA', '', 'POLITICS', 'A', 208, 208, 'exact', '손권·유비 연합군이 화공(火攻)으로 조조의 80만 대군을 양쯔강 적벽에서 격파함.', '조조의 천하 통일 좌절 및 위·촉·오 삼국 정립의 결정적 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-silla-yurye-posang-war', '포상팔국의 난과 가야·신라의 공방', '포상팔국의 난과 가야·신라의 공방', 'KOREA', '', 'POLITICS', 'B', 209, 212, 'exact', '남해안 8개 소국(포상팔국)이 금관가야를 공격하자 신라 물계자 장군 등이 구원병을 파견해 격퇴.', '낙동강 하류 제철 무역권을 둘러싼 남부 연맹체들의 대전쟁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-caracalla-citizenship', '카라칼라 황제의 안토니누스 칙령 (전 제국민 시민권 부여)', '카라칼라 황제의 안토니누스 칙령 (전 제국민 시민권 부여)', 'WEST', '', 'INSTITUTION', 'A', 212, 212, 'exact', '제국 영내의 모든 자유민에게 로마 시민권을 일괄 부여함.', '로마 시민과 속주민의 법적 경계를 철폐하고 세수 확충 도모.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-baths-of-caracalla', '카라칼라 대욕장 완공', '카라칼라 대욕장 완공', 'WEST', '', 'ART_CULTURE', 'C', 216, 216, 'exact', '체육관, 도서관, 온탕·냉탕을 갖춘 1,600명 수용의 거대 복합 공공 레저 시설 완공.', '로마 제국의 고도 복지 인프라와 배관 공학의 집약체.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-nine-rank-system', '구품관인법(구품중정제) 실시', '구품관인법(구품중정제) 실시', 'CHINA', '', 'INSTITUTION', 'A', 220, 220, 'exact', '진군의 건의로 중정관이 인재를 9등급으로 평가해 관직에 천거하는 제도 도입.', '문벌 귀족 가문이 고위 관직을 독점하는 ''상품무한문 하품무세족'' 사회 고착화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-three-kingdoms-period', '삼국시대 (위·촉·오 3국 정립)', '삼국시대 (위·촉·오 3국 정립)', 'CHINA', '', 'POLITICS', 'A', 220, 280, 'exact', '조비의 위 건국, 유비의 촉한 건국, 손권의 오 건국으로 중국이 세 나라로 분립하여 패권 다툼.', '동아시아 문학·전략·문화의 영원한 테마인 삼국지 시대.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-sassanian-empire-rise', '아르다시르 1세의 사산조 페르시아 건국', '아르다시르 1세의 사산조 페르시아 건국', 'WEST', '', 'POLITICS', 'B', 224, 226, 'exact', '파르티아를 멸망시키고 조로아스터교를 국교로 삼은 강력한 중앙집권 제국 건국.', '로마와 400년간 대적할 중동 패권국 등장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-zhuge-liang-expeditions', '제갈량의 북벌과 출사표', '제갈량의 북벌과 출사표', 'CHINA', '', 'POLITICS', 'B', 227, 234, 'exact', '촉한의 승상 제갈량이 한실 부흥을 위해 5차례 기산 북벌을 감행하다 오장원에서 병사.', '충의와 헌신의 불멸의 상징이자 명문 『출사표』 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-crisis-third-century', '로마 3세기의 위기 (군인 황제 시대)', '로마 3세기의 위기 (군인 황제 시대)', 'WEST', '', 'POLITICS', 'A', 235, 284, 'exact', '50년간 26명의 황제가 군단에 의해 난립하고 살해당하며 제국이 갈리아·팔미라로 분열됨.', '로마 제국 역사상 최대의 정치적·군사적 붕괴 위기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-manichaeism-origin', '예언자 마니의 마니교(Manichaeism) 창시', '예언자 마니의 마니교(Manichaeism) 창시', 'WEST', '', 'RELIGION', 'C', 240, 276, 'exact', '빛과 어둠의 이원론을 바탕으로 조로아스터교, 기독교, 불교를 융합한 세계 종교 전파.', '지중해에서 중국 실크로드까지 널리 퍼진 이원론 종교.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-seven-sages-bamboo', '죽림칠현(竹林七賢)과 청담사상(현학)', '죽림칠현(竹林七賢)과 청담사상(현학)', 'CHINA', '', 'ART_CULTURE', 'B', 240, 280, 'exact', '완적, 혜강 등 7명의 문인이 대나무 숲에 모여 부패한 정치를 비판하고 노장 사상과 거문고를 즐김.', '위진 현학(玄學)과 문인 예술의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-goguryeo-dongcheon-guanqiu', '고구려 동천왕과 위나라 관구검의 침략', '고구려 동천왕과 위나라 관구검의 침략', 'KOREA', '', 'POLITICS', 'A', 244, 246, 'exact', '위나라 유주자사 관구검이 환도성을 함락시켰으나 밀우와 유유의 결사대로 반격하여 격퇴.', '고구려가 국가적 존망의 위기를 극복하고 도성을 재건.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-plotinus-neoplatonism', '플로티노스의 신플라톤주의 철학과 일자(The One) 사상', '플로티노스의 신플라톤주의 철학과 일자(The One) 사상', 'WEST', '', 'RELIGION', 'B', 244, 270, 'exact', '만물이 궁극적 근원인 ''일자(To Hen)''로부터 유출된다는 영성적 형이상학 『엔네아데스』 저술.', '기독교 신학(아우구스티누스)과 이슬람 신비주의에 심대한 영향.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-baekje-han-river-supremacy', '백제 고이왕의 한강 유역 완전 장악과 마한 병합 가속', '백제 고이왕의 한강 유역 완전 장악과 마한 병합 가속', 'KOREA', '', 'POLITICS', 'A', 246, 280, 'exact', '낙랑군과 대방군의 침입을 기리영 전투에서 격퇴하고 경기·충청 일대 마한 소국들을 흡수.', '백제가 한반도의 주도적 맹주국으로 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-baekje-earthen-wall', '풍납토성 및 몽촌토성 대규모 축조', '풍납토성 및 몽촌토성 대규모 축조', 'KOREA', '', 'INSTITUTION', 'C', 250, 300, 'exact', '한강변에 수백만 명의 인력을 동원한 둘레 3.5km, 높이 11m의 거대한 판축 토성 축조.', '초기 백제 한성(위례성) 왕도의 웅장한 규모 실증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-gaya-iron-export-peak', '김해 대성동 고분군 조성과 금관가야 번영', '김해 대성동 고분군 조성과 금관가야 번영', 'KOREA', '', 'ART_CULTURE', 'C', 250, 300, 'exact', '수십 자루의 덩이쇠, 오리모양 토기, 통형동기가 부장된 가야 왕족 고분군 축조.', '동북아 해상 철 무역의 중심지 금관가야의 위세 과시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-goguryeo-gwannu-tomb', '고구려 안악 3호분 벽화의 기원 형성', '고구려 안악 3호분 벽화의 기원 형성', 'KOREA', '', 'ART_CULTURE', 'C', 250, 300, 'exact', '석실봉토분에 일상생활과 행렬도를 그리는 독창적 고분 벽화 미술 태동.', '고구려 귀족 문화와 복식의 귀중한 시각 사료.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-sassanid-valerian-capture', '에데사 전투와 발레리아누스 황제 포로 사건', '에데사 전투와 발레리아누스 황제 포로 사건', 'WEST', '', 'POLITICS', 'A', 260, 260, 'exact', '사산조 페르시아의 샤푸르 1세에게 로마 황제 발레리아누스가 사로잡히는 초유의 치욕 발생.', '사산조 페르시아의 초강대국 부상과 로마의 굴욕.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-baekje-goi-reforms', '백제 고이왕의 6좌평 16관등제 및 율령 반포', '백제 고이왕의 6좌평 16관등제 및 율령 반포', 'KOREA', '', 'INSTITUTION', 'A', 260, 262, 'exact', '6좌평과 16품 관등, 공복(자·비·청색)을 제정하고 뇌물을 받은 관리를 3배로 징벌하는 법령 반포.', '백제가 삼국 중 가장 먼저 체계적인 중앙집권 관료 국가 체제를 완성함.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-silla-michu-kim-monarchy', '신라 미추이사금 즉위 (경주 김씨 최초의 국왕)', '신라 미추이사금 즉위 (경주 김씨 최초의 국왕)', 'KOREA', '', 'POLITICS', 'A', 262, 284, 'exact', '김알지의 후손 미추가 이사금으로 즉위하며 백성을 위무하고 농업을 장려(대릉원 미추왕릉).', '후대 신라 왕실을 독점하는 김씨 왕권의 첫 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-liu-hui-pi-calculation', '유휘의 원주율(할원술) 계산', '유휘의 원주율(할원술) 계산', 'CHINA', '', 'SCIENCE', 'B', 263, 263, 'exact', '원에 내접하는 3,072각형을 이용해 원주율을 3.1416으로 정밀 계산하고 『구장산술주』 저술.', '극한과 미적분 개념을 선취한 동양 수학의 쾌거.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-western-jin-unification', '사마염의 서진(西晉) 건국과 삼국 통일', '사마염의 서진(西晉) 건국과 삼국 통일', 'CHINA', '', 'POLITICS', 'A', 265, 280, 'exact', '사마염이 위나라를 찬탈하여 서진을 세우고 280년 오나라를 멸망시켜 천하를 재통일함.', '60년간의 삼국 분열 종식 및 잠시 동안의 평화 회복.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-pei-xiu-cartography', '배수의 지도 제작 6체(제도육체) 정립', '배수의 지도 제작 6체(제도육체) 정립', 'CHINA', '', 'SCIENCE', 'C', 267, 271, 'exact', '축척, 방격(격자망), 방위, 고저, 경사, 곡직을 고려한 정밀 지도 제작 이론 확립.', '동양 과학 지도학의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-aurelian-restorer', '아우렐리아누스의 제국 재통합과 로마 성벽 축조', '아우렐리아누스의 제국 재통합과 로마 성벽 축조', 'WEST', '', 'POLITICS', 'A', 270, 275, 'exact', '분리 독립한 갈리아 제국과 팔미라 제국의 제노비아 여왕을 평정하고 로마 시를 방어하는 19km 아우렐리아누스 성벽 완공.', '''세계의 복원자(Restitutor Orbis)'' 칭호 획득.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-goguryeo-seocheon-sushen', '고구려 서천왕의 숙신 정벌과 달가 장군', '고구려 서천왕의 숙신 정벌과 달가 장군', 'KOREA', '', 'POLITICS', 'B', 280, 280, 'exact', '왕제 달가가 북방 만주의 숙신(말갈)을 정벌하여 단로성을 함락하고 600여 가구를 남쪽으로 사민.', '북방 유목 부족에 대한 고구려의 확고한 종주권 장악.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-diocletian-tetrarchy', '디오클레티아누스의 사두정치(4분 통치제) 도입', '디오클레티아누스의 사두정치(4분 통치제) 도입', 'WEST', '', 'INSTITUTION', 'A', 284, 300, 'exact', '제국을 동·서로 나누고 정제(아우구스투스)와 부제(카이사르) 4인이 분할 통치하며 전제군주정(도미나투스) 확립.', '3세기 위기를 종식시키고 제국의 수명을 200년 연장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-sanguozhi-chen-shou', '진수의 『삼국지(三國志)』 편찬', '진수의 『삼국지(三國志)』 편찬', 'CHINA', '', 'ART_CULTURE', 'C', 285, 290, 'exact', '위서, 촉서, 오서로 구성된 65권의 정사 역사서 완성(동이전 포함).', '고대 한국사(고구려·백제·부여·삼한) 연구의 가장 중요한 1차 사료.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce3-baekje-daebang-marriage', '백제 책계왕과 대방군 공주의 정략결혼', '백제 책계왕과 대방군 공주의 정략결혼', 'KOREA', '', 'POLITICS', 'B', 286, 298, 'exact', '대방 태수의 딸 보과와 혼인하여 동맹을 맺고 고구려의 남진을 아차산성·사성에서 방어.', '삼국의 복잡한 국제 외교전 전개.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce3-eight-princes-war', '팔왕의 난(八王之亂)', '팔왕의 난(八王之亂)', 'CHINA', '', 'POLITICS', 'A', 291, 306, 'exact', '서진 황실 사마씨 8명의 제후왕들이 황권을 둘러싸고 16년간 골육상쟁 내전을 벌임.', '서진의 국력 완전 파탄 및 5호 16국 시대(이민족 남하)의 문을 연 비극.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce3-great-persecution-diocletian', '디오클레티아누스의 대박해 칙령', '디오클레티아누스의 대박해 칙령', 'WEST', '', 'RELIGION', 'B', 303, 305, 'exact', '기독교 교회를 파괴하고 성경을 소각하며 배교하지 않는 신자들을 처형하는 최후 최대의 박해.', '로마 제국 이교 신앙의 마지막 저항이자 기독교 공인의 직전 단계.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-monasticism-anthony', '성 안토니우스와 이집트 사막 수도원 운동', '성 안토니우스와 이집트 사막 수도원 운동', 'WEST', '', 'RELIGION', 'C', 305, 356, 'exact', '세속을 떠나 사막에서 금욕과 기도로 살아가는 은수자 수도 생활 창시.', '기독교 수도원 제도의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-uprising-five-barbarians', '영가의 난과 5호 16국 시대 개막', '영가의 난과 5호 16국 시대 개막', 'CHINA', '', 'POLITICS', 'A', 311, 316, 'exact', '흉노의 유연·유총이 낙양과 장안을 함락하고 서진을 멸망시킴.', '화북(중원)이 이민족의 지배하에 들어가고 동진(남조)이 강남으로 피난하는 남북조 분열의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-edict-of-milan', '밀라노 칙령 (기독교 공인)', '밀라노 칙령 (기독교 공인)', 'WEST', '', 'RELIGION', 'A', 313, 313, 'exact', '콘스탄티누스 1세와 리키니우스가 기독교 신앙의 자유를 보장하고 몰수된 교회 재산 반환.', '기독교가 로마 제국의 합법 종교로 승인받은 세계사적 분기점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-micheon-lelang-expulsion', '고구려 미천왕의 낙랑군·대방군 완전 축출', '고구려 미천왕의 낙랑군·대방군 완전 축출', 'KOREA', '', 'POLITICS', 'B', 313, 314, 'exact', '한사군의 마지막 거점인 낙랑군(313)과 대방군(314)을 무력으로 소멸시키고 영토 회복.', '400여 년에 걸친 중국 한사군 세력을 한반도에서 완전히 몰아냄.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-eastern-jin-founding', '사마예의 동진(東晉) 건국과 왕·사 가문 귀족 정치', '사마예의 동진(東晉) 건국과 왕·사 가문 귀족 정치', 'CHINA', '', 'POLITICS', 'A', 317, 317, 'exact', '건강(난징)에 도읍하고 왕도·사안 등 북방 한족 망명 귀족들의 협력으로 남방 왕조 유지.', '강남 경제 개발과 육조(六朝) 귀족 문화의 번영.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-ge-hong-baopuzi', '갈홍의 『포박자(抱朴子)』와 도교 연단술', '갈홍의 『포박자(抱朴子)』와 도교 연단술', 'CHINA', '', 'SCIENCE', 'C', 317, 330, 'exact', '불로장생의 외단(연단술) 제조법과 침술, 민간 의학 처방을 결합한 도교 백과사전.', '고대 동양 화학·약리학 지식의 보고.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-council-of-nicaea', '제1차 니케아 공의회 (아타나시오스 삼위일체론 확립)', '제1차 니케아 공의회 (아타나시오스 삼위일체론 확립)', 'WEST', '', 'RELIGION', 'A', 325, 325, 'exact', '300여 명의 주교가 모여 아리우스파(예수 피조물론)를 이단으로 규정하고 아타나시오스의 삼위일체 교리 채택.', '정통 기독교 신앙고백(니케아 신경)의 공식 제정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-constantinople-capital', '콘스탄티노폴리스 천도', '콘스탄티노폴리스 천도', 'WEST', '', 'POLITICS', 'A', 330, 330, 'exact', '콘스탄티누스 1세가 보스포루스 해협의 비잔티움으로 수도를 옮기고 ''새로운 로마''로 선포.', '천년 비잔틴(동로마) 제국의 탄생과 지중해 동서 분열 가속.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-geunchogo-peak', '백제 근초고왕의 전성기 (마한 전역 복속·평양성 승리)', '백제 근초고왕의 전성기 (마한 전역 복속·평양성 승리)', 'KOREA', '', 'POLITICS', 'A', 346, 375, 'exact', '마한을 완전 병합하고 가야에 영향력을 행사하며, 평양성을 공격해 고국원왕을 전사시키고 황해도 일대 장악.', '백제의 최대 전성기이자 동아시아 해상 제국 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-daeseongdong-iron-cuirass', '김해 대성동·복천동 가야 중장기병 무덤군', '김해 대성동·복천동 가야 중장기병 무덤군', 'KOREA', '', 'ART_CULTURE', 'C', 350, 400, 'exact', '말투구, 말갑옷, 삼지창, 가야 토기가 부장된 거대한 덧널무덤 유적군 번성.', '가야 제철 문명의 찬란한 전성기 실증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-wang-xizhi-calligraphy', '왕희지의 난정서(蘭亭序)와 서예 예술의 최고봉', '왕희지의 난정서(蘭亭序)와 서예 예술의 최고봉', 'CHINA', '', 'ART_CULTURE', 'A', 353, 353, 'exact', '난정 모임에서 행서체로 즉흥 작성한 『난정집서』가 ''천하제일행서''로 칭송받음.', '서성(書聖) 왕희지에 의한 동양 서예 미학의 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-silla-naemul-maripgan', '신라 내물마립간의 김씨 왕위 세습과 마립간 칭호', '신라 내물마립간의 김씨 왕위 세습과 마립간 칭호', 'KOREA', '', 'INSTITUTION', 'A', 356, 402, 'exact', '''대군장''을 뜻하는 마립간 칭호를 사용하고 김씨의 왕위 독점 세습 체제 확립.', '이사금 시대의 연맹체를 넘어 중앙집권 고대 왕국으로 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-julian-apostate', '율리아누스 황제의 배교와 이교 부흥 시도', '율리아누스 황제의 배교와 이교 부흥 시도', 'WEST', '', 'POLITICS', 'C', 361, 363, 'exact', '신플라톤주의를 신봉하며 로마 전통 다신교 부활을 꾀했으나 페르시아 원정 중 전사.', '고대 로마 전통 이교 문화의 마지막 불꽃.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-dunhuang-mogao-caves', '돈황 막고굴 개착 시작', '돈황 막고굴 개착 시작', 'CHINA', '', 'ART_CULTURE', 'C', 366, 366, 'exact', '낙준 스님이 명사산 절벽에 첫 석굴을 파고 불상을 모시기 시작함.', '천 년간 지속될 세계 최대의 불교 미술 보고 조성 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-baekje-maritime-network', '백제의 요서 진출설과 왜(야마토) 칠지도 하사', '백제의 요서 진출설과 왜(야마토) 칠지도 하사', 'KOREA', '', 'POLITICS', 'A', 369, 372, 'exact', '중국 동진과 외교를 맺고 요서 분진설을 남겼으며 왜왕에게 상감 금상감의 칠지도(七支刀) 하사.', '백제-가야-왜-동진을 잇는 동아시아 해상 네트워크 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-sosurim-reforms', '고구려 소수림왕의 3대 국가 개혁 (불교 공인·태학 설립·율령 반포)', '고구려 소수림왕의 3대 국가 개혁 (불교 공인·태학 설립·율령 반포)', 'KOREA', '', 'INSTITUTION', 'A', 371, 384, 'exact', '전진 순도로부터 불교 수용(372), 최고 국립 교육기관 태학 설립(372), 율령 반포(373).', '국가 위기를 수습하고 광개토대왕 전성기를 가능하게 한 체제 정비.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-baekje-seogi-history', '백제 고흥의 역사서 『서기(書記)』 편찬', '백제 고흥의 역사서 『서기(書記)』 편찬', 'KOREA', '', 'ART_CULTURE', 'C', 375, 375, 'exact', '근초고왕의 명을 받아 박사 고흥이 백제 최초의 국사 편찬.', '전성기 백제 왕실의 정통성과 문화적 자부심 과시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-huns-invasion-europe', '훈족의 유럽 침입과 게르만족 대이동 개막', '훈족의 유럽 침입과 게르만족 대이동 개막', 'WEST', '', 'POLITICS', 'A', 375, 375, 'exact', '중앙아시아 유목민 훈족이 흑해 연안 동고트족을 굴복시키자 서고트족이 도나우강을 건너 로마 영내로 대탈출.', '서로마 제국 멸망과 서유럽 민족 지도 재편의 도화선.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-battle-of-adrianople', '하드리아노폴리스 전투 (발렌스 황제 전사)', '하드리아노폴리스 전투 (발렌스 황제 전사)', 'WEST', '', 'POLITICS', 'A', 378, 378, 'exact', '서고트족 중기병이 로마 군단을 포위 섬멸하고 발렌스 황제가 전사함.', '게르만족 대이동의 본격화와 로마 군단 중심 군사 체제의 붕괴.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-theodosius-state-religion', '테오도시우스 1세의 기독교 국교화 선포 (테살로니카 칙령)', '테오도시우스 1세의 기독교 국교화 선포 (테살로니카 칙령)', 'WEST', '', 'RELIGION', 'A', 380, 391, 'exact', '기독교를 로마 제국의 유일한 국교로 선포하고 올림픽 경기와 모든 이교 제사를 전면 금지.', '서양 중세 기독교 세계(Christendom)의 제도적 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-gu-kaizhi-painting', '고개지의 『여사잠도』와 중국 인물화의 개조', '고개지의 『여사잠도』와 중국 인물화의 개조', 'CHINA', '', 'ART_CULTURE', 'B', 380, 405, 'exact', '형상으로 정신을 전한다(이형전신)는 원리를 정립하고 유려한 선묘(춘잠토사)로 인물화 창작.', '중국 회화 이론과 고전 인물화의 원조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-vulgate-bible-jerome', '히에로니무스(제롬)의 라틴어 성경(불가타) 번역', '히에로니무스(제롬)의 라틴어 성경(불가타) 번역', 'WEST', '', 'RELIGION', 'B', 382, 405, 'exact', '히브리어와 그리스어 성경 원전을 대중 라틴어로 번역 완성.', '천 년간 가톨릭 교회의 공식 표준 성경.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-battle-of-feishui', '비수대전(淝水之戰)', '비수대전(淝水之戰)', 'CHINA', '', 'POLITICS', 'A', 383, 383, 'exact', '전진(前秦) 부견의 80만 대군을 동진의 사현이 이끄는 8만 북부군이 비수에서 기적적으로 궤멸시킴.', '북방의 조기 통일 무산 및 남북 대치 구도 200년 연장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-baekje-buddhism-marananta', '백제 침류왕의 불교 공인 (마라난타 전래)', '백제 침류왕의 불교 공인 (마라난타 전래)', 'KOREA', '', 'RELIGION', 'B', 384, 384, 'exact', '동진에서 온 인도 승려 마라난타를 맞이하여 궁궐에서 불교를 공인하고 한산에 사찰 창건.', '백제 지배층의 사상적 통합과 세련된 불교 문화 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-kumarajiva-translation', '구마라습(쿠마라지바)의 불경 번역 혁명', '구마라습(쿠마라지바)의 불경 번역 혁명', 'CHINA', '', 'RELIGION', 'A', 385, 413, 'exact', '서역 구자국 승려 구마라습이 장안에서 『금강경』, 『묘법연화경』, 『대지도론』 등 방대한 산스크리트 경전을 유려한 한문으로 번역.', '대승불교 사상이 동아시아 사상계의 주류로 정착하는 결정적 공헌.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce4-augustine-conversion', '아우구스티누스의 회심과 신학 정립', '아우구스티누스의 회심과 신학 정립', 'WEST', '', 'RELIGION', 'B', 386, 397, 'exact', '마니교에서 기독교로 회심하고 『고백록(Confessions)』을 저술하여 은총론과 원죄론 확립.', '서양 기독교 사상의 최고 교부이자 서구 철학의 기둥.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-northern-wei-founding', '탁발규의 북위(北魏) 건국과 평성 천도', '탁발규의 북위(北魏) 건국과 평성 천도', 'CHINA', '', 'POLITICS', 'B', 386, 398, 'exact', '선비족 탁발규가 대나라를 재건하여 북위로 국호를 바꾸고 평성(다퉁)에 도읍.', '이후 화북을 통일하고 효문제 한화 개혁을 이끌 제국의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-gwanggaeto-ascension', '광개토대왕의 즉위와 독자 연호 ''영락(永樂)'' 선포', '광개토대왕의 즉위와 독자 연호 ''영락(永樂)'' 선포', 'KOREA', '', 'POLITICS', 'A', 391, 400, 'exact', '18세에 즉위하여 독자 연호 영락을 반포하고 백제를 굴복시키며 후연과 거란을 대토벌.', '자주적 천하관(천손 의식)을 선포하고 동방 대제국 건설 착수.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('three-kingdoms-korea-flourishing', '삼국시대의 정립과 영토 확장 (광개토대왕)', 'Three Kingdoms of Korea & King Gwanggaeto', 'KOREA', '고구려/백제/신라', 'POLITICS', 'A', 391, 412, 'exact', '고구려 광개토대왕의 대규모 정복 활동으로 만주와 한반도 중북부를 아우르는 대제국을 건설하고 독자 연호(영락)를 사용함.', '동북아의 강국으로서 고구려의 위상을 확립하고 백제, 신라와의 삼국 경쟁을 가속화함.', '소수림왕의 율령 반포, 불교 공인, 태학 설립 등 체제 정비 완료.', '장수왕의 평양 천도와 백제 한성 함락, 남진 정책으로 이어짐.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce4-fa-xian-pilgrimage', '법현 스님의 인도 구법 순례 출발', '법현 스님의 인도 구법 순례 출발', 'CHINA', '', 'RELIGION', 'B', 399, 412, 'exact', '60세가 넘은 고령에 육로로 인도로 건너가 불경을 구하고 해로로 귀국하여 『불국기』 저술.', '중국 최초의 실크로드-인도양 횡단 여행기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce4-gwanggaeto-rescue-silla', '광개토대왕의 신라 구원과 왜군 격퇴 (서기 400년)', '광개토대왕의 신라 구원과 왜군 격퇴 (서기 400년)', 'KOREA', '', 'POLITICS', 'A', 400, 400, 'exact', '신라 내물마립간의 요청으로 보병과 기병 5만을 파견하여 신라 영내와 금관가야 임나가라까지 진격해 왜군 섬멸.', '신라를 고구려의 영향력 아래 두고 전기 가야 연맹의 맹주권 해체 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-tao-yuanming-poetry', '도연명의 귀거래사와 전원문학', '도연명의 귀거래사와 전원문학', 'CHINA', '', 'ART_CULTURE', 'B', 405, 427, 'exact', '''오두미 쌀 때문에 허리를 굽힐 수 없다''며 낙향하여 『귀거래사』와 『도화원기(무릉도원)』 저술.', '동양 은일 문학과 자연주의 서정시의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-sack-of-rome-visigoths', '서고트족 알라리크의 로마 점령 및 약탈', '서고트족 알라리크의 로마 점령 및 약탈', 'WEST', '', 'POLITICS', 'A', 410, 410, 'exact', '알라리크가 800년 만에 처음으로 ''영원의 도시'' 로마를 함락하고 3일간 약탈함.', '로마 제국의 불패 신화 완전 붕괴와 지식인들의 거대한 정신적 충격.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-augustine-city-of-god', '아우구스티누스의 『신국론(De Civitate Dei)』', '아우구스티누스의 『신국론(De Civitate Dei)』', 'WEST', '', 'RELIGION', 'A', 413, 426, 'exact', '로마 약탈 후 이교도들의 비난에 답하여 세속의 국가(지상국)와 하나님의 나라(천상국)의 역사철학 정립.', '중세 천 년간 서양 기독교 정치사상과 역사관의 기초.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-gwanggaeto-stele-erection', '광개토대왕릉비 건립 (414년)', '광개토대왕릉비 건립 (414년)', 'KOREA', '', 'ART_CULTURE', 'A', 414, 414, 'exact', '장수왕이 부왕의 업적을 기리기 위해 국내성에 6.39m 거대한 비석에 1,775자를 새겨 건립.', '고구려 건국 신화와 웅장한 정복 사업을 기록한 국보급 금석문.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-liu-song-founding', '유유의 유송(劉宋) 건국과 남조 4왕조 개막', '유유의 유송(劉宋) 건국과 남조 4왕조 개막', 'CHINA', '', 'POLITICS', 'B', 420, 420, 'exact', '평민 군인 출신 유유가 동진을 멸망시키고 송나라를 건국함(송-제-양-진으로 이어지는 남조).', '남방 한족 왕조의 군사력 강화와 문벌 귀족 견제.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-jangsu-pyongyang-capital', '고구려 장수왕의 평양 천도와 남진 정책 (427년)', '고구려 장수왕의 평양 천도와 남진 정책 (427년)', 'KOREA', '', 'POLITICS', 'A', 427, 427, 'exact', '국내성에서 대동강 평양성으로 도읍을 옮겨 대륙과 해양을 잇는 남진 정책 본격화.', '고구려의 중심지를 한반도로 이동시키며 삼국 간 영토 대전쟁 격화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-shishuo-xinyu', '유의경의 『세설신어(世說新語)』 편찬', '유의경의 『세설신어(世說新語)』 편찬', 'CHINA', '', 'ART_CULTURE', 'C', 430, 444, 'exact', '후한 말부터 동진까지 명사들의 기발한 언행, 일화, 풍류를 기록한 필기소설의 걸작.', '위진남북조 귀족들의 미의식과 생활상 복원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-patrick-ireland', '성 패트릭의 아일랜드 복음화', '성 패트릭의 아일랜드 복음화', 'WEST', '', 'RELIGION', 'B', 432, 461, 'exact', '켈트 켈틱 드루이드 신앙이 지배하던 아일랜드에 기독교를 전파하고 독자적 켈트 수도원 설립.', '중세 서유럽 고전 필사본을 보존하는 학문의 도피처 아일랜드 수도원 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-naje-alliance', '나제동맹(羅濟同盟) 체결과 혼인 동맹', '나제동맹(羅濟同盟) 체결과 혼인 동맹', 'KOREA', '', 'POLITICS', 'A', 433, 493, 'exact', '고구려의 남진에 맞서 백제 비유왕-신라 눌지왕이 동맹(433)을 맺고, 동성왕-소지왕이 혼인 동맹(493)으로 격상.', '120년간 이어진 삼국 간 세력 균형과 군사적 공조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-northern-wei-unification', '북위 태무제의 화북 통일', '북위 태무제의 화북 통일', 'CHINA', '', 'POLITICS', 'B', 439, 439, 'exact', '하, 북연, 북량을 차례로 멸망시키고 135년간 이어진 5호 16국의 대혼란을 종식.', '북조와 남조의 대치라는 완전한 남북조 시대 정립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-leo-the-great-papacy', '교황 레오 1세의 위상 강화', '교황 레오 1세의 위상 강화', 'WEST', '', 'RELIGION', 'C', 440, 461, 'exact', '아틸라와 반달족을 직접 담판으로 설득하여 로마 파괴를 완화하고 베드로 수위권을 천명.', '서유럽의 정치적 공백을 메우는 교황청 권력의 대두.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-daegaya-federation-rise', '고령 대가야 중심의 후기 가야 연맹 결성', '고령 대가야 중심의 후기 가야 연맹 결성', 'KOREA', '', 'POLITICS', 'B', 450, 500, 'exact', '금관가야 쇠퇴 후 고령 대가야가 지산동 고분군을 축조하며 중국 남제에 사신을 파견(하지왕).', '호남 동부와 영남 서부를 아우르는 대가야의 번영.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-goguryeo-tomb-murals-peak', '고구려 무용총·쌍영총 벽화 전성기', '고구려 무용총·쌍영총 벽화 전성기', 'KOREA', '', 'ART_CULTURE', 'C', 450, 500, 'exact', '수렵도, 무용도, 사신도, 천문 별자리도를 회반죽 벽에 프레스코 기법으로 화려하게 묘사.', '고구려의 호방한 기상과 세계관을 담은 유네스코 세계유산.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-council-of-chalcedon', '칼케돈 공의회 (그리스도의 신성과 인성 양성론 확정)', '칼케돈 공의회 (그리스도의 신성과 인성 양성론 확정)', 'WEST', '', 'RELIGION', 'B', 451, 451, 'exact', '단성론을 배격하고 그리스도는 참 하나님이자 참 사람으로서 신성과 인성이 혼합 없이 공존한다는 신조 확정.', '가톨릭·정교회 기독론의 확립과 오리엔트 정교회의 분리.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-attila-the-hun', '아틸라와 훈족의 서유럽 대침공 (카탈라우눔 전투)', '아틸라와 훈족의 서유럽 대침공 (카탈라우눔 전투)', 'WEST', '', 'POLITICS', 'A', 451, 452, 'exact', '''신의 채찍'' 아틸라가 갈리아를 침공했으나 아이티우스의 로마-서고트 연합군이 카탈라우눔 평원에서 저지.', '서유럽 문명의 절멸 위기 극복 및 훈 제국의 분열.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-vandal-sack-of-rome', '반달족 가이세리크의 로마 약탈 (반달리즘)', '반달족 가이세리크의 로마 약탈 (반달리즘)', 'WEST', '', 'POLITICS', 'B', 455, 455, 'exact', '북아프리카의 반달족 함대가 티베르강을 거슬러 올라와 로마를 점령하고 2주간 철저히 문화재 약탈.', '문화재 파괴 행위를 뜻하는 ''반달리즘(Vandalism)''의 유래.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-yungang-longmen-grottoes', '운강석굴 및 용문석굴의 대규모 불교 조각', '운강석굴 및 용문석굴의 대규모 불교 조각', 'CHINA', '', 'ART_CULTURE', 'A', 460, 500, 'exact', '북위 황실의 주도로 평성 운강과 낙양 용문에 수만 구의 거대한 마애 석굴 불상군 조성.', '간다라 양식과 중국 고유의 사실주의가 결합된 불교 미술의 금자탑.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-baekje-ungjin-capital', '백제 문주왕의 웅진(공주) 천도', '백제 문주왕의 웅진(공주) 천도', 'KOREA', '', 'POLITICS', 'A', 475, 475, 'exact', '한성이 함락되자 문주왕이 공주 공산성(웅진)으로 도읍을 옮겨 국가 재건에 착수.', '백제의 생존과 중흥을 모색하는 웅진 시대 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-hanseong-fall-gaero', '고구려의 한성 함락과 백제 개로왕 전사 (475년)', '고구려의 한성 함락과 백제 개로왕 전사 (475년)', 'KOREA', '', 'POLITICS', 'A', 475, 475, 'exact', '장수왕의 3만 대군이 백제 한성을 포위 함락하고 개로왕을 아차산성에서 처형함.', '500년 백제 한성 시대 종말 및 고구려의 한강 유역 완전 장악.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-chungju-goguryeo-stele', '충주 고구려비(중원 고구려비) 건립', '충주 고구려비(중원 고구려비) 건립', 'KOREA', '', 'ART_CULTURE', 'B', 475, 490, 'exact', '남한강 상류 충주에 세워진 유일한 한반도 내 고구려 석비로 신라왕을 ''매금''이라 칭함.', '고구려 영토가 충청도·영남 북부까지 확장되었음을 실증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('fall-of-western-roman-empire', '서로마 제국 멸망과 중세 유럽의 시작', 'Fall of the Western Roman Empire', 'WEST', '서유럽', 'POLITICS', 'A', 476, 476, 'exact', '게르만 용병대장 오도아케르에 의해 서로마 황제 로물루스 아우구스툴루스가 폐위되며 고대가 끝나고 중세 봉건제가 태동함.', '고대 지중해 통합 세계의 해체와 서유럽 게르만 왕국들의 난립, 기독교 중심의 중세 사회 시작.', '훈족의 침입, 게르만족의 대이동, 경제 파탄과 황제권 약화.', '프랑크 왕국 성립, 비잔틴 제국과의 분화, 장원제와 기사 계급 형성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-fall-of-western-rome', '서로마 제국의 멸망 (476년)', '서로마 제국의 멸망 (476년)', 'WEST', '', 'POLITICS', 'A', 476, 476, 'exact', '게르만 용병대장 오도아케르가 마지막 서로마 황제 로물루스 아우구스툴루스를 폐위함.', '고대 서양사의 종말과 중세 암흑시대(Dark Ages)의 공식 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-baekje-dongseong-revival', '백제 동성왕의 국력 회복과 탐라 복속', '백제 동성왕의 국력 회복과 탐라 복속', 'KOREA', '', 'POLITICS', 'C', 479, 501, 'exact', '신진 세력을 등용하고 금강 유역 방어망을 정비하며 제주도 탐라국을 조공국으로 복속.', '웅진 천도 후 혼란을 극복하고 백제 중흥의 기틀 마련.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-zu-chongzhi-pi', '조충지의 초정밀 원주율(밀률) 계산', '조충지의 초정밀 원주율(밀률) 계산', 'CHINA', '', 'SCIENCE', 'A', 480, 480, 'exact', '원주율을 3.1415926과 3.1415927 사이로 정확히 계산(유럽보다 1천 년 앞섬)하고 『대명력』 제정.', '고대 세계 수학과 천문학의 가장 경이로운 성취.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-clovis-frankish-catholic', '클로비스 1세의 프랑크 왕국 건국 및 가톨릭 개종', '클로비스 1세의 프랑크 왕국 건국 및 가톨릭 개종', 'WEST', '', 'POLITICS', 'A', 481, 496, 'exact', '메로빙거 왕조 클로비스가 갈리아를 통일하고 아리우스파가 아닌 로마 가톨릭으로 개종.', '게르만 프랑크족과 로마 교회의 결합 및 현대 프랑스·독일의 모태 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-equal-field-system', '북위 균전제(均田制)와 삼장제 실시', '북위 균전제(均田制)와 삼장제 실시', 'CHINA', '', 'INSTITUTION', 'A', 485, 486, 'exact', '국가가 농민(노비·소 포함)에게 토지를 지급하고 조세를 거두는 균전제와 호적 관리 삼장제 시행.', '수·당 시대까지 이어질 동아시아 토지·조세 제도의 기본 골격 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce5-silla-maripgan-reforms', '신라 눌지·소지마립간의 우역 설치와 시비(시장) 개설', '신라 눌지·소지마립간의 우역 설치와 시비(시장) 개설', 'KOREA', '', 'INSTITUTION', 'B', 487, 490, 'exact', '전국에 우편·교통망인 우역(郵驛)을 설치하고 수도 경주에 시장(경시)을 열어 상업 진흥.', '신라의 광역 유통망과 행정 통제력 비약적 성장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-fan-zhen-mortality', '범진의 『신멸론(神滅論)』과 무신론 논쟁', '범진의 『신멸론(神滅論)』과 무신론 논쟁', 'CHINA', '', 'RELIGION', 'B', 489, 489, 'exact', '육체가 칼날이면 정신은 칼의 날카로움과 같아 육체가 죽으면 영혼도 멸한다는 유물론 주장.', '남조 불교의 윤회설에 맞선 사상계 최대의 철학 논쟁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-northern-wei-xiaowen', '북위 효문제의 전면적 한화(漢化) 개혁', '북위 효문제의 전면적 한화(漢化) 개혁', 'CHINA', '', 'INSTITUTION', 'A', 490, 499, 'exact', '선비족 복장·언어 금지, 한족과의 통혼 장려, 한족 성씨(탁발씨→원씨) 개명, 낙양 천도 단행.', '호한(胡漢) 융합을 완성하여 수·당 통일 제국의 민족적 기반 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce5-taowuhong-daoism', '도홍경의 도교 모산파 확립과 본초경 집주', '도홍경의 도교 모산파 확립과 본초경 집주', 'CHINA', '', 'RELIGION', 'C', 492, 500, 'exact', '상청파 도교 교단을 정비하고 730종의 약재를 분류한 『본초경집주』 저술.', '도교의 체계화와 중국 본초학 발전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce5-theodoric-ostrogoth', '테오도리쿠스 대왕의 동고트 왕국 수립', '테오도리쿠스 대왕의 동고트 왕국 수립', 'WEST', '', 'POLITICS', 'C', 493, 493, 'exact', '오도아케르를 제거하고 라벤나에 도읍하여 이탈리아를 지배하며 로마 법과 문화를 계승.', '이탈리아에서 게르만 군주와 로마 귀족의 공존 모색.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-silla-jijeung-reforms', '신라 지증왕의 국호 ''신라''·왕호 ''왕'' 확정 및 우산국 복속 (512년)', '신라 지증왕의 국호 ''신라''·왕호 ''왕'' 확정 및 우산국 복속 (512년)', 'KOREA', '', 'INSTITUTION', 'A', 500, 514, 'exact', '국호를 ''신라'', 군주 칭호를 ''왕''으로 확정하고 순장을 금지하며, 이사부를 파견해 울릉도·독도 우산국을 복속시킴.', '신라 국가 체제의 현대화와 해양 영토 주권 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-baekje-muryeong-tomb', '백제 무령왕릉 축조와 22담로 왕족 파견', '백제 무령왕릉 축조와 22담로 왕족 파견', 'KOREA', '', 'ART_CULTURE', 'A', 501, 525, 'exact', '전국 22담로에 왕족을 파견해 중앙집권을 강화하고, 양나라 양식의 벽돌무덤에 국보급 금제관식 등 매장.', '무덤 주인공이 명확한 유일한 삼국 왕릉이자 백제 르네상스 증명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-silla-beopheung-buddhism', '신라 법흥왕의 율령 반포·공복 제정 및 불교 공인 (이차돈 순교)', '신라 법흥왕의 율령 반포·공복 제정 및 불교 공인 (이차돈 순교)', 'KOREA', '', 'INSTITUTION', 'A', 520, 527, 'exact', '17관등 율령 반포(520), 병부 설치, 독자 연호 ''건원'' 선포, 이차돈의 흰 피 순교로 불교 공인(527).', '신라의 절대 왕권 확립과 사상적 대통합.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-academy-closed-athens', '유스티니아누스의 아테네 철학 아카데미 폐쇄', '유스티니아누스의 아테네 철학 아카데미 폐쇄', 'WEST', '', 'SCIENCE', 'B', 529, 529, 'exact', '이교 철학을 금지하여 플라톤 이래 900년간 이어온 아카데미아를 폐쇄함.', '그리스 철학자들이 페르시아로 망명하며 고대 학문이 이슬람 세계로 이전되는 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-justinian-code', '유스티니아누스 1세의 『로마법 대전(Corpus Juris Civilis)』 편찬', '유스티니아누스 1세의 『로마법 대전(Corpus Juris Civilis)』 편찬', 'WEST', '', 'INSTITUTION', 'A', 529, 534, 'exact', '트리보니아누스 등 법학자들을 총동원하여 1천 년 로마법을 칙법휘찬·학설휘찬·법학제요 등으로 집대성.', '근대 대륙법(프랑스 민법전, 독일 민법전)의 절대적 법률적 기초.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-benedict-monastic-rule', '성 베네딕토의 몬테카시노 수도원 창설과 베네딕토 계율', '성 베네딕토의 몬테카시노 수도원 창설과 베네딕토 계율', 'WEST', '', 'RELIGION', 'A', 529, 547, 'exact', '''기도하고 일하라(Ora et Labora)''를 모토로 서방 수도원의 표준 규율 제정.', '중세 유럽 학문·노동·농업 기술 보존의 핵심 거점 마련.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-nika-riots', '콘스탄티노폴리스 니카(Nika) 반란 진압', '콘스탄티노폴리스 니카(Nika) 반란 진압', 'WEST', '', 'POLITICS', 'C', 532, 532, 'exact', '원형경기장 청색당·녹색당 군중의 폭동에 테오도라 황후의 결단과 벨리사리우스의 진압으로 3만 명 처형.', '황제 전제권력의 절대화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-hagia-sophia', '콘스탄티노폴리스 하기아 소피아(성소피아) 대성당 완공', '콘스탄티노폴리스 하기아 소피아(성소피아) 대성당 완공', 'WEST', '', 'ART_CULTURE', 'A', 532, 537, 'exact', '안테미오스와 이시도로스가 직경 31m의 거대한 펜던티브 돔을 공중에 띄운 비잔틴 건축의 기적.', '''솔로몬이여, 내가 그대를 이겼노라''라고 외친 인류 건축사의 최고 걸작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-gaya-confederacy-fall', '가야 연맹의 완전 멸망 (562년)', '가야 연맹의 완전 멸망 (562년)', 'KOREA', '', 'POLITICS', 'A', 532, 562, 'exact', '신라 법흥왕에게 금관가야(532)가 항복하고 진흥왕의 이사부·사다함 군대에 의해 대가야(562)가 멸망함.', '500년 가야 역사의 종언 및 영남 전역이 신라 영토로 통합.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-qimin-yaoshu', '가사협의 『제민요술(齊民要術)』 편찬', '가사협의 『제민요술(齊民要術)』 편찬', 'CHINA', '', 'SCIENCE', 'A', 533, 544, 'exact', '농작물 재배, 과수, 축산, 양조, 식품 가공을 총망라한 현존 최고(最古)의 종합 농업 백과사전.', '동아시아 전통 농경 과학의 기념비적 집대성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-belisarius-reconquest', '벨리사리우스 장군의 고토 회복 (이탈리아·북아프리카 재정복)', '벨리사리우스 장군의 고토 회복 (이탈리아·북아프리카 재정복)', 'WEST', '', 'POLITICS', 'A', 533, 554, 'exact', '반달 왕국을 멸망시키고 동고트 왕국을 격파하여 로마, 라벤나, 카르타고를 동로마 제국 영토로 회복.', '로마 제국의 지중해 재통합(일시적) 달성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-baekje-seong-sabi-capital', '백제 성왕의 사비(부여) 천도와 국호 ''남부여'' 개칭', '백제 성왕의 사비(부여) 천도와 국호 ''남부여'' 개칭', 'KOREA', '', 'POLITICS', 'A', 538, 538, 'exact', '넓은 평야가 있는 사비로 천도하고 22부 관제와 5부 5방 행정구역 정비, 겸익을 통한 계율종 진흥.', '백제의 전열 재정비와 부여 계승 의식 천명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-baekje-japan-buddhism-export', '백제 노리사치계의 일본 불교 및 선진 문물 전파 (552/538년)', '백제 노리사치계의 일본 불교 및 선진 문물 전파 (552/538년)', 'KOREA', '', 'RELIGION', 'B', 538, 552, 'exact', '성왕이 왜국 긴메이 천황에게 불상과 경전을 전하고 의박사, 역박사, 오경박사를 파견.', '일본 아스카(飛鳥) 문화 탄생의 결정적 산파 역할.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-silla-jinheung-expansion', '신라 진흥왕의 한강 유역 장악 및 영토 확장 (순수비 건립)', '신라 진흥왕의 한강 유역 장악 및 영토 확장 (순수비 건립)', 'KOREA', '', 'POLITICS', 'A', 540, 576, 'exact', '화랑도를 국가 조직으로 개편하고, 한강 상·하류를 모두 장악(당항성)한 후 대가야 멸망(562) 및 북한산·창녕·황초령·마운령 순수비 건립.', '신라가 삼국 통일의 주도권을 장악하는 결정적 발판 마련.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-plague-of-justinian', '유스티니아누스 페스트 (인류 최초의 림프절 흑사병 대유행)', '유스티니아누스 페스트 (인류 최초의 림프절 흑사병 대유행)', 'WEST', '', 'CLIMATE_ENVIRONMENT', 'A', 541, 542, 'exact', '이집트에서 발생한 페스트균이 지중해 전역을 휩쓸어 콘스탄티노폴리스 인구의 절반 및 제국 수천만 명 사망.', '동로마 제국의 경제·군사력 파탄 및 이탈리아 재분열, 고대 지중해 세계의 완전한 몰락.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-hou-jing-rebellion', '후경의 난(侯景之亂)과 남조 강남 사회의 궤멸', '후경의 난(侯景之亂)과 남조 강남 사회의 궤멸', 'CHINA', '', 'POLITICS', 'B', 548, 552, 'exact', '투항한 동위 장수 후경이 반란을 일으켜 양무제를 굶겨 죽이고 건강을 유린함.', '남조 문벌 귀족 사회의 궤멸과 남북 힘의 균형이 북조로 결정적 기울어짐.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-fubing-system-origin', '서위 우문태의 부병제(府兵制) 창설', '서위 우문태의 부병제(府兵制) 창설', 'CHINA', '', 'INSTITUTION', 'B', 550, 550, 'exact', '농민을 병사로 징집하여 평소에는 농사짓고 전시에는 출정하는 병농일치 군사 제도 확립.', '수·당 제국의 강력한 군사력의 원천.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-silk-smuggling-byzantium', '동로마의 비단 양잠 기술 밀수 (누에고치 도입)', '동로마의 비단 양잠 기술 밀수 (누에고치 도입)', 'WEST', '', 'ECONOMY', 'C', 552, 552, 'exact', '네스토리우스교 수도사들이 대나무 지팡이에 누에 알을 숨겨 중국에서 콘스탄티노폴리스로 밀반입.', '유럽 내 독자적 비단 생산 및 직조 산업 태동.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-goguryeo-ondal-pyongyang', '고구려 평양 장안성 축조와 온달 장군의 아단성 전사', '고구려 평양 장안성 축조와 온달 장군의 아단성 전사', 'KOREA', '', 'POLITICS', 'B', 552, 590, 'exact', '평양에 거대한 외성·중성·내성을 갖춘 장안성을 완공하고 평원왕의 사위 온달이 한강 회복을 위해 출정했다 전사.', '수·당의 대침공을 막아낼 불패의 평양 도성 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-gwansanseong-battle', '관산성 전투와 백제 성왕의 전사 (554년)', '관산성 전투와 백제 성왕의 전사 (554년)', 'KOREA', '', 'POLITICS', 'A', 554, 554, 'exact', '신라 진흥왕의 한강 독점에 맞서 백제 성왕이 가야와 연합해 충북 옥천 관산성을 공격했으나 신라 복병에 전사.', '120년 나제동맹 파기 및 백제와 신라의 철천지원수 관계화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-lombards-invade-italy', '랑고바르드족(롬바르드)의 이탈리아 침공', '랑고바르드족(롬바르드)의 이탈리아 침공', 'WEST', '', 'POLITICS', 'B', 568, 572, 'exact', '알보인 왕이 이끄는 랑고바르드족이 북이탈리아를 점령하고 롬바르디아 왕국을 세움.', '이탈리아의 완전한 정치적 파편화(북부 랑고바르드 vs 남부·중부 비잔틴·교황령).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-northern-zhou-unification', '북주 무제의 북제 병합과 불교 탄압(삼무일종의 법난)', '북주 무제의 북제 병합과 불교 탄압(삼무일종의 법난)', 'CHINA', '', 'POLITICS', 'C', 574, 577, 'exact', '사찰을 폐쇄하고 승려를 환속시켜 국가 재정을 확충한 후 북제를 멸망시켜 화북 재통일.', '수나라의 통일을 바로 눈앞에 둔 정지 작업.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-zhiyi-tiantai-buddhism', '지자대사 지의의 천태종(天台宗) 창시', '지자대사 지의의 천태종(天台宗) 창시', 'CHINA', '', 'RELIGION', 'B', 575, 597, 'exact', '『법화경』을 근본 경전으로 삼아 교관겸수(이론과 명상)를 강조하는 중국 자생적 불교 종파 확립.', '중국, 한국, 일본 불교 철학에 지대한 영향.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce6-silla-hwarangdo-gukseon', '신라 화랑도(화랑·낭도) 공인과 원광의 세속오계', '신라 화랑도(화랑·낭도) 공인과 원광의 세속오계', 'KOREA', '', 'INSTITUTION', 'B', 576, 600, 'exact', '귀족 자제들의 청소년 수양 단체를 국가 군사·인재 양성 조직으로 개편하고 사군이충 등 5계 수여.', '삼국 통일의 주역 김유신, 관창 등을 배출한 인재의 요람.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-sui-unification', '수문제 양견의 수(隋)나라 건국과 중국 재통일 (589년)', '수문제 양견의 수(隋)나라 건국과 중국 재통일 (589년)', 'CHINA', '', 'POLITICS', 'A', 581, 589, 'exact', '북주를 계승해 수나라를 세우고 남조의 진(陳)나라를 멸망시켜 위진남북조 300년 분열 종식.', '진(秦)·한(漢)에 이은 제2의 중화 통일 제국 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-kaihuang-code', '수나라 개황율(開皇律) 반포', '수나라 개황율(開皇律) 반포', 'CHINA', '', 'INSTITUTION', 'C', 583, 583, 'exact', '가혹한 형벌을 폐지하고 5형(태·장·도·유·사)과 10악(十惡)의 법체계를 정립.', '당률(唐律)과 동아시아 율령 체계의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-grand-canal-survey', '대운하(통제거·영제거) 노선 측량 및 계획', '대운하(통제거·영제거) 노선 측량 및 계획', 'CHINA', '', 'INSTITUTION', 'A', 587, 600, 'exact', '양쯔강 유역의 풍부한 물자를 정치 중심지 화북(낙양·장안)으로 수송하기 위한 남북 대운하 착수.', '중국 남북 경제·문화를 하나로 묶은 거대 인프라.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-imperial-examination-origin', '과거제(科擧制) 도입과 3성 6부제 확립', '과거제(科擧制) 도입과 3성 6부제 확립', 'CHINA', '', 'INSTITUTION', 'A', 587, 600, 'exact', '문벌 귀족의 세습 추천제(구품관인법)를 폐지하고 시험을 통해 인재를 선발하는 진사과 설치.', '1300년간 동아시아 국가 관료 선발의 표준이 된 혁명적 제도.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce6-yan-zhitui-family-instructions', '안지추의 『안씨가훈(顔氏家訓)』', '안지추의 『안씨가훈(顔氏家訓)』', 'CHINA', '', 'ART_CULTURE', 'C', 589, 595, 'exact', '남북조의 격변을 겪은 지식인이 자손 교육과 가문 경영, 처세술을 기록한 고전.', '동양 가정 교육서의 최고 규범.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce6-gregory-great-papacy', '교황 그레고리우스 1세(대교황)의 교회 개혁', '교황 그레고리우스 1세(대교황)의 교회 개혁', 'WEST', '', 'RELIGION', 'B', 590, 604, 'exact', '잉글랜드에 선교사 아우구스티누스를 파견하고 그레고리오 성가를 정리하며 교황권을 확립.', '중세 라틴 교황권과 전례 음악의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-isidore-of-seville', '세비야의 이시도루스의 『어원학(Etymologiae)』', '세비야의 이시도루스의 『어원학(Etymologiae)』', 'WEST', '', 'SCIENCE', 'C', 600, 636, 'exact', '고대 그리스·로마의 7자유학(3학4과) 지식을 총집대성한 20권의 중세 초기 백과사전.', '중세 서유럽 스콜라 학문의 기초 교재.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-grand-canal-completion', '수양제의 대운하 전면 개통 (항저우~베이징 2,700km)', '수양제의 대운하 전면 개통 (항저우~베이징 2,700km)', 'CHINA', '', 'INSTITUTION', 'B', 605, 610, 'exact', '통제거, 영제거, 강남하를 완공하여 황하, 회수, 장강, 전당강을 하나로 연결.', '중국 남방의 쌀과 물자를 북방으로 수송하는 국가 대동맥 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-zhaozhou-bridge', '이춘의 조주교(안제교) 석조 개방형 아치교 완공', '이춘의 조주교(안제교) 석조 개방형 아치교 완공', 'CHINA', '', 'SCIENCE', 'C', 605, 618, 'exact', '스팬 37m의 완만한 단일 세그멘탈 아치와 홍수 분출구 4개를 뚫은 현존 최고 석교.', '세계 교량 공학사상 1천 년을 앞선 개방형 아치 기술.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-rise-of-islam-hegira', '무함마드의 이슬람교 창시와 헤지라 (622년)', '무함마드의 이슬람교 창시와 헤지라 (622년)', 'WEST', '', 'RELIGION', 'A', 610, 622, 'exact', '메카에서 유일신 알라의 계시를 받은 무함마드가 박해를 피해 메디나로 이주(헤지라)하고 움마(이슬람 공동체) 수립.', '이슬람 세계 제국의 탄생과 세계 3대 종교의 출현.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-byzantine-heraclius-defense', '헤라클리우스 황제의 비잔틴 제국 재건과 테마(군관구) 제도', '헤라클리우스 황제의 비잔틴 제국 재건과 테마(군관구) 제도', 'WEST', '', 'INSTITUTION', 'A', 610, 641, 'exact', '페르시아의 침공을 격퇴하고 참십자가를 탈환한 후 제국을 테마(Thema)로 나누고 자영농 군인(스트라티오테스) 육성.', '중세 비잔틴 제국의 생존을 보장한 군사·행정 방어 시스템 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('islam-founding-expansion', '이슬람교 창시와 칼리프 제국의 급속 팽창', 'Rise of Islam & Umayyad/Abbasid Caliphate', 'WEST', '아라비아/중동/북아프리카', 'RELIGION', 'A', 610, 750, 'exact', '예언자 무함마드가 이슬람교를 창시한 후, 아라비아 반도를 통일하고 페르시아와 비잔틴 영토를 정복하여 대제국을 건설함.', '지중해 세계의 판도를 영구히 바꾸고 과학·철학을 융합하여 이슬람 황금기를 개막함.', '메카 상업 귀족의 부패와 유일신 신앙의 결집력.', '스페인에서 중앙아시아에 이르는 거대 이슬람 문화권 형성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-salsu-great-victory', '고구려 을지문덕의 살수대첩 (612년)', '고구려 을지문덕의 살수대첩 (612년)', 'KOREA', '', 'POLITICS', 'A', 612, 612, 'exact', '우중문에게 여수장우중문시를 보내 유인한 후 살수(청천강)를 건너는 수나라 30만 5천 별동대를 수공과 매복으로 섬멸(2,700명만 생환).', '민족사 최대의 빛나는 승리이자 수나라 멸망의 결정타.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-sui-goguryeo-wars', '수양제의 113만 대군 고구려 침공과 살수대첩 (612년)', '수양제의 113만 대군 고구려 침공과 살수대첩 (612년)', 'CHINA', '', 'POLITICS', 'A', 612, 614, 'exact', '수양제가 역사상 유례없는 대군을 동원했으나 요동성에서 막히고 을지문덕의 살수대첩에 전멸.', '수나라의 치명적 국력 소모 및 멸망의 결정적 원인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-tang-dynasty-founding', '이연·이세민의 당(唐)나라 건국과 정관의 치 (618년)', '이연·이세민의 당(唐)나라 건국과 정관의 치 (618년)', 'CHINA', '', 'POLITICS', 'A', 618, 649, 'exact', '당고조 이연이 장안에서 건국하고 당태종 이세민이 율령제(3성6부·조용조)와 신하들의 간언을 수용해 태평성대 이룩.', '동아시아 문화권의 표준이 된 300년 당 제국의 황금기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('tang-dynasty-founding', '당나라 건국과 율령 체제 완성', 'Tang Dynasty & East Asian Legal System', 'CHINA', '당(唐)', 'INSTITUTION', 'A', 618, 907, 'exact', '당태종과 당고종에 걸쳐 3성 6부제, 균전제, 조용조, 과거제를 정비하여 동아시아 율령 문화의 표준을 완성함.', '신라, 발해, 일본에 율령과 유교 정치 시스템을 전파하여 동아시아 문화권(한자·유교·불교·율령)을 통합.', '수나라의 무리한 고구려 원정 실패와 농민 반란 후 이연·이세민의 건국.', '국제도시 장안 번영, 안사의 난 이후 절도사 난립으로 쇠퇴.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-xuanzang-journey-west', '현장법사의 서역·인도 구법 여행과 『대당서역기』', '현장법사의 서역·인도 구법 여행과 『대당서역기』', 'CHINA', '', 'RELIGION', 'A', 629, 645, 'exact', '16년간 나란다 사원 등 인도를 순례하고 657부의 산스크리트 불경을 가져와 번역함(『서유기』의 모태).', '유식학 발전 및 고대 중앙아시아·인도 지리학의 최고 보고.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-tang-tian-kehan', '당태종의 동돌궐 정벌과 ''천가한(天可汗)'' 추대', '당태종의 동돌궐 정벌과 ''천가한(天可汗)'' 추대', 'CHINA', '', 'POLITICS', 'B', 630, 630, 'exact', '이정이 이끄는 당군이 동돌궐 힐리가한을 생포하자 유목 부족들이 당태종을 천상의 군주로 추대.', '농경 민족과 유목 민족을 아우르는 유라시아 대제국 건설.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-rashidun-conquests', '정통 칼리프 시대의 대정복과 사산조 페르시아 멸망', '정통 칼리프 시대의 대정복과 사산조 페르시아 멸망', 'WEST', '', 'POLITICS', 'A', 632, 661, 'exact', '야르무크 전투에서 비잔틴군을 격파하고 시리아, 이집트를 정복하며 니하반드 전투(642)로 400년 사산조 페르시아를 완전 멸망시킴.', '중동과 북아프리카가 기독교 권역에서 이슬람 아랍 문명권으로 전면 재편.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-cheomseongdae-astronomy', '신라 선덕여왕의 첨성대(국보) 건립', '신라 선덕여왕의 첨성대(국보) 건립', 'KOREA', '', 'SCIENCE', 'B', 634, 647, 'exact', '362개의 화강암 돌을 27단으로 쌓아 1년 일수와 24절기, 천문 관측을 상징하는 세계 최고 수준의 천문대 완공.', '동양에 현존하는 가장 오래된 천문대.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-nestorian-monument-changan', '경교(기독교 네스토리우스파)의 장안 전래', '경교(기독교 네스토리우스파)의 장안 전래', 'CHINA', '', 'RELIGION', 'C', 635, 635, 'exact', '페르시아 사제 아라본이 장안에 도착하자 당태종이 경교 사원(대진사) 건립을 허가함.', '기독교의 최초 중국 전래와 다종교 융합.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-yeon-gaesomun-coup', '고구려 연개소문의 정변과 대막리지 집권 (642년)', '고구려 연개소문의 정변과 대막리지 집권 (642년)', 'KOREA', '', 'POLITICS', 'A', 642, 666, 'exact', '영류왕과 온건파 귀족 100여 명을 숙청하고 보장왕을 옹립한 후 천리장성을 완공하며 당나라에 초강경 대결 노선 고수.', '고구려 말기 강력한 군사독재 체제와 당과의 총력전 돌입.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-ansiseong-great-victory', '고구려 안시성 전투 (645년)', '고구려 안시성 전투 (645년)', 'KOREA', '', 'POLITICS', 'A', 645, 645, 'exact', '당태종 이세민의 친정 대군에 맞서 안시성 성주(양만춘 전승)와 백성들이 토산을 무너뜨리며 88일간 결사항전 끝에 격퇴.', '동북아 최강대국 당나라 황제의 군대를 꺾은 불패의 방어전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-hwangnyongsa-pagoda', '자장율사의 건의와 황룡사 9층 목탑 건립', '자장율사의 건의와 황룡사 9층 목탑 건립', 'KOREA', '', 'ART_CULTURE', 'B', 645, 645, 'exact', '주변 9개국의 침략을 부처의 힘으로 물리치고자 백제 장인 아비지를 초빙하여 80m 높이의 거대 목탑 완공.', '호국불교 신앙과 삼국 최고 수준의 목조 건축 공학 과시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-quran-compilation', '칼리프 우스만의 『쿠란(Quran)』 정본 집대성', '칼리프 우스만의 『쿠란(Quran)』 정본 집대성', 'WEST', '', 'RELIGION', 'B', 650, 653, 'exact', '구전되던 무함마드의 계시를 단일한 아랍어 표준 문자로 정리하고 다른 이본들을 파기함.', '이슬람 신앙과 아랍 문학·법률(샤리아)의 영구적 절대 표준.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-changan-cosmopolitan', '수도 장안의 100만 국제 코스모폴리탄 도시 번영', '수도 장안의 100만 국제 코스모폴리탄 도시 번영', 'CHINA', '', 'ART_CULTURE', 'B', 650, 700, 'exact', '바둑판형 도시 장안(동서 시장)에 신라, 일본, 페르시아, 아랍 상인과 사절들이 모여 호풍(胡風) 문화 유행.', '고대 세계 최대의 국제 교류 수도.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-tang-code-lu', '장손무기 등의 『당률소의(唐律疏議)』 편찬', '장손무기 등의 『당률소의(唐律疏議)』 편찬', 'CHINA', '', 'INSTITUTION', 'A', 653, 653, 'exact', '율(형법)·령(행정법)·격(보완규정)·식(시행세칙)의 율령 격식 체제를 법률 주석과 함께 완벽 집대성.', '한국, 일본, 베트남 등 동아시아 율령 문화권의 공통 법률 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-baekje-uija-fall', '백제 멸망과 계백의 5천 결사대 (황산벌 전투)', '백제 멸망과 계백의 5천 결사대 (황산벌 전투)', 'KOREA', '', 'POLITICS', 'A', 660, 660, 'exact', '신라 5만-당 13만 나당연합군의 협공에 맞서 계백 장군이 황산벌에서 4차례 승리했으나 중과부적으로 패하고 사비성 함락.', '700년 백제 왕국의 비극적 종언과 백제 부흥운동(흑치상지·복신·도침) 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-silla-tripartite-unification', '신라의 삼국 통일 완수 (백제·고구려 멸망 및 나당전쟁 승리)', '신라의 삼국 통일 완수 (백제·고구려 멸망 및 나당전쟁 승리)', 'KOREA', '', 'POLITICS', 'A', 660, 676, 'exact', '김유신·문무왕이 백제 멸망(660, 황산벌), 고구려 멸망(668) 후 당나라의 침략 야욕에 맞서 매소성·기벌포 전투(676)에서 대승하여 당군 축출.', '한민족 최초의 단일 국가적 통합 달성과 자주적 영토(대동강~원산만) 확보.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-umayyad-caliphate-damascus', '우마이야 왕조의 성립과 다마스쿠스 천도', '우마이야 왕조의 성립과 다마스쿠스 천도', 'WEST', '', 'POLITICS', 'A', 661, 661, 'exact', '무아위야 1세가 알리를 제치고 세습 칼리프 왕조를 창건하여 시리아 다마스쿠스에 도읍함.', '아랍 제국이 중앙아시아에서 이베리아 반도(스페인)까지 팽창하는 전초기지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-wonhyo-buddhism-integration', '원효대사의 화쟁사상(和諍思想)과 불교 대중화', '원효대사의 화쟁사상(和諍思想)과 불교 대중화', 'KOREA', '', 'RELIGION', 'A', 661, 686, 'exact', '해골물 일체유심조 깨달음 후 무애가를 부르며 서민에게 정토신앙을 전파하고 모든 종파 갈등을 하나로 융합한 『십문화쟁론』, 『대승기신론소』 저술.', '한국 불교 철학의 최고봉이자 ''원융회통'' 민족 사상 정립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-synod-of-whitby', '휘트비 종교회의 (잉글랜드 교회의 로마 가톨릭 전례 수용)', '휘트비 종교회의 (잉글랜드 교회의 로마 가톨릭 전례 수용)', 'WEST', '', 'RELIGION', 'C', 664, 664, 'exact', '잉글랜드 노섬브리아 왕국에서 켈트 교회와 로마 교회의 부활절 계산법 논쟁 끝에 로마 가톨릭 전례 채택.', '영국 제도가 서유럽 가톨릭 단일 질서로 통합.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('silla-unification-korea', '신라의 삼국통일과 남북국 시대', 'Unified Silla & Balhae (North-South States)', 'KOREA', '신라/발해', 'POLITICS', 'A', 668, 698, 'exact', '신라가 백제와 고구려를 병합하고 나당전쟁에서 승리하여 대동강 이남을 통일하고, 북쪽에는 대조영이 발해를 건국함.', '한민족의 단일 문화적 정체성이 태동하고 불국사·석굴암 등 불교 예술이 극치에 달함.', '김춘추-김유신의 나당동맹 결성과 당나라 군대의 축출.', '신라 황금기 및 불국사·석굴암 조성, 발해의 해동성국 번영.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-uissang-hwayeom', '의상대사의 화엄종 개창과 부석사 창건', '의상대사의 화엄종 개창과 부석사 창건', 'KOREA', '', 'RELIGION', 'B', 670, 700, 'exact', '당나라 지엄에게 화엄학을 배우고 귀국하여 『화엄일승법계도』를 짓고 영주 부석사 등 화엄 10찰 창건.', '신라 교종 불교의 중심 축 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-greek-fire-constantinople-siege', '그리스의 불(Greek Fire)과 제1차 콘스탄티노폴리스 공방전', '그리스의 불(Greek Fire)과 제1차 콘스탄티노폴리스 공방전', 'WEST', '', 'SCIENCE', 'A', 674, 678, 'exact', '물 위에서도 불타는 화학 무기 그리스의 불을 개발하여 우마이야 아랍 함대의 콘스탄티노폴리스 포위를 완파함.', '서유럽으로의 이슬람 확장을 동쪽 관문에서 결정적으로 저지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-shia-sunni-split-karbala', '카르발라 전투와 수니파·시아파의 분열 (680년)', '카르발라 전투와 수니파·시아파의 분열 (680년)', 'WEST', '', 'RELIGION', 'B', 680, 680, 'exact', '무함마드의 손자 후세인 이븐 알리가 카르발라에서 우마이야 군에 순교당함.', '이슬람 역사상 가장 깊은 수니파와 시아파 간 영구적 종파 분열.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-silla-sinmun-reforms', '신라 신문왕의 귀족 숙청(김흠돌의 난)과 관료전 지급', '신라 신문왕의 귀족 숙청(김흠돌의 난)과 관료전 지급', 'KOREA', '', 'INSTITUTION', 'A', 681, 692, 'exact', '진골 귀족의 경제 기반인 녹읍을 폐지하고 관료전을 지급하며 국학(대학)을 설립하고 9주 5소경 행정체제 완성.', '신라 중대 전제 왕권의 절정기 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce7-wu-zetian-reign', '측천무후의 무주(武周) 개창과 여성 황제 등극', '측천무후의 무주(武周) 개창과 여성 황제 등극', 'CHINA', '', 'POLITICS', 'A', 690, 705, 'exact', '중국 역사상 유일무이한 여성 황제로 즉위하여 관롱 귀족을 누르고 과거 출신 신진 관료 대거 발탁.', '신분제 타파와 당 현종 ''개원의 치''를 잇는 번영의 징검다리.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce7-dome-of-the-rock', '예루살렘 바위의 돔(Dome of the Rock) 완공', '예루살렘 바위의 돔(Dome of the Rock) 완공', 'WEST', '', 'ART_CULTURE', 'B', 691, 692, 'exact', '칼리프 압드 알 말리크가 솔로몬 성전 터에 웅장한 금빛 돔과 팔각형 이슬람 모자이크 성전 건립.', '현존 최고(最古)의 기념비적 이슬람 건축물.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce7-balhae-founding', '대조영의 발해 건국 (698년)', '대조영의 발해 건국 (698년)', 'KOREA', '', 'POLITICS', 'A', 698, 698, 'exact', '고구려 장수 대조영이 고구려 유민과 말갈족을 이끌고 천문령 전투에서 당군을 격파한 후 동모산에서 진국(발해) 건국.', '고구려 계승국으로서 남북국 시대(통일신라-발해) 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-sancai-pottery', '당삼채(唐三彩) 도자기의 대량 제작과 실크로드 수출', '당삼채(唐三彩) 도자기의 대량 제작과 실크로드 수출', 'CHINA', '', 'ART_CULTURE', 'C', 710, 760, 'exact', '갈색, 녹색, 백색 유약을 입힌 화려한 도용(서역 낙타상, 여인상)이 귀족 부장품으로 유행.', '당 제국의 활달한 다문화주의와 도예 기술 과시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-kaiyuan-prosperous-age', '당현종의 ''개원의 치(開元之治)''와 성당(盛唐)의 번영', '당현종의 ''개원의 치(開元之治)''와 성당(盛唐)의 번영', 'CHINA', '', 'POLITICS', 'A', 713, 741, 'exact', '당현종 초기 요숭, 송경 등 명재상을 등용해 국가 재정을 정비하고 당나라 문화의 최고 황금기 구가.', '중국 고대 제국의 물질적·문화적 최절정기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-hyecho-pilgrimage', '혜초 스님의 5천축국 순례와 『왕오천축국전』 저술 (727년)', '혜초 스님의 5천축국 순례와 『왕오천축국전』 저술 (727년)', 'KOREA', '', 'RELIGION', 'A', 723, 727, 'exact', '해로로 인도(5천축국)를 순례하고 중앙아시아, 페르시아, 파미르고원을 거쳐 장안으로 귀환한 여행기.', '8세기 인도와 중앙아시아의 정치·종교·풍속을 기록한 세계 4대 여행기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-yixing-prime-meridian', '승려 일행의 자오선 길이 측정과 『대연력』 편찬', '승려 일행의 자오선 길이 측정과 『대연력』 편찬', 'CHINA', '', 'SCIENCE', 'B', 724, 728, 'exact', '황도와 자오선을 실측하여 지구 표면의 위도 1도 거리를 세계 최초로 계산한 천문역법 개혁.', '동양 정밀 측지학과 천문학의 최고 성취.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-byzantine-iconoclasm', '비잔틴 제국의 성상 파괴 운동(Iconoclasm)', '비잔틴 제국의 성상 파괴 운동(Iconoclasm)', 'WEST', '', 'RELIGION', 'A', 726, 787, 'exact', '레오 3세 황제가 우상숭배 금지를 명분으로 모든 이콘(성상·성화) 파괴를 명령함.', '로마 교황청과의 심각한 갈등 및 동서 교회의 완전한 분열 촉진.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-balhae-muwang-dengzhou', '발해 무왕의 산둥반도 등주 공격 (장문휴 장군, 732년)', '발해 무왕의 산둥반도 등주 공격 (장문휴 장군, 732년)', 'KOREA', '', 'POLITICS', 'A', 732, 732, 'exact', '당나라의 흑수말갈 연합 포위망에 선제 타격으로 장문휴 장군이 해군을 이끌고 당나라 등주를 기습하여 자사 유준을 사살함.', '발해의 막강한 군사력과 독자적 패권 의지 과시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-battle-of-tours', '투르-푸아티에 전투 (카를 마르텔의 이슬람 격퇴, 732년)', '투르-푸아티에 전투 (카를 마르텔의 이슬람 격퇴, 732년)', 'WEST', '', 'POLITICS', 'A', 732, 732, 'exact', '프랑크 왕국의 궁재 카를 마르텔이 이베리아에서 피레네산맥을 넘어 침공한 우마이야 아랍 기병대를 격파함.', '서유럽 기독교 세계가 이슬람화되는 것을 막아낸 결정적 전투.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-balhae-munwang-peak', '발해 문왕 대흠무의 중흥과 상경용천부 천도', '발해 문왕 대흠무의 중흥과 상경용천부 천도', 'KOREA', '', 'POLITICS', 'A', 737, 793, 'exact', '56년간 재위하며 당나라 장안성을 모방한 거대한 상경용천부를 건설하고 3성 6부제 정비, 신라도·일본도 등 5대 대외 교통로 개척.', '''해동성국(海東盛國)''의 기틀을 완성한 발해의 황금기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-li-bai-du-fu-poetry', '이백과 두보의 시문학 절정 (시선과 시성)', '이백과 두보의 시문학 절정 (시선과 시성)', 'CHINA', '', 'ART_CULTURE', 'A', 740, 770, 'exact', '낭만주의의 천재 이백(시선)과 전란의 고통을 사실주의로 읊은 두보(시성)의 불멸의 당시(唐詩) 창작.', '동양 한시 문학의 영원한 양대 산맥.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-emille-bell-casting', '성덕대왕신종(에밀레종) 주조 완성 (771년)', '성덕대왕신종(에밀레종) 주조 완성 (771년)', 'KOREA', '', 'ART_CULTURE', 'B', 742, 771, 'exact', '19톤에 달하는 거대한 청동 범종으로 비천상 부조와 음관(만파식적 원리)을 통해 수십 리 밖까지 울리는 맥놀이 소리 구현.', '한국 고대 금속 주조 공학 및 음향학의 최고 절정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-abbasid-revolution', '아바스 왕조의 건국과 바그다드 ''평화의 도시'' 건설 (750/762년)', '아바스 왕조의 건국과 바그다드 ''평화의 도시'' 건설 (750/762년)', 'WEST', '', 'POLITICS', 'A', 750, 762, 'exact', '아부 알 아바스가 우마이야 왕조를 무너뜨리고 모든 무슬림이 평등한 보편 제국을 세워 바그다드로 천도.', '이슬람 문명의 황금시대(Islamic Golden Age) 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-silla-hyangga-culture', '향가(鄕歌) 문학의 전성기와 월명사·충담사', '향가(鄕歌) 문학의 전성기와 월명사·충담사', 'KOREA', '', 'ART_CULTURE', 'C', 750, 780, 'exact', '향찰(한자의 음과 훈)로 지은 10구체 사뇌가 『제망매가』, 『안민가』, 『찬기파랑가』 창작.', '한국 고유어 서정시 문학의 최고의 백미.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-battle-of-talas', '탈라스 전투와 이슬람·유럽으로의 제지술 전파 (751년)', '탈라스 전투와 이슬람·유럽으로의 제지술 전파 (751년)', 'CHINA', '', 'SCIENCE', 'A', 751, 751, 'exact', '고구려 유민 출신 당나라 장수 고선지의 군대가 아바스 제국 군대와 중앙아시아 탈라스에서 격돌.', '중국의 제지 기술자 포로를 통해 사마르칸트와 바그다드를 거쳐 유럽으로 제지술이 전파된 세계사적 사건.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-mugu-jeonggwang-dharani', '무구정광대다라니경 목판 인쇄 (세계 최고(最古) 목판 인쇄본)', '무구정광대다라니경 목판 인쇄 (세계 최고(最古) 목판 인쇄본)', 'KOREA', '', 'SCIENCE', 'A', 751, 751, 'exact', '불국사 삼층석탑(석가탑) 사리함에서 발견된 닥종이 두루마리 목판 인쇄 다라니경.', '현존하는 세계에서 가장 오래된 목판 인쇄물로서 한국 인쇄 기술의 독보적 위상 입증.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('woodblock-printing-dharani', '무구정광대다라니경과 목판 인쇄술', 'Mugu Jeonggwang Dharani Sutra & Woodblock Printing', 'KOREA', '통일신라', 'SCIENCE', 'B', 751, 751, 'approximate', '경주 불국사 석가탑에서 발견된 현존 세계 최고(最古)의 목판 인쇄물로 뛰어난 인쇄 기술과 종이 품질을 입증함.', '동아시아 목판 인쇄 기술의 높은 수준과 한지의 내구성을 증명하는 유네스코 기록유산급 가치.', '불교 경전 보급과 공덕 축적을 위한 인쇄 기술 발전.', '고려 대장경 조판으로 이어지는 인쇄 문화의 원류.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-bulguksa-seokguram', '통일신라 불국사와 석굴암 창건 (김대성, 751년)', '통일신라 불국사와 석굴암 창건 (김대성, 751년)', 'KOREA', '', 'ART_CULTURE', 'A', 751, 774, 'exact', '재상 김대성이 현생과 전생의 부모를 위해 화강암 돔 인공석굴 석굴암 본존불과 불국사 백운교·석가탑·다보탑 완공.', '유네스코 세계문화유산이자 세계 불교 미술과 석조 건축의 최고 걸작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-pepin-donation-papal-states', '피핀의 기증과 교황령(Papal States)의 탄생 (754/756년)', '피핀의 기증과 교황령(Papal States)의 탄생 (754/756년)', 'WEST', '', 'INSTITUTION', 'B', 754, 756, 'exact', '단신왕 피핀이 랑고바르드족을 격퇴하고 라벤나 일대 영토를 교황 스테파노 2세에게 기증함.', '교황이 독립된 세속 영토의 군주로 등극.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-silla-village-records', '신라 민정문서(신라 촌락문서) 작성', '신라 민정문서(신라 촌락문서) 작성', 'KOREA', '', 'INSTITUTION', 'B', 755, 755, 'exact', '서원경(청주) 부근 4개 촌락의 인구(남녀·연령별 6등급), 전답 면적, 소·말, 뽕나무·잣나무 수를 3년마다 정밀 조사.', '통일신라의 치밀한 촌락 지배와 조세 수취 행정을 보여주는 유일한 고문서.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-an-lushun-rebellion', '안사의 난(安史之亂) (755년)', '안사의 난(安史之亂) (755년)', 'CHINA', '', 'POLITICS', 'A', 755, 763, 'exact', '절도사 안록산과 사사명이 반란을 일으켜 낙양과 장안을 함락시키고 양귀비가 사사됨.', '당나라가 중앙집권에서 번진(藩鎭) 군벌 할거로 전락하고 쇠퇴하는 치명적 전환점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-al-andalus-cordoba', '후우마이야 왕조 건국과 코르도바 대모스크(메스키타) 착공', '후우마이야 왕조 건국과 코르도바 대모스크(메스키타) 착공', 'WEST', '', 'ART_CULTURE', 'B', 756, 784, 'exact', '아브드 알 라흐만 1세가 스페인에 망명 왕조를 세우고 코르도바에 붉은색과 흰색 줄무늬 아치의 대사원 착공.', '이베리아 반도 이슬람-유대-기독교 융합 문화의 만개.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-lu-yu-classic-of-tea', '육우의 『다경(茶經)』 편찬과 차 문화의 확립', '육우의 『다경(茶經)』 편찬과 차 문화의 확립', 'CHINA', '', 'ART_CULTURE', 'B', 760, 780, 'exact', '차나무 재배, 찻잎 가공, 다기, 달이는 법, 음다 예절을 집대성한 세계 최초의 차 백과사전.', '동양 다도(茶道) 문화의 창시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-tibet-tubo-invasion', '토번(티베트) 티송데첸의 장안 점령 (763년)', '토번(티베트) 티송데첸의 장안 점령 (763년)', 'CHINA', '', 'POLITICS', 'C', 763, 763, 'exact', '안사의 난으로 약화된 틈을 타 토번군이 당 수도 장안을 일시 점령함.', '티베트 제국의 전성기와 당나라의 서방 방어선 붕괴.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-liangshui-law-tax', '양염의 양세법(兩稅法) 제정 (780년)', '양염의 양세법(兩稅法) 제정 (780년)', 'CHINA', '', 'INSTITUTION', 'A', 780, 780, 'exact', '균전제 붕괴 후 인두세(조용조) 대신 자산과 토지 면적에 따라 여름과 가을 두 차례 화폐와 곡물로 징수.', '동아시아 조세 체계가 토지세 중심으로 대전환된 일대 개혁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-carolingian-renaissance', '카롤링거 르네상스와 알쿠인의 궁정 학교', '카롤링거 르네상스와 알쿠인의 궁정 학교', 'WEST', '', 'ART_CULTURE', 'B', 780, 800, 'exact', '카롤루스 대왕이 아헨 궁정에 영국의 학자 알쿠인을 초빙하여 라틴어 교육과 카롤링거 소문자 서체 보급.', '중세 암흑기를 깬 학문과 도서 필사 문화의 부흥.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-arabian-nights-harun', '하룬 알 라시드의 통치와 『천일야화(아라비안 나이트)』의 배경', '하룬 알 라시드의 통치와 『천일야화(아라비안 나이트)』의 배경', 'WEST', '', 'ART_CULTURE', 'C', 786, 809, 'exact', '아바스 제국의 최대 번영기로 샤흐라자드의 이야기로 유명한 설화 문학 형성.', '세계 문학사에 빛나는 환상적 아랍 민담의 원천.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-house-of-wisdom', '바그다드 ''지혜의 집(Bayt al-Hikma)''과 번역 운동', '바그다드 ''지혜의 집(Bayt al-Hikma)''과 번역 운동', 'WEST', '', 'SCIENCE', 'A', 786, 809, 'exact', '칼리프 하룬 알 라시드가 설립하여 플라톤, 아리스토텔레스, 프톨레마이오스, 유클리드 등 그리스 고전을 아랍어로 번역·연구.', '서양 고전 지식을 보존하여 후대 12세기 르네상스에 환류.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce8-dokseo-sampumgwa', '신라 원성왕의 독서삼품과(讀書三品科) 실시 (788년)', '신라 원성왕의 독서삼품과(讀書三品科) 실시 (788년)', 'KOREA', '', 'INSTITUTION', 'C', 788, 788, 'exact', '유교 경전(효경, 논어, 예기 등) 독해 능력에 따라 인재를 상·중·하 3품으로 선발하려 시도함.', '골품제의 한계를 극복하려 한 학문 중심 관리 등용 시도.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce8-han-yu-ancient-prose', '한유의 고문운동(古文運動)과 원도(原道)', '한유의 고문운동(古文運動)과 원도(原道)', 'CHINA', '', 'ART_CULTURE', 'B', 790, 805, 'exact', '형식적인 변려문을 비판하고 자유롭고 명료한 진·한대 산문으로 돌아가자는 유학 부흥 문예 운동.', '송대 성리학과 당송 8대가 산문의 원류.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-viking-age-lindisfarne', '바이킹의 린디스판 수도원 습격 (바이킹 시대 개막, 793년)', '바이킹의 린디스판 수도원 습격 (바이킹 시대 개막, 793년)', 'WEST', '', 'POLITICS', 'B', 793, 793, 'exact', '스칸디나비아 노르만 해적들이 잉글랜드 동북부 홀리 아일랜드의 린디스판 수도원을 기습 약탈함.', '300년간 전 유럽 해안과 강을 공포로 몰아넣은 바이킹 시대의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce8-charlemagne-coronation', '카롤루스 대왕(샤를마뉴)의 서로마 황제 대관 (800년)', '카롤루스 대왕(샤를마뉴)의 서로마 황제 대관 (800년)', 'WEST', '', 'POLITICS', 'A', 800, 800, 'exact', '성탄절에 교황 레오 3세가 성 베드로 대성당에서 카롤루스 대왕에게 서로마 제국 황제관을 수여함.', '서유럽 중세의 3대 요소(로마 고전, 기독교, 게르만 전통)의 완전한 결합 및 유럽 연합의 원형.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-tang-xianzong-restoration', '당헌종의 원화중흥(元和中興)과 번진 토벌', '당헌종의 원화중흥(元和中興)과 번진 토벌', 'CHINA', '', 'POLITICS', 'B', 805, 820, 'exact', '이길보, 배도 등 명신을 기용하고 회서 절도사 오원제를 야간 기습으로 사로잡아 절도사 세력을 일시 굴복시킴.', '당나라 후기 마지막 황권 회복의 불꽃.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-bai-juyi-poetry', '백거이의 『장한가』, 『비파행』과 신악부 운동', '백거이의 『장한가』, 『비파행』과 신악부 운동', 'CHINA', '', 'ART_CULTURE', 'B', 806, 846, 'exact', '평이하고 통속적인 문체로 서민의 애환을 노래하고 현종과 양귀비의 비극적 사랑을 서사시로 승화.', '당대뿐 아니라 한국(신라·고려)과 일본(헤이안 문학)에서 선풍적 인기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-gunpowder-invention', '연단술 도사들에 의한 흑색 화약의 발명', '연단술 도사들에 의한 흑색 화약의 발명', 'CHINA', '', 'SCIENCE', 'A', 808, 850, 'exact', '초석, 유황, 숯을 배합하여 폭발력을 가진 화약을 발명하고 군사용 화살(비화)에 적용 시작.', '인류 전쟁사와 무기 혁명을 뒤바꾼 4대 발명의 하나.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-flying-money-feiqian', '비전(飛錢, 어음)의 등장과 신용 경제 발전', '비전(飛錢, 어음)의 등장과 신용 경제 발전', 'CHINA', '', 'ECONOMY', 'C', 810, 830, 'exact', '무거운 동전을 들고 다닐 필요 없이 장안과 지방에서 환어음을 통해 대금을 결제하는 신용 화폐 태동.', '송대 세계 최초의 지폐(교자) 출현의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-balhae-seonwang-peak', '발해 선왕 대인수의 영토 극대화와 ''해동성국'' 칭호', '발해 선왕 대인수의 영토 극대화와 ''해동성국'' 칭호', 'KOREA', '', 'POLITICS', 'A', 818, 830, 'exact', '요동반도에서 연해주, 흑룡강에 이르는 북방 유목 부족들을 복속시키고 5경 15부 62주 체제 완성.', '발해 역사상 최대 판도를 개척한 대제국 전성기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-al-khwarizmi-algebra', '알 콰리즈미의 대수학(Algebra) 창안과 아라비아 숫자 전파', '알 콰리즈미의 대수학(Algebra) 창안과 아라비아 숫자 전파', 'WEST', '', 'SCIENCE', 'A', 820, 830, 'exact', '바그다드 지혜의 집에서 『복원과 대비의 계산서(알 자브르)』를 저술하고 0을 포함한 10진법 인도-아라비아 숫자 체계 정립.', '대수학(Algebra) 및 알고리즘(Algorithm) 어원의 주인공이자 근대 수학의 기초.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-eunuch-domination-tang', '환관 세력의 황제 폐립과 감로의 변 (835년)', '환관 세력의 황제 폐립과 감로의 변 (835년)', 'CHINA', '', 'POLITICS', 'C', 820, 835, 'exact', '구신책 등 신책군을 장악한 환관들이 황제를 마음대로 옹립·시해하고 관료들을 학살함.', '당나라 황실의 완전한 허수아비 전락.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-shilla-bang-in-tang', '당나라 산둥반도의 신라인 자치구역 ''신라방''·''신라원''', '당나라 산둥반도의 신라인 자치구역 ''신라방''·''신라원''', 'KOREA', '', 'ECONOMY', 'B', 820, 880, 'exact', '장보고의 법화원을 비롯해 산둥과 양쯔강 하류에 신라인 마을(신라방), 관청(신라소), 사찰(신라원) 번영.', '재당 신라인 디아스포라와 고도 자치 상업 네트워크.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-gumi-nine-mountain-seon', '신라 9산선문(九山禪門) 개창과 호족과의 결합', '신라 9산선문(九山禪門) 개창과 호족과의 결합', 'KOREA', '', 'RELIGION', 'B', 820, 890, 'exact', '도의(가지산문), 홍척(실상산문) 등 당나라에서 선종을 수학한 승려들이 지방 호족의 후원을 받아 산문 개창.', '경주 귀족 중심 교종을 타파하고 지방 호족의 사상적 기반 제공.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-jang-bogo-cheonghaejin', '장보고의 청해진 설치와 동아시아 해상 무역 장악 (828년)', '장보고의 청해진 설치와 동아시아 해상 무역 장악 (828년)', 'KOREA', '', 'ECONOMY', 'A', 828, 846, 'exact', '완도에 1만 군사로 청해진을 구축하여 서해와 남해의 해적을 소탕하고 신라-당-일본을 잇는 동아시아 해상 무역망 독점(해상왕).', '한국 역사상 가장 위대한 글로벌 해양 상업 제국 건설.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-silla-king-heungdeok-sumptuary', '신라 흥덕왕의 복식·사치 금지령 (834년)', '신라 흥덕왕의 복식·사치 금지령 (834년)', 'KOREA', '', 'INSTITUTION', 'C', 834, 834, 'exact', '골품(성골·진골·6두품·5두품·평민)에 따라 타슬, 비단, 신발, 그릇의 재질과 색상을 엄격히 규제.', '신라 말기 극심해진 계급 모순과 보수적 신분제의 한계 노출.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-chan-buddhism-five-houses', '선종(禪宗) 불교의 5가 7종 형성 (임제종·조동종)', '선종(禪宗) 불교의 5가 7종 형성 (임제종·조동종)', 'CHINA', '', 'RELIGION', 'B', 840, 890, 'exact', '임제의현(할과 방)과 동산양개에 의해 직지인심 견성성불을 표방하는 선종 문파 정립.', '동아시아 선불교와 화두 참선 수행의 표준 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-scots-unification-kenneth', '케네스 맥알핀의 스코틀랜드 왕국(알바 왕국) 통일 (843년)', '케네스 맥알핀의 스코틀랜드 왕국(알바 왕국) 통일 (843년)', 'WEST', '', 'POLITICS', 'C', 843, 843, 'exact', '스코트족과 픽트족을 통합하여 운명의 돌(Stone of Scone) 위에서 대관식을 올리고 스코틀랜드 왕국 건국.', '스코틀랜드 단일 민족 왕국의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-treaty-of-verdun', '베르됭 조약 (프랑크 왕국의 3분할, 843년)', '베르됭 조약 (프랑크 왕국의 3분할, 843년)', 'WEST', '', 'POLITICS', 'A', 843, 843, 'exact', '카롤루스 대왕의 손자 3인이 제국을 서프랑크(프랑스), 동프랑크(독일), 중프랑크(이탈리아)로 분할함.', '현대 서유럽 3대 국가의 국경선과 정체성의 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-huichang-persecution', '당무제의 회창폐불(會昌廢佛, 845년)', '당무제의 회창폐불(會昌廢佛, 845년)', 'CHINA', '', 'RELIGION', 'A', 845, 845, 'exact', '도교에 심취한 무제가 전국 4,600개 사찰을 부수고 26만 승려를 강제 환속시키며 사찰 토지와 노비 몰수.', '중국 불교 교종(경전 중심)의 치명타와 선종(참선 중심)의 주류 부상.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-doseon-pungsu', '도선국사의 풍수지리설과 비보사탑설', '도선국사의 풍수지리설과 비보사탑설', 'KOREA', '', 'RELIGION', 'B', 850, 898, 'exact', '한반도의 지형과 산세를 파악하여 국가와 가문의 길흉화복을 점치고 부족한 기운을 절과 탑으로 보완하는 풍수사상 정립.', '경주 중심 천하관을 깨고 송악(개성) 등 지방 호족의 길지 의식 고취(왕건 건국의 모태).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-celadon-yue-ware', '월주요 비색(秘色) 청자의 탄생', '월주요 비색(秘色) 청자의 탄생', 'CHINA', '', 'ART_CULTURE', 'C', 850, 900, 'exact', '절강성 월주요에서 옥과 같은 신비로운 푸른빛을 내는 비색 청자를 황실 공진품으로 제작.', '고려청자 발전에 결정적 기술적 영감 제공.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-feudalism-rise', '서유럽 봉건제(주종 관계와 장원제)의 본격 형성', '서유럽 봉건제(주종 관계와 장원제)의 본격 형성', 'WEST', '', 'INSTITUTION', 'B', 850, 900, 'exact', '바이킹과 마자르족의 침략에 맞서 기사 계급이 영주와 쌍무적 계약을 맺고 농노를 지배하는 장원 경제 확산.', '중세 서유럽 사회·경제 질서의 확고한 뼈대 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-university-of-al-qarawiyyin', '모로코 페스 알 카라윈 대학교 설립 (859년)', '모로코 페스 알 카라윈 대학교 설립 (859년)', 'WEST', '', 'SCIENCE', 'C', 859, 859, 'exact', '무슬림 여성 파티마 알 피흐리가 모로코에 설립한 현존하는 세계에서 가장 오래된 연속 운영 고등교육기관.', '유네스코와 기네스북 공인 세계 최초의 대학.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-rurik-rus-founding', '루리크의 노브고로드 정착과 키예프 루스(러시아 기원) 건국', '루리크의 노브고로드 정착과 키예프 루스(러시아 기원) 건국', 'WEST', '', 'POLITICS', 'A', 862, 882, 'exact', '바랑기아인(스웨덴계 바이킹) 루리크가 슬라브족의 초청으로 노브고로드에 정착하고 올레크가 키예프를 수도로 제국 건국.', '러시아, 우크라이나, 벨라루스의 역사적 기원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-cyril-methodius-alphabet', '성 키릴루스와 메토디우스의 키릴 문자(슬라브 문자) 창제', '성 키릴루스와 메토디우스의 키릴 문자(슬라브 문자) 창제', 'WEST', '', 'ART_CULTURE', 'A', 863, 867, 'exact', '모라비아 슬라브족 선교를 위해 그리스 문자를 변형한 글라골 문자 및 키릴 문자를 만들어 성경 번역.', '동유럽과 러시아 정교회 슬라브 문자 문화권의 창시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-photian-schism', '포티오스 분열과 동서 교회의 갈등 격화', '포티오스 분열과 동서 교회의 갈등 격화', 'WEST', '', 'RELIGION', 'C', 863, 867, 'exact', '콘스탄티노폴리스 총대주교 포티오스와 로마 교황 니콜라오 1세가 필리오케(성령 발출) 논쟁과 교구권을 두고 상호 파문.', '1054년 동서 교회 대분열의 직접적 도화선.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-diamond-sutra-woodblock', '돈황 장경동 『금강반야바라밀경』 목판 인쇄 (868년)', '돈황 장경동 『금강반야바라밀경』 목판 인쇄 (868년)', 'CHINA', '', 'SCIENCE', 'A', 868, 868, 'exact', '왕개가 부모를 위해 제작한 정밀한 삽화(변상도)가 포함된 연대가 명시된 세계 최고(最古)의 목판 인쇄 도서.', '영국 대영도서관 소장 세계 인쇄술의 국보급 유물.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-treaty-of-meerssen', '메르센 조약 (870년)', '메르센 조약 (870년)', 'WEST', '', 'POLITICS', 'B', 870, 870, 'exact', '로타링기아(중프랑크)를 서프랑크와 동프랑크가 재분할하여 라인강을 중심으로 프랑스와 독일의 기본 국경 형성.', '독일-프랑스 국경 분쟁의 천년 도화선(알자스-로렌 문제).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce9-alfred-the-great', '알프레드 대왕의 데인족(바이킹) 격퇴와 잉글랜드 통일 기틀', '알프레드 대왕의 데인족(바이킹) 격퇴와 잉글랜드 통일 기틀', 'WEST', '', 'POLITICS', 'A', 871, 899, 'exact', '에딩턴 전투에서 바이킹 구스룸을 굴복시키고 데인로를 설정하며 해군 창설 및 앵글로색슨 연대기 편찬.', '영국 역사상 유일하게 ''대왕(the Great)'' 칭호를 받은 잉글랜드의 국부.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-choe-chiwon-gyeowon', '최치원의 당나라 빈공과 수석 및 토황소격문 (879년)', '최치원의 당나라 빈공과 수석 및 토황소격문 (879년)', 'KOREA', '', 'ART_CULTURE', 'A', 874, 894, 'exact', '18세에 당나라 과거에 급제하고 『격황소서』로 황소를 간담 서늘케 한 후 귀국하여 『계원필경』 저술 및 진성여왕에게 시무 10조 건의.', '신라 6두품 지식인의 최고봉이자 한국 한문학의 시조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce9-huang-chao-rebellion', '황소의 난(黃巢之亂)과 당나라의 실질적 멸망 (875~884년)', '황소의 난(黃巢之亂)과 당나라의 실질적 멸망 (875~884년)', 'CHINA', '', 'POLITICS', 'A', 875, 884, 'exact', '소금 밀매업자 황소가 수십만 유민을 규합해 낙양과 장안을 점령하고 황제를 칭함.', '당나라 전역의 지배력 완전 소멸 및 5대 10국 군벌 난립의 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-goryeo-taejo-wanggeon-birth', '송악 호족 왕건(고려 태조)의 탄생과 해상 세력 성장 (877년)', '송악 호족 왕건(고려 태조)의 탄생과 해상 세력 성장 (877년)', 'KOREA', '', 'POLITICS', 'C', 877, 900, 'exact', '예성강 하구 무역 호족 왕륭의 아들로 왕건이 출생하여 궁예의 휘하에서 나주를 수군으로 점령하는 등 두각.', '고려 왕조 창업 주역의 대두.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-gwon-gwang-wonjong-aeno', '원종·애노의 난과 신라 전역의 농민 대봉기 (889년)', '원종·애노의 난과 신라 전역의 농민 대봉기 (889년)', 'KOREA', '', 'POLITICS', 'A', 889, 889, 'exact', '진성여왕 시기 재정 파탄으로 관리들이 강압적으로 세금을 독촉하자 사벌주(상주)에서 전국적 농민 봉기 폭발.', '신라 중앙 정부의 지방 통제력 완전 상실과 호족 발흥.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce9-later-three-kingdoms-origin', '후삼국 시대 개막 (견훤의 후백제 완산주 건국, 892/900년)', '후삼국 시대 개막 (견훤의 후백제 완산주 건국, 892/900년)', 'KOREA', '', 'POLITICS', 'A', 892, 900, 'exact', '신라 서남해 군인 출신 견훤이 무진주를 거쳐 전주(완산주)에서 백제 부흥을 기치로 후백제를 건국함.', '신라 천년 사직의 해체와 후삼국 분열의 본격화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-five-dynasties-ten-kingdoms', '주전충의 당 멸망과 5대 10국 시대 개막 (907년)', '주전충의 당 멸망과 5대 10국 시대 개막 (907년)', 'CHINA', '', 'POLITICS', 'A', 907, 960, 'exact', '절도사 주전충이 당 애제를 폐위하고 후량을 세우며 50여 년간 군벌들이 황제를 참칭하는 혼란기 돌입.', '당나라 귀족 계급의 완전한 몰락과 서민 사대부 사회로의 이행기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-cluny-reform-movement', '클뤼니 수도원 창설과 교회 개혁 운동 (910년)', '클뤼니 수도원 창설과 교회 개혁 운동 (910년)', 'WEST', '', 'RELIGION', 'A', 910, 999, 'exact', '교황에게 직속된 아키텐 클뤼니 수도원이 성직매매(시모니)와 세속 군주의 성직 임명권에 맞서 영적 쇄신 주도.', '중세 가톨릭 교회의 도덕적 독립과 그레고리우스 개혁의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-normandy-duchy-rollo', '생클레르쉬렙트 조약과 노르망디 공국 성립 (911년)', '생클레르쉬렙트 조약과 노르망디 공국 성립 (911년)', 'WEST', '', 'POLITICS', 'B', 911, 911, 'exact', '서프랑크 샤를 3세가 바이킹 수장 롤로에게 노르망디 영토를 봉토로 주고 기독교로 개종시킴.', '노르만족의 프랑스 정착 및 후대 영국 정복(1066)과 시칠리아 왕국 건설의 주역 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-khitan-liao-founding', '야율아보기의 거란(요) 건국과 연운 16주 차지 (916/936년)', '야율아보기의 거란(요) 건국과 연운 16주 차지 (916/936년)', 'CHINA', '', 'POLITICS', 'A', 916, 947, 'exact', '거란 8부를 통합해 요나라를 세우고 후진 석경당으로부터 만리장성 이남의 연운 16주를 할양받음.', '북방 유목 민족이 농경지를 직접 지배하는 이중 통치 체제(북면관·남면관) 정립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-wanggeon-goryeo-founding', '태조 왕건의 고려 건국 (918년) 및 훈요 10조', '태조 왕건의 고려 건국 (918년) 및 훈요 10조', 'KOREA', '', 'POLITICS', 'A', 918, 943, 'exact', '궁예를 축출하고 송악에서 고려를 건국(918)하여 북진 정책, 융합 정책, 불교 숭상을 담은 『훈요 10조』 반포.', '500년 고려 왕조의 개막과 민족 재통일의 중심축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-palgwanhoe-yeondeunghoe', '팔관회와 연등회의 국가적 정례화', '팔관회와 연등회의 국가적 정례화', 'KOREA', '', 'RELIGION', 'B', 918, 990, 'exact', '부처를 기리는 연등회와 토속 천지신명·명산대천을 위무하고 국제 무역을 겸하는 팔관회를 국경일로 거행.', '고려 고유의 다원적 종교·문화 정체성 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('goryeo-founding-metal-type', '고려 건국과 세계 최초 금속활자 발명', 'Goryeo Dynasty & Invention of Movable Metal Type', 'KOREA', '고려', 'SCIENCE', 'A', 918, 1234, 'range', '왕건의 고려 건국(918) 이후 1234년 이전 『상정고금예문』을 인쇄하며 서양보다 200여 년 앞서 금속활자를 발명함.', '지식의 대량 복제와 보존에서 인류 역사상 획기적인 기술적 도약을 이룩함.', '전란으로 소실된 서적 복구 필요성과 우수한 청동 주조 기술.', '현존 최고 금속활자본 『직지심체요절』(1377) 간행.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-khitan-scripts', '거란 대자·거란 소자 문자 창제', '거란 대자·거란 소자 문자 창제', 'CHINA', '', 'ART_CULTURE', 'C', 920, 925, 'exact', '한자의 붓질을 응용하여 독자적인 거란어 표기 문자 제정.', '북방 정복 왕조들의 독자적 민족 문자 창제 유행 촉발(여진문자·서하문자).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-unification-later-three', '고려의 후삼국 통일 (936년)과 발해 유민 포용 (926년)', '고려의 후삼국 통일 (936년)과 발해 유민 포용 (926년)', 'KOREA', '', 'POLITICS', 'A', 926, 936, 'exact', '신라 경순왕의 자진 투항(935)과 일리천 전투에서 후백제 신검을 격파(936)하고, 거란에 멸망한 발해 세자 대광현 등 10만 유민을 포용.', '고구려·백제·신라·발해를 아우른 진정한 민족의 완전한 재통합 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-fall-of-balhae', '발해의 멸망 (거란 침공, 926년)과 만부교 사건 (942년)', '발해의 멸망 (거란 침공, 926년)과 만부교 사건 (942년)', 'KOREA', '', 'POLITICS', 'A', 926, 942, 'exact', '거란 야율아보기의 기습으로 228년 만에 홀한성이 함락되고, 왕건은 거란의 낙타 50필을 만부교에 굶겨 죽이며 단교.', '동북아 북방 제국의 비극적 해체와 고려의 대거란 적대시 정책 확정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-athelstan-first-king-england', '애설스탠의 브루난버 전투 승리와 잉글랜드 최초 국왕 (937년)', '애설스탠의 브루난버 전투 승리와 잉글랜드 최초 국왕 (937년)', 'WEST', '', 'POLITICS', 'B', 927, 939, 'exact', '바이킹-스코트 연합군을 격파하고 앵글로색슨 7왕국을 완전 통합하여 스스로 ''전 브리튼의 왕'' 선포.', '단일 잉글랜드 왕국의 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-woodblock-printing-classics', '풍도의 9경 목판 대량 인쇄 (932~953년)', '풍도의 9경 목판 대량 인쇄 (932~953년)', 'CHINA', '', 'SCIENCE', 'A', 932, 953, 'exact', '후당 재상 풍도의 주도로 유교 130권 경전을 목판 인쇄하여 전국 서원과 학교에 보급.', '지식의 민주화와 서적 출판 혁명 촉진.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-gyeon-hwon-goryeo-submission', '견훤의 고려 투항과 후백제의 최후', '견훤의 고려 투항과 후백제의 최후', 'KOREA', '', 'POLITICS', 'B', 935, 936, 'exact', '아들 신검에게 금산사에 유폐된 견훤이 탈출하여 왕건에게 투항하고 친히 군대를 이끌고 후백제를 멸망시킴.', '후삼국 통일의 극적인 전환점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-goryeo-celadon-origin', '고려 초기 초기청자(녹청자·햇무리굽 청자) 가마 번영', '고려 초기 초기청자(녹청자·햇무리굽 청자) 가마 번영', 'KOREA', '', 'ART_CULTURE', 'C', 950, 1000, 'exact', '강진과 부안 일대 벽돌가마에서 중국 월주요 기술을 수용하여 고려 비색 순청자의 토대 구축.', '세계 최고 수준의 고려청자 예술 탄생의 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-otto-holy-roman-empire', '오토 1세의 레히펠트 전투 승리와 신성로마제국 성립 (962년)', '오토 1세의 레히펠트 전투 승리와 신성로마제국 성립 (962년)', 'WEST', '', 'POLITICS', 'A', 955, 962, 'exact', '마자르족(헝가리)을 레히펠트에서 섬멸하고 교황 요한 12세로부터 로마 황제관을 받아 신성로마제국 개창.', '1806년까지 840년간 지속될 중유럽 제국 체제의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-gwangjong-reforms', '고려 광종의 노비안검법(956)과 과거제 실시(958)', '고려 광종의 노비안검법(956)과 과거제 실시(958)', 'KOREA', '', 'INSTITUTION', 'A', 956, 958, 'exact', '호족들이 불법으로 차지한 노비를 해방(노비안검법)하고 쌍기의 건의로 능력 본위 과거제 도입 및 독자 연호 ''광덕·준풍'' 사용.', '호족 세력을 억누르고 강력한 황제권과 관료 국가 체제 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-song-dynasty-founding', '조광윤의 송(宋)나라 건국과 진교변병 (960년)', '조광윤의 송(宋)나라 건국과 진교변병 (960년)', 'CHINA', '', 'POLITICS', 'A', 960, 979, 'exact', '후주의 근위대장 조광윤이 부하들의 황포를 입고 추대되어 송을 건국하고 배주석병권으로 군벌 무장해제.', '300년 송나라 번영과 과거 중심 문치주의(文治主義) 국가 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-al-zahrawi-surgery', '알 자흐라위의 『알 타스리프(의학 집대성)』', '알 자흐라위의 『알 타스리프(의학 집대성)』', 'WEST', '', 'SCIENCE', 'C', 960, 1000, 'exact', '코르도바의 궁정 의사가 200여 종의 외과 수술 도구(메스, 겸자, 녹는 실)를 고안하고 외과학의 기초를 닦음.', '근대 외과학의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('song-dynasty-inventions', '송나라 3대 발명 (화약, 나침반, 활판인쇄) 및 성리학 태동', 'Song Dynasty Tech (Gunpowder, Compass) & Neo-Confucianism', 'CHINA', '송(宋)', 'SCIENCE', 'A', 960, 1279, 'exact', '송나라의 경제적·학문적 번영 속에서 화약, 나침반, 교초(지폐)가 실용화되고 주희에 의해 성리학이 집대성됨.', '화약과 나침반은 아랍을 거쳐 서유럽에 전파되어 대항해시대와 근대 군사 혁명의 원동력이 됨.', '문치주의 정책과 상업·해상 무역의 팽창.', '몽골 제국의 침략으로 멸망하나 기술은 세계로 확산.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-al-hakam-cordoba-library', '코르도바 알 하캄 2세 도서관 (40만 권 장서)', '코르도바 알 하캄 2세 도서관 (40만 권 장서)', 'WEST', '', 'SCIENCE', 'C', 961, 976, 'exact', '유럽에서 가장 큰 도서관을 세우고 의학, 천문학, 수학 서적을 수집하여 서유럽 지식인들이 유학 옴.', '이베리아 반도가 유럽 르네상스의 지식 전달 파이프라인 역할 수행.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-southern-tang-li-yu', '남당 이욱의 사(詞) 문학 절정', '남당 이욱의 사(詞) 문학 절정', 'CHINA', '', 'ART_CULTURE', 'B', 961, 978, 'exact', '망국의 군주 이욱이 『우미인』, 『상견환』 등 애절한 망국의 한을 노래하여 사(詞)를 최고의 문학 장르로 격상.', '송사(宋詞) 문학의 찬란한 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-fatimid-caliphate-cairo', '파티마 왕조의 카이로 건설과 알 아즈하르 모스크 설립 (969/970년)', '파티마 왕조의 카이로 건설과 알 아즈하르 모스크 설립 (969/970년)', 'WEST', '', 'POLITICS', 'B', 969, 970, 'exact', '시아파 파티마 왕조가 이집트를 정복하고 ''승리의 도시'' 카이로를 건설하여 세계적인 알 아즈하르 이슬람 대학 설립.', '이슬람 세계의 3대 칼리프(바그다드·코르도바·카이로) 분립 시대.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-song-civil-bureaucracy', '송나라 전시(殿試) 제도와 사대부 관료제 확립', '송나라 전시(殿試) 제도와 사대부 관료제 확립', 'CHINA', '', 'INSTITUTION', 'A', 973, 973, 'exact', '황제가 직접 주재하는 최종 시험인 전시를 도입하여 황제 독재권을 강화하고 사대부 계층을 지배층으로 육성.', '무인 통치를 종식시키고 유교 지식인 중심의 합리적 관료제 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-jeonsigwa-land-system', '고려 경종의 시정 전시과(田柴科) 제정 (976년)', '고려 경종의 시정 전시과(田柴科) 제정 (976년)', 'KOREA', '', 'INSTITUTION', 'B', 976, 976, 'exact', '전·현직 관리에게 인품과 관직에 따라 전지(곡물 수취)와 시지(땔감 채취지)를 차등 지급하는 토지 제도 확립.', '고려 관료층의 경제적 생활 기반 보장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-taiping-yulan', '송태종의 1천 권 백과사전 『태평어람(太平御覽)』 편찬', '송태종의 1천 권 백과사전 『태평어람(太平御覽)』 편찬', 'CHINA', '', 'ART_CULTURE', 'B', 977, 983, 'exact', '이방 등이 고대 서적 1,690종을 인용하여 1,000권에 달하는 방대한 유서(類書) 완성.', '송대 문화적 자신감과 실전된 고서들의 보존.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-mariner-compass-navigation', '인공 자화 지남침(나침반)의 항해술 적용 시작', '인공 자화 지남침(나침반)의 항해술 적용 시작', 'CHINA', '', 'SCIENCE', 'B', 980, 1000, 'exact', '자철석 천연 나침반에서 인공 자화 쇠바늘(수남침)을 만들어 안개 낀 바다 항해에 사용.', '세계 해양 대항해 시대를 연 핵심 원천 기술.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-seongjong-choe-seungno', '고려 성종의 유교적 통치 개혁 (최승로 시무 28조·12목 설치)', '고려 성종의 유교적 통치 개혁 (최승로 시무 28조·12목 설치)', 'KOREA', '', 'INSTITUTION', 'A', 981, 997, 'exact', '유학자 최승로의 시무 28조를 수용하여 2성 6부제, 전국 12목에 지방관 파견, 국자감 정비, 의창·상평창 설치.', '고려의 유교적 중앙집권 관제와 지방 행정망의 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-erik-the-red-greenland', '붉은 에리크의 그린란드 발견과 바이킹 정착 (982년)', '붉은 에리크의 그린란드 발견과 바이킹 정착 (982년)', 'WEST', '', 'SCIENCE', 'C', 982, 986, 'exact', '아이슬란드에서 추방된 에리크가 서쪽으로 항해하여 그린란드를 발견하고 정착촌 건설.', '북미 대륙 탐험(레이프 에릭손 빈란드 발견)의 징검다리.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-hugh-capet-france', '위그 카페의 즉위와 카페 왕조 성립 (987년)', '위그 카페의 즉위와 카페 왕조 성립 (987년)', 'WEST', '', 'POLITICS', 'A', 987, 987, 'exact', '카롤링거 왕조 단절 후 파리 백작 위그 카페가 프랑스 국왕으로 선출되어 세습 왕조 개창.', '프랑스 왕국의 영속적 기틀 마련(프랑스 혁명기까지 카페 가문 지배).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce10-vladimir-christianization-rus', '블라디미르 1세의 키예프 루스 기독교(동방정교회) 수용 (988년)', '블라디미르 1세의 키예프 루스 기독교(동방정교회) 수용 (988년)', 'WEST', '', 'RELIGION', 'A', 988, 988, 'exact', '비잔틴 제국의 안나 공주와 혼인하고 드네프르강에서 전 주민에게 집단 세례를 베풀어 정교회 국교화.', '러시아·동슬라브 문명이 비잔틴 정교회 문화권에 편입된 역사적 분기점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce10-champa-rice-spread', '베트남 참파 조생종 벼(점성도)의 강남 도입', '베트남 참파 조생종 벼(점성도)의 강남 도입', 'CHINA', '', 'SCIENCE', 'C', 990, 1000, 'exact', '가뭄에 강하고 생육 기간이 60일에 불과한 참파 벼를 도입하여 이모작 가능화.', '송대 강남 인구 폭발과 농업 혁명의 원동력.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce10-seo-hui-diplomacy', '서희의 외교 담판과 강동 6주 획득 (993년)', '서희의 외교 담판과 강동 6주 획득 (993년)', 'KOREA', '', 'POLITICS', 'A', 993, 993, 'exact', '거란 소손녕의 80만 침략군에 맞서 서희가 고구려 계승권을 당당히 주장하며 피 한 방울 흘리지 않고 압록강변 강동 6주를 획득.', '한국 외교사상 가장 위대한 담판이자 압록강 국경선 확보.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-chanyuan-treaty', '송·요의 전연의 맹(澶淵之盟, 1004년)', '송·요의 전연의 맹(澶淵之盟, 1004년)', 'CHINA', '', 'POLITICS', 'A', 1004, 1005, 'exact', '송진종과 요성종이 전주에서 맹약을 맺고 송이 매년 세폐(은 10만 냥, 비단 20만 필)를 지급하는 대가로 100년 평화 확보.', '경제력으로 평화를 사는 송대 실리 외교의 전형.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-hyeonjong-administrative-reform', '고려 현종의 5도 양계 및 주현·속현 지방 제도 확립', '고려 현종의 5도 양계 및 주현·속현 지방 제도 확립', 'KOREA', '', 'INSTITUTION', 'B', 1009, 1031, 'exact', '거란 침략 극복 후 전국을 일반 행정구역 5도와 군사 행정구역 양계(북계·동계)로 나누고 향리 정원제 제정.', '조선시대 8도 체제의 모태가 된 고려의 완벽한 지방 제도 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-first-tripitaka-koreana', '고려 초조대장경(初雕大藏經) 조판 시작 (1011년)', '고려 초조대장경(初雕大藏經) 조판 시작 (1011년)', 'KOREA', '', 'ART_CULTURE', 'B', 1011, 1087, 'exact', '거란의 침략을 부처의 가호로 격퇴하고자 6천여 권에 달하는 거대한 대장경 목판 조판 착수.', '고려 목판 인쇄 기술의 집약체이자 팔만대장경의 원형.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-avicenna-canon-of-medicine', '이븐 시나(아비센나)의 『의학정전(The Canon of Medicine)』', '이븐 시나(아비센나)의 『의학정전(The Canon of Medicine)』', 'WEST', '', 'SCIENCE', 'B', 1012, 1025, 'exact', '그리스 의학과 아랍 임상 경험을 융합한 14권의 의학 백과사전으로 전염병 격리, 암 수술법 기술.', '유럽 의과대학에서 600년간 표준 교재로 사용.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-gang-gamchan-gwiju', '강감찬 장군의 귀주대첩 (고려-거란 전쟁 종결, 1019년)', '강감찬 장군의 귀주대첩 (고려-거란 전쟁 종결, 1019년)', 'KOREA', '', 'POLITICS', 'A', 1018, 1019, 'exact', '거란 소배압의 10만 정예 침략군을 흥화진 수공에 이어 귀주 벌판에서 배후 기병 협공으로 전멸시킴(수천 명만 생환).', '고려를 동북아 세력 균형의 중심 패권국으로 우뚝 세운 구국의 대승.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-byeongnando-international-port', '국제 무역항 벽란도(碧瀾渡)와 ''KOREA'' 국호 전파', '국제 무역항 벽란도(碧瀾渡)와 ''KOREA'' 국호 전파', 'KOREA', '', 'ECONOMY', 'B', 1020, 1100, 'exact', '예성강 하구 벽란도에 송나라 상단뿐 아니라 이슬람 아라비아 상인(대식국인)들이 수은, 향료를 싣고 왕래하며 고려를 서방에 소개.', '세계 만방에 ''Corea / Korea''라는 이름이 알려진 무역 중심지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-jiaozi-paper-money', '사천성 ''교자(交子)'' 발행 (세계 최초의 지폐, 1024년)', '사천성 ''교자(交子)'' 발행 (세계 최초의 지폐, 1024년)', 'CHINA', '', 'ECONOMY', 'B', 1024, 1024, 'exact', '무거운 철전의 불편을 해소하기 위해 사천 상인들이 발행하던 교자를 송나라 정부가 공인하여 국가 지폐로 발행.', '인류 경제사상 최초의 법정 지폐 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-cheollijangseong-wall', '고려 천리장성 축조 (압록강구~도련포, 1033~1044년)', '고려 천리장성 축조 (압록강구~도련포, 1033~1044년)', 'KOREA', '', 'INSTITUTION', 'A', 1033, 1044, 'exact', '덕종·정종 시기 유소의 지휘로 압록강 하구에서 동해안 정평 도련포까지 석조 장성을 쌓아 거란과 여진의 침입 완전 차단.', '고려의 확고한 북방 영토 방어선 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-western-xia-founding', '이원호의 서하(西夏) 건국과 서하문자 제정 (1038년)', '이원호의 서하(西夏) 건국과 서하문자 제정 (1038년)', 'CHINA', '', 'POLITICS', 'B', 1038, 1038, 'exact', '탕구트족 이원호가 황제를 칭하고 하서주랑을 장악하여 송과 요 사이에서 삼국 정립 구도 형성.', '실크로드 통제권을 둘러싼 다극 체제 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-movable-type-bi-sheng', '필승(畢昇)의 교니 활판 인쇄술 발명 (1040년대)', '필승(畢昇)의 교니 활판 인쇄술 발명 (1040년대)', 'CHINA', '', 'SCIENCE', 'A', 1041, 1048, 'exact', '점토를 구워 활자를 만들고 송진과 밀랍으로 조판하는 세계 최초의 가동 활판 인쇄 기술 개발.', '구텐베르크보다 400년 앞선 활판 인쇄 기술의 원류.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-munjong-golden-age', '고려 문종의 황금기 (37년 태평성대와 12도 번영)', '고려 문종의 황금기 (37년 태평성대와 12도 번영)', 'KOREA', '', 'POLITICS', 'A', 1046, 1083, 'exact', '법률과 전시과를 정비하고, 중국 송·요·일본·아라비아 상인(벽란도)과 교류하며 사학 12도와 국자감이 공존하는 문화 번영 구가.', '고려 왕조 500년 역사상 최고의 평화와 문화적 융성기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-yangsan-tongdosa-precepts', '양산 통도사와 금강계단 불사리 봉안', '양산 통도사와 금강계단 불사리 봉안', 'KOREA', '', 'RELIGION', 'C', 1050, 1100, 'exact', '자장율사가 가져온 진신사리를 모신 통도사 금강계단이 국가 최고의 계율 사찰로 정비됨.', '한국 삼보사찰(불보사찰)의 확고한 위상 정립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-east-west-schism', '동서 교회의 대분열 (1054년 상호 파문)', '동서 교회의 대분열 (1054년 상호 파문)', 'WEST', '', 'RELIGION', 'A', 1054, 1054, 'exact', '로마 교황의 사절 훔베르트 추기경과 콘스탄티노폴리스 총대주교 케룰라리오스가 성 소피아 성당 제단에 상호 파문장 투척.', '서방 로마 가톨릭과 동방 정교회(Eastern Orthodox)의 영구적 결별.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-choe-chung-nine-studies', '해동공자 최충의 문헌공도(9재 학당) 설립', '해동공자 최충의 문헌공도(9재 학당) 설립', 'KOREA', '', 'SCIENCE', 'A', 1055, 1055, 'exact', '최고 관직을 사임한 최충이 사립 고등교육기관 9재 학당을 세워 9경과 삼사를 가르쳐 과거 합격자 대거 배출.', '고려 사학(私學) 12도의 전성기를 열고 유학 교육 진흥.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-sima-guang-zizhi-tongjian', '사마광의 『자치통감(資治通鑑)』 편찬 (1084년)', '사마광의 『자치통감(資治通鑑)』 편찬 (1084년)', 'CHINA', '', 'ART_CULTURE', 'A', 1065, 1084, 'exact', '전국시대부터 5대까지 1,362년의 역사를 편년체로 서술하여 군주의 통치 거울로 삼게 한 294권의 대작.', '사마천의 사기와 쌍벽을 이루는 편년체 역사학의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-norman-conquest-hastings', '노르만 정복과 헤이스팅스 전투 (1066년)', '노르만 정복과 헤이스팅스 전투 (1066년)', 'WEST', '', 'POLITICS', 'A', 1066, 1066, 'exact', '노르망디 공작 윌리엄(정복왕)이 해럴드 2세를 헤이스팅스에서 전사시키고 잉글랜드 국왕으로 즉위.', '프랑스-노르만 문화 유입, 현대 영어의 형성 및 둠즈데이 북(토지조사서) 편찬.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-wang-anshi-reforms', '왕안석의 신법(新法) 부국강병 개혁 (1069년)', '왕안석의 신법(新法) 부국강병 개혁 (1069년)', 'CHINA', '', 'INSTITUTION', 'A', 1069, 1085, 'exact', '청묘법(저리 대출), 시역법(중소상인 보호), 모역법, 보갑법을 추진하여 대지주·대상인을 억누르고 국가 재정 확충 시도.', '동양 역사상 가장 급진적이고 체계적인 국가 개혁 시도(신법파 vs 사마광의 구법파 대립).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-zhou-dunyi-taiji', '주돈이의 『태극도설』과 신유학(성리학) 태동', '주돈이의 『태극도설』과 신유학(성리학) 태동', 'CHINA', '', 'RELIGION', 'C', 1070, 1073, 'exact', '무극이태극(無極而太極)의 우주론과 인간 본성의 도덕성을 결합하여 주희 성리학의 철학적 기초 제공.', '송학(성리학)의 비조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-bayeux-tapestry', '바이외 태피스트리(Bayeux Tapestry) 완성', '바이외 태피스트리(Bayeux Tapestry) 완성', 'WEST', '', 'ART_CULTURE', 'C', 1070, 1080, 'exact', '노르만 정복과 핼리 혜성 출현, 중세 무기 장비를 70m 길이의 아마포에 자수로 수놓은 기록 예술.', '중세 시각 예술과 역사 기록의 최고 유물.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-battle-of-manzikert', '만지케르트 전투 (셀주크 튀르크의 비잔틴 대파, 1071년)', '만지케르트 전투 (셀주크 튀르크의 비잔틴 대파, 1071년)', 'WEST', '', 'POLITICS', 'A', 1071, 1071, 'exact', '알프 아르슬란의 셀주크 튀르크군이 로마노스 4세 황제를 사로잡고 소아시아(아나톨리아) 전역을 장악함.', '비잔틴 제국의 치명적 쇠퇴와 십자군 원정 요청의 직접적 원인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-walk-to-canossa', '카노사의 굴욕 (교황 그레고리우스 7세 vs 하인리히 4세, 1077년)', '카노사의 굴욕 (교황 그레고리우스 7세 vs 하인리히 4세, 1077년)', 'WEST', '', 'POLITICS', 'A', 1077, 1077, 'exact', '서임권 투쟁 중 파문당한 신성로마 황제 하인리히 4세가 눈 덮인 카노사 성문 밖에서 3일간 무릎 꿇고 용서를 빎.', '교황권이 세속 황제권을 압도한 중세 최고 권력의 상징적 사건.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-anselm-ontological-argument', '캔터베리의 안셀무스의 신 존재 증명과 스콜라 철학', '캔터베리의 안셀무스의 신 존재 증명과 스콜라 철학', 'WEST', '', 'RELIGION', 'B', 1078, 1093, 'exact', '''이해하기 위해 믿는다(Credo ut intelligam)''를 선언하고 존재론적 신 증명 제시.', '스콜라 철학의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-su-shi-su-dongpo', '소식(소동파)의 적벽부와 문인화 예술', '소식(소동파)의 적벽부와 문인화 예술', 'CHINA', '', 'ART_CULTURE', 'B', 1080, 1101, 'exact', '시, 서예, 그림, 산문에 모두 능통한 천재 문인으로 『전·후적벽부』를 짓고 동파육(요리) 등 풍류 만개.', '동양 사대부 예술의 최고 완성자.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-el-cid-reconquista', '엘 시드(로드리고 디아스)의 발렌시아 정복과 레콩키스타', '엘 시드(로드리고 디아스)의 발렌시아 정복과 레콩키스타', 'WEST', '', 'POLITICS', 'B', 1085, 1094, 'exact', '카스티야의 국민 영웅 엘 시드가 무어인을 격파하고 발렌시아를 탈환하며 국토회복운동 주도.', '스페인 중세 기사도 문학 『엘 시드의 노래』 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-uicheon-cheontae-buddhism', '대각국사 의천의 천태종 개창과 교장(속장경) 간행', '대각국사 의천의 천태종 개창과 교장(속장경) 간행', 'KOREA', '', 'RELIGION', 'A', 1085, 1101, 'exact', '문종의 왕자 의천이 송나라에 유학 후 교종 중심으로 선종을 포용하는 천태종을 개창하고 4천여 권의 『신편제종교장총록』(교장) 간행.', '고려 불교 종파 융합과 동아시아 불교 학술의 집대성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-shen-kuo-dream-pool', '심괄의 『몽계필담(夢溪筆談)』과 나침반 편각 발견', '심괄의 『몽계필담(夢溪筆談)』과 나침반 편각 발견', 'CHINA', '', 'SCIENCE', 'A', 1086, 1093, 'exact', '자침이 진북을 가리키지 않고 약간 기운다는 자편각(Magnetic Declination)을 인류 최초로 기록하고 석유, 지질학, 천문학 해설.', '중국 고대 과학 기술의 백과사전적 최고 저작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-university-of-bologna', '이탈리아 볼로냐 대학교 설립 (1088년)', '이탈리아 볼로냐 대학교 설립 (1088년)', 'WEST', '', 'SCIENCE', 'A', 1088, 1088, 'exact', '학생 길드 중심으로 로마법(유스티니아누스 법전)을 연구하는 유럽 최초의 대학 개교.', '서양 고등 교육과 근대 법학의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce11-su-song-water-clock-tower', '수송의 수력 시계탑(수운의상대) 제작 (1092년)', '수송의 수력 시계탑(수운의상대) 제작 (1092년)', 'CHINA', '', 'SCIENCE', 'C', 1088, 1092, 'exact', '이스케이프먼트(탈속기) 기구와 혼천의, 시계바늘 인형을 갖춘 12m 높이의 수력 자동 천문 시계탑 완공.', '근대 기계식 시계 공학의 원형.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-assassins-alamut', '하산 사바흐의 아사신파(니자리 이스마일파) 암살단', '하산 사바흐의 아사신파(니자리 이스마일파) 암살단', 'WEST', '', 'POLITICS', 'C', 1090, 1192, 'exact', '알라무트 요새를 거점으로 십자군 군주와 이슬람 재상들을 표적 암살하며 공포를 조성.', '현대 영어 ''Assassin(암살자)''의 어원이 된 비밀 결사.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce11-first-crusade-jerusalem', '제1차 십자군 원정과 예루살렘 왕국 수립 (1095~1099년)', '제1차 십자군 원정과 예루살렘 왕국 수립 (1095~1099년)', 'WEST', '', 'POLITICS', 'A', 1095, 1099, 'exact', '교황 우르바노 2세의 클레르몽 공의회 호소로 성지 탈환에 나선 십자군이 예루살렘을 점령함.', '200년간 지속될 동서 문명 충돌의 개막과 지중해 무역 부활.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('crusades-europe', '십자군 전쟁과 지중해 교역 활성화', 'The Crusades & Mediterranean Trade', 'WEST', '서유럽/레반트', 'POLITICS', 'A', 1096, 1291, 'exact', '성지 탈환을 명분으로 일어난 서유럽 기독교 국가들의 200년에 걸친 원정으로 봉건 귀족이 몰락하고 도시와 상업이 부흥함.', '교황권 약화, 왕권 강화, 이슬람과의 접촉을 통한 고전 그리스 학문 및 아랍 과학의 서유럽 역수입.', '셀주크 튀르크의 비잔틴 압박과 교황 우르바누스 2세의 클레르몽 공의회 호소.', '이탈리아 해상도시(베네치아, 제노바) 번영과 르네상스의 토양 형성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce11-goryeo-coin-haedong-tongbo', '고려 주전도감 설치와 해동통보·삼한통보 주조', '고려 주전도감 설치와 해동통보·삼한통보 주조', 'KOREA', '', 'ECONOMY', 'C', 1097, 1102, 'exact', '의천의 건의로 숙종 때 화폐 주조 관청을 두고 동전(해동통보)과 은화(은병·활구) 주조.', '물품 화폐(쌀·포)를 넘어 금속 화폐 유통을 꾀한 경제 선진화 정책.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-along-the-river-qingming', '장택단의 『청명상하도(淸明上河圖)』', '장택단의 『청명상하도(淸明上河圖)』', 'CHINA', '', 'ART_CULTURE', 'A', 1101, 1125, 'exact', '북송 수도 변경(개봉)의 번화한 거리, 홍교 다리, 상점, 운하 배, 800여 명의 주민을 사실적으로 묘사한 5.28m 두루마리 걸작.', '송대 상업 자본주의와 도시 생활상의 국보급 시각 백과사전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-yun-gwan-byeolmuban-nine-forts', '윤관의 별무반 창설과 동북 9성 개척 (1107년)', '윤관의 별무반 창설과 동북 9성 개척 (1107년)', 'KOREA', '', 'POLITICS', 'A', 1104, 1109, 'exact', '신기군(기병), 신보군(보병), 항마군(승병)의 17만 특수군 별무반을 이끌고 여진을 몰아낸 후 함흥 평야에 동북 9성을 축조함.', '고려의 영토 확장과 여진족 제압의 쾌거.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-jurchen-jin-founding', '아골타의 여진족 금(金)나라 건국과 요 멸망 (1115/1125년)', '아골타의 여진족 금(金)나라 건국과 요 멸망 (1115/1125년)', 'CHINA', '', 'POLITICS', 'A', 1115, 1125, 'exact', '완안부 아골타가 맹안모극제를 바탕으로 금을 세우고 송과 연합하여 200년 거란 요나라를 멸망시킴.', '만주 여진족이 동아시아 최강의 패권국으로 부상.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-compass-ocean-navigation', '주욱의 『평주가담』과 나침반 해양 항해 공식 기록', '주욱의 『평주가담』과 나침반 해양 항해 공식 기록', 'CHINA', '', 'SCIENCE', 'B', 1119, 1119, 'exact', '광저우에서 출항하는 원양 무역선이 낮에는 태양, 밤에는 별, 흐린 날에는 나침반을 보고 항해한다고 명기.', '나침반을 이용한 대양 원양 항해술의 세계 최초 공식 문헌.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-southern-song-ceramics', '송대 5대 명요(관요·가요·여요·정요·균요) 도자기 만개', '송대 5대 명요(관요·가요·여요·정요·균요) 도자기 만개', 'CHINA', '', 'ART_CULTURE', 'C', 1120, 1200, 'exact', '절제된 형태미와 은은한 빙렬(크랙), 옥빛 유약으로 미니멀리즘 도예의 극치를 이룸.', '중국 고전 도자기 미학의 정점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-peter-abelard-scholasticism', '피에르 아벨라르의 『예와 아니오(Sic et Non)』', '피에르 아벨라르의 『예와 아니오(Sic et Non)』', 'WEST', '', 'RELIGION', 'B', 1121, 1142, 'exact', '교부들의 모순된 158개 명제를 변증법적 의문과 이성적 비판으로 조화시키려 한 명목론(개념론) 철학자.', '비판적 질문과 논증을 중시하는 스콜라 학문 방법론 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-concordat-of-worms', '보름스 협약 (서임권 투쟁의 타협, 1122년)', '보름스 협약 (서임권 투쟁의 타협, 1122년)', 'WEST', '', 'INSTITUTION', 'A', 1122, 1122, 'exact', '교황 갈리스토 2세와 황제 하인리히 5세가 성직 서임권(반지와 지팡이)은 교회가, 세속 영지 수여는 황제가 분리 담당하기로 합의.', '교회와 국가의 기능적 분리를 규정한 역사적 타협.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-lee-jagyeom-rebellion', '이자겸의 난과 인주 이씨 외척 세도정치 (1126년)', '이자겸의 난과 인주 이씨 외척 세도정치 (1126년)', 'KOREA', '', 'POLITICS', 'B', 1126, 1126, 'exact', '딸들을 3대에 걸쳐 왕비로 들인 최고 권력자 이자겸이 척준경과 결탁해 궁궐을 불태우고 왕위를 찬탈하려다 몰락.', '고려 문벌 귀족 사회의 부패와 내부 모순의 극치.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-jingkang-incident-southern-song', '정강의 변(靖康之變, 1127년)과 조구의 남송(南宋) 건국', '정강의 변(靖康之變, 1127년)과 조구의 남송(南宋) 건국', 'CHINA', '', 'POLITICS', 'A', 1127, 1127, 'exact', '금나라 군대가 북송 수도 개봉을 함락하고 휘종·흠종 두 황제를 압송하자 고종 조구가 임안(항저우)에서 남송 건국.', '화북을 금에 상실하고 회수를 경계로 남북 대치하는 남송 시대 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-yue-fei-patriotism', '악비(岳飛)의 금나라 항전과 억울한 옥사 (1142년)', '악비(岳飛)의 금나라 항전과 억울한 옥사 (1142년)', 'CHINA', '', 'POLITICS', 'A', 1130, 1142, 'exact', '악가군을 이끌고 금나라 군대를 연전연파하여 중원 수복 직전까지 갔으나 화친파 진회의 모함으로 처형당함.', '중국 민족주의와 충의의 불멸의 군신(軍神)으로 추앙.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-zhu-xi-neo-confucianism', '주희(주자)의 성리학(주자학) 집대성', '주희(주자)의 성리학(주자학) 집대성', 'CHINA', '', 'RELIGION', 'A', 1130, 1200, 'exact', '이기이원론(理氣二元論), 성즉리(性卽理), 거경궁리를 정립하고 사서(대학·논어·맹자·중용)에 집주를 달아 『사서집주』 완성.', '이후 700년간 중국·한국·일본의 국가 관학이자 절대적 통치 철학.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-myocheong-seogyeong-rebellion', '묘청의 서경천도 운동과 칭제건원·금국정벌론 (1135년)', '묘청의 서경천도 운동과 칭제건원·금국정벌론 (1135년)', 'KOREA', '', 'POLITICS', 'A', 1135, 1136, 'exact', '풍수지리 승려 묘청이 서경(평양) 대화궁 천도와 황제 칭호, 금나라 정벌을 주장하다 김부식의 진압군에 평정됨.', '신채호가 ''조선 역사상 1천 년 래 제일 대사건''으로 규정한 자주파 vs 사대파의 대결.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-hildegard-von-bingen', '힐데가르트 폰 빙엔의 신비주의 음악과 의학 저술', '힐데가르트 폰 빙엔의 신비주의 음악과 의학 저술', 'WEST', '', 'ART_CULTURE', 'B', 1140, 1179, 'exact', '독일의 여성 수녀원장이 신비적 환시, 그레고리오 찬트 작곡, 자연 치유 식물학 저작 『피지카(Physica)』 집필.', '중세 여성 지식인의 독보적 거인이자 다방면의 천재.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-shao-xing-treaty', '소흥화의(紹興和議, 1141년)', '소흥화의(紹興和議, 1141년)', 'CHINA', '', 'POLITICS', 'B', 1141, 1141, 'exact', '남송이 금나라에 신하의 예를 취하고 매년 세폐(은 25만 냥, 비단 25만 필)를 바치며 회수-대산관을 국경으로 확정.', '남송의 굴욕적 평화와 강남 경제 집중 개발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-gothic-architecture-st-denis', '고딕 양식의 탄생과 파리 노트르담 대성당 착공', '고딕 양식의 탄생과 파리 노트르담 대성당 착공', 'WEST', '', 'ART_CULTURE', 'A', 1144, 1163, 'exact', '쉬제르 원장이 생드니 수도원에서 첨두아치, 리브볼트, 플라잉 버트레스, 스테인드글라스를 최초 적용하고 1163년 노트르담 착공.', '신에게 닿으려는 빛과 높이의 중세 고딕 건축 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-samguk-sagi-compilation', '김부식의 『삼국사기(三國史記)』 편찬 (1145년)', '김부식의 『삼국사기(三國史記)』 편찬 (1145년)', 'KOREA', '', 'ART_CULTURE', 'A', 1145, 1145, 'exact', '인종의 명을 받아 김부식 등이 삼국의 역사를 기전체(본기 28권, 열전 10권 등 총 50권)로 정리한 현존 최고(最古)의 정사 역사서.', '한국 고대사 연구의 절대적 기준이자 국보 제322호.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-inlay-celadon-sangam', '고려 상감청자(象嵌靑磁) 기법의 완성', '고려 상감청자(象嵌靑磁) 기법의 완성', 'KOREA', '', 'ART_CULTURE', 'A', 1150, 1200, 'exact', '흙 표면을 파내고 백토와 흑토를 메워 넣어 학, 구름, 국화 문양을 표현하는 독보적인 상감 기법(청자상감운학문매병) 완성.', '동양 도자기 역사상 오직 고려인만이 창안한 최고 독창적 도예 기술.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-twelfth-century-renaissance', '12세기 르네상스와 파리 대학교·옥스퍼드 대학교 발전', '12세기 르네상스와 파리 대학교·옥스퍼드 대학교 발전', 'WEST', '', 'SCIENCE', 'A', 1150, 1200, 'exact', '아랍어-라틴어 번역을 통해 아리스토텔레스와 로마법이 유입되며 파리대, 옥스퍼드대 등 종합대학 발흥.', '중세 서양 지성사의 획기적 전환점이자 스콜라 철학의 개화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-frederick-barbarossa-hrempire', '프리드리히 1세 바르바로사(붉은 수염)의 롬바르디아 원정', '프리드리히 1세 바르바로사(붉은 수염)의 롬바르디아 원정', 'WEST', '', 'POLITICS', 'C', 1152, 1190, 'exact', '북이탈리아 자유도시 동맹(롬바르디아 동맹)과 레냐노 전투에서 격돌하고 신성로마제국의 법적 위상 강화.', '독일 기사도 황제의 전설적 상징.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-plantagenet-angevin-empire', '헨리 2세의 플랜태저넷 왕조와 앙주 제국 수립 (1154년)', '헨리 2세의 플랜태저넷 왕조와 앙주 제국 수립 (1154년)', 'WEST', '', 'POLITICS', 'A', 1154, 1189, 'exact', '엘레오노르와 혼인하여 잉글랜드와 프랑스 서부 절반(노르망디, 아키텐, 앙주)을 지배하고 배심원제·보통법(Common Law) 확립.', '영미 보통법 체계의 창시이자 영·프 백년전쟁의 영토적 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-averroes-commentaries', '이븐 루슈드(아베로에스)의 아리스토텔레스 주석', '이븐 루슈드(아베로에스)의 아리스토텔레스 주석', 'WEST', '', 'SCIENCE', 'B', 1160, 1198, 'exact', '코르도바의 철학자가 아리스토텔레스 철학 전편을 명료하게 주석하여 라틴 유럽에 이성주의 철학 전파.', '토마스 아퀴나스 스콜라 신학과 서양 르네상스 이성주의의 촉매.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-jin-dynasty-sinicization', '금 세종의 ''대정지치(大定之治)''와 소요순 칭호', '금 세종의 ''대정지치(大定之治)''와 소요순 칭호', 'CHINA', '', 'POLITICS', 'B', 1161, 1189, 'exact', '금나라의 전성기로 여진 문화를 보존하면서도 유교적 덕치를 펴 화북 농업과 문화를 부흥시킴.', '여진 정복 왕조의 최고 번영기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-military-revolt-1170', '무신정변(武臣政變) 발발 (1170년)과 무신정권 개막', '무신정변(武臣政變) 발발 (1170년)과 무신정권 개막', 'KOREA', '', 'POLITICS', 'A', 1170, 1170, 'exact', '문벌 귀족의 무신 차별과 보현원 횡포에 맞서 정중부, 이의방, 이고 등이 정변을 일으켜 문관들을 학살하고 정권 장악.', '100년간 지속된 무신 집권기(1170~1270)의 개막과 문벌 귀족 사회 붕괴.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce12-lu-jiuyuan-heart-mind', '육구연의 심학(心學) 창시 (심즉리)', '육구연의 심학(心學) 창시 (심즉리)', 'CHINA', '', 'RELIGION', 'C', 1175, 1192, 'exact', '''내 마음이 곧 우주요 우주가 곧 내 마음이다''를 주장하며 주희의 성리학과 아호사 논쟁(鵝湖之會)을 벌임.', '명대 왕양명의 양명학으로 계승되는 심학의 원류.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-mangisi-mangsoi-rebellion', '망이·망소이의 난 (공주 명학소 천민 봉기, 1176년)', '망이·망소이의 난 (공주 명학소 천민 봉기, 1176년)', 'KOREA', '', 'POLITICS', 'C', 1176, 1177, 'exact', '특수 행정구역(향·소·부곡)의 차별과 가혹한 공납 수탈에 맞서 공주 명학소에서 충청도 일대를 휩쓴 민중 봉기.', '신분 차별 철폐와 충순현 승격을 이끌어낸 민중 저항.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce12-third-crusade-saladin-richard', '제3차 십자군 원정과 살라딘 vs 사자심왕 리처드', '제3차 십자군 원정과 살라딘 vs 사자심왕 리처드', 'WEST', '', 'POLITICS', 'A', 1187, 1192, 'exact', '살라딘의 하틴 전투 승리로 예루살렘이 함락되자 리처드 1세 등이 출정하여 야파 조약으로 기독교 순례자 방문권 확보.', '중세 기사도 정신의 정수이자 이슬람-기독교 공존 협정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-jinul-jogye-buddhism', '보조국사 지눌의 정혜결사(定慧結社)와 조계종 확립', '보조국사 지눌의 정혜결사(定慧結社)와 조계종 확립', 'KOREA', '', 'RELIGION', 'B', 1190, 1200, 'exact', '송광사(수선사)에서 승려들의 세속 타락을 비판하고 ''돈오점수(頓悟漸修)''와 ''정혜쌍수''를 주창하여 선종 중심 교선 통합.', '한국 불교의 최대 종파 대한불교 조계종의 사상적 종조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-lee-gyubo-dongmyeongwang', '이규보의 서사시 『동명왕편(東明王篇)』', '이규보의 서사시 『동명왕편(東明王篇)』', 'KOREA', '', 'ART_CULTURE', 'B', 1193, 1241, 'exact', '고구려 시조 주몽의 건국 영웅담을 웅장한 282구의 한시로 노래하여 민족적 긍지와 고구려 계승 의식 고취.', '몽골 침략기 민족 자주 문학의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-choe-chungheon-dictatorship', '최충헌의 권력 장악과 최씨 무신정권 수립 (1196년)', '최충헌의 권력 장악과 최씨 무신정권 수립 (1196년)', 'KOREA', '', 'POLITICS', 'B', 1196, 1200, 'exact', '이의민을 제거하고 봉사 10조를 올린 최충헌이 도방(사병)과 교정도감을 설치하여 4대 60년간의 최씨 세습 독재 확립.', '무신 정권의 최고 안정기이자 권력 기구의 제도화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce12-manjeok-rebellion-slave', '만적(萬積)의 난 (노비 신분 해방 운동, 1198년)', '만적(萬積)의 난 (노비 신분 해방 운동, 1198년)', 'KOREA', '', 'POLITICS', 'B', 1198, 1198, 'exact', '최충헌의 사노비 만적이 ''왕후장상의 씨가 따로 있는가! 우리도 공경대부가 될 수 있다''며 개경 노비 해방을 꾀하다 밀고로 체포됨.', '한국 역사상 최초의 계급 타파 및 인간 평등 노비 해방 봉기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-fourth-crusade-sack-constantinople', '제4차 십자군의 콘스탄티노폴리스 약탈과 라틴 제국 (1204년)', '제4차 십자군의 콘스탄티노폴리스 약탈과 라틴 제국 (1204년)', 'WEST', '', 'POLITICS', 'A', 1204, 1261, 'exact', '베네치아 상인들의 사주로 십자군이 같은 기독교 도시인 비잔틴 수도 콘스탄티노폴리스를 함락·약탈하고 라틴 제국 수립.', '동서 교회의 완전한 치유 불가능한 균열 및 비잔틴 제국의 회복 불능 몰락.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-genghis-khan-unification', '칭기즈칸의 몽골 초원 통일과 대몽골 제국 수립 (1206년)', '칭기즈칸의 몽골 초원 통일과 대몽골 제국 수립 (1206년)', 'CHINA', '', 'POLITICS', 'A', 1206, 1227, 'exact', '테무친이 오논강 쿠릴타이에서 칭기즈칸으로 추대되어 십진법 군제와 대자사크(법전)로 유라시아 정복 개시.', '인류 역사상 가장 거대한 연속 영토 제국의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('mongol-empire-expansion', '몽골 제국의 유라시아 통합과 팍스 몽골리카', 'Mongol Empire & Pax Mongolica', 'CHINA', '몽골/원/유라시아', 'POLITICS', 'A', 1206, 1368, 'exact', '칭기즈칸과 후계자들이 중국, 중앙아시아, 러시아, 중동을 아우르는 인류 역사상 최대의 연속 육상 제국을 건설함.', '역참망(얌)을 통해 동서양 교역로를 안전하게 연결하고 기술·종교·사상의 대교류를 촉진.', '유목 기마 군단의 탁월한 기동력과 능력 중심 군사 조직.', '흑사병의 대륙 간 확산 및 각 지역 민족주의/새 왕조(명, 오스만, 모스크바 대공국) 태동.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-francis-of-assisi', '성 프란치스코의 탁발 수도회(프란치스코회) 창설', '성 프란치스코의 탁발 수도회(프란치스코회) 창설', 'WEST', '', 'RELIGION', 'B', 1209, 1226, 'exact', '모든 부를 버리고 절대 청빈과 자연 만물에 대한 사랑(태양의 찬가)을 실천하며 민중 속으로 들어감.', '중세 교회의 타락을 정화한 탁발 수도 운동의 상징.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-magna-carta-england', '영국 마그나 카르타(대헌장) 서명 (1215년)', '영국 마그나 카르타(대헌장) 서명 (1215년)', 'WEST', '', 'INSTITUTION', 'A', 1215, 1215, 'exact', '존 왕이 러니미드 평원에서 귀족들의 압박으로 ''왕도 법 아래에 있으며, 적법한 재판 없이 체포·과세할 수 없다''는 63개조 헌장에 서명.', '근대 입헌주의, 법치주의 및 인권 헌장의 영원한 초석.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-goryeo-mongol-wars', '고려의 대몽항쟁과 처인성 전투·강화도 천도 (1231~1259년)', '고려의 대몽항쟁과 처인성 전투·강화도 천도 (1231~1259년)', 'KOREA', '', 'POLITICS', 'A', 1231, 1259, 'exact', '세계 최강 몽골 제국의 6차례 침략에 맞서 강화도로 도읍을 옮기고 처인성에서 승려 김윤후가 몽골 원수 살리타를 사살함.', '28년간 전 국토가 잿더미가 되면서도 굴복하지 않은 처절한 민중 항쟁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-fall-of-jin-kaifeng', '몽골-송 연합군의 금나라 멸망 (채주 전투, 1234년)', '몽골-송 연합군의 금나라 멸망 (채주 전투, 1234년)', 'CHINA', '', 'POLITICS', 'C', 1234, 1234, 'exact', '오고타이 칸의 몽골군과 남송 연합군이 금나라 마지막 황제 애종을 자살케 하고 금 119년 왕조 멸망.', '송나라의 일시적 중원 회복 착각과 몽골의 남송 침공 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-sangjeong-gogeum-yemun', '이규보의 『상정고금예문』 금속활자 인쇄 기록 (1234년)', '이규보의 『상정고금예문』 금속활자 인쇄 기록 (1234년)', 'KOREA', '', 'SCIENCE', 'A', 1234, 1241, 'exact', '강화도 피난 중 최우의 명으로 의례 서적 『상정고금예문』 50권을 주자(금속활자)로 28부 인쇄했다고 『동국이상국집』에 명기.', '서양 구텐베르크(1455년)보다 200년 앞선 세계 최초의 금속활자 사용 공식 기록.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-hyangyak-gugeupbang', '『향약구급방(鄕藥救急方)』 편찬 (현존 최고(最古) 의학서)', '『향약구급방(鄕藥救急方)』 편찬 (현존 최고(最古) 의학서)', 'KOREA', '', 'SCIENCE', 'B', 1236, 1251, 'exact', '비싼 중국 수입 약재 대신 산천에서 쉽게 구할 수 있는 180여 종의 국산 향약초와 응급 처방을 한글 이두로 기록.', '한국 자주적 향약 의학의 시초이자 보물.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-tripitaka-koreana-hapcheon', '고려 팔만대장경(재조대장경) 조판 완성 (국보·유네스코 세계기록유산, 1236~1251년)', '고려 팔만대장경(재조대장경) 조판 완성 (국보·유네스코 세계기록유산, 1236~1251년)', 'KOREA', '', 'ART_CULTURE', 'A', 1236, 1251, 'exact', '강화도 대장도감에서 몽골 침략 격퇴를 염원하며 81,258장의 자작나무 목판에 5,200만 자를 한 글자 쓸 때마다 절을 올리며 판각.', '오탈자 없는 완벽한 교정과 세계 최고(最高)의 목판 인쇄 예술품(해인사 장경판전).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-mongol-invasion-of-europe', '바투의 몽골군 유럽 침공과 레그니차 전투 (1241년)', '바투의 몽골군 유럽 침공과 레그니차 전투 (1241년)', 'WEST', '', 'POLITICS', 'A', 1237, 1242, 'exact', '바투와 수부타이가 러시아 공국들을 멸망시키고 레그니차·모히 전투에서 폴란드·독일·헝가리 기사 연합군을 궤멸시킴.', '러시아의 240년 ''타타르의 멍에'' 시작과 서유럽 전역의 패닉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-hanseatic-league-founding', '한자 동맹(Hanseatic League)의 결성', '한자 동맹(Hanseatic League)의 결성', 'WEST', '', 'ECONOMY', 'C', 1241, 1300, 'exact', '뤼베크, 함부르크 등 북독일 도시들이 북해와 발트해의 청어, 목재, 모피 무역을 독점하기 위한 상업 도시 동맹 구축.', '중세 북유럽 경제 번영과 도시 자치권의 성장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-kublai-khan-yuan-founding', '쿠빌라이 칸의 원(元) 건국과 대도(베이징) 건설 (1271년)', '쿠빌라이 칸의 원(元) 건국과 대도(베이징) 건설 (1271년)', 'CHINA', '', 'POLITICS', 'A', 1260, 1271, 'exact', '주역의 ''대재건원''에서 국호를 따 원나라를 건국하고 수도를 대도(현재의 베이징)로 정함.', '베이징이 중국의 수도로 확립된 역사적 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-pax-mongolica-trade', '팍스 몽골리카(Pax Mongolica)와 역참제(잠치) 완성', '팍스 몽골리카(Pax Mongolica)와 역참제(잠치) 완성', 'CHINA', '', 'ECONOMY', 'A', 1260, 1300, 'exact', '패자(파이자)를 소지한 사신과 상인이 30km마다 설치된 역참을 이용해 유라시아 전역을 안전하게 횡단.', '동서양 간 기술, 종교, 농작물, 화약, 인쇄술의 전 지구적 교류 활성화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-yuan-qu-drama-guan-hanqing', '원곡(元曲) 잡극의 번영과 관한경의 『두아원』', '원곡(元曲) 잡극의 번영과 관한경의 『두아원』', 'CHINA', '', 'ART_CULTURE', 'B', 1260, 1300, 'exact', '과거가 중단된 사대부들이 서민 극장에서 공연 대본을 쓰며 서사 희곡 잡극 문학의 황금기 창출.', '중국 전통 경극과 공연 예술의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-simon-de-montfort-parliament', '시몽 드 몽포르의 의회 소집 (영국 의회의 기원, 1265년)', '시몽 드 몽포르의 의회 소집 (영국 의회의 기원, 1265년)', 'WEST', '', 'INSTITUTION', 'B', 1265, 1265, 'exact', '헨리 3세에 맞서 귀족뿐 아니라 각 주(Shire)의 기사 2명과 도시(Borough)의 시민 대표 2명을 최초로 의회에 출석시킴.', '영국 하원(House of Commons)과 대의 민주주의 제도의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-thomas-aquinas-summa', '토마스 아퀴나스의 『신학대전(Summa Theologiae)』', '토마스 아퀴나스의 『신학대전(Summa Theologiae)』', 'WEST', '', 'RELIGION', 'A', 1265, 1274, 'exact', '신앙과 이성의 조화를 선언하며 아리스토텔레스 철학을 기독교 신학 체계와 완벽하게 융합.', '중세 가톨릭 스콜라 철학의 최고 금자탑.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-roger-bacon-experimental-science', '로저 베이컨의 『대저작(Opus Majus)』과 실험 과학 제창', '로저 베이컨의 『대저작(Opus Majus)』과 실험 과학 제창', 'WEST', '', 'SCIENCE', 'B', 1267, 1267, 'exact', '권위와 관습에 의존하는 스콜라 학풍을 비판하고 수학과 관찰, 실험을 통한 자연 탐구 강조.', '근대 경험 과학과 렌즈 광학의 선구자.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-phags-pa-script', '파스파 문자의 창제와 제국 공용 문자 제정 (1269년)', '파스파 문자의 창제와 제국 공용 문자 제정 (1269년)', 'CHINA', '', 'ART_CULTURE', 'B', 1269, 1269, 'exact', '티베트 불교 사키아파 국사 파스파가 티베트 문자를 바탕으로 몽골어, 한어, 튀르크어를 표기하는 문자 제정.', '음소 문자 체계로서 조선 훈민정음 창제에도 학술적 영향.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-sambyeolcho-rebellion', '삼별초의 대몽 결사항전 (진도 용장산성~제주 항파두리, 1270~1273년)', '삼별초의 대몽 결사항전 (진도 용장산성~제주 항파두리, 1270~1273년)', 'KOREA', '', 'POLITICS', 'A', 1270, 1273, 'exact', '개경 환도에 반대하여 배중손·김통정이 온왕을 옹립하고 진도와 제주도에서 여몽 연합군에 맞서 최후의 1인까지 결사항전.', '자주적 무인 정권의 마지막 군사 저항이자 해양 요새전의 백미.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-marco-polo-travels', '마르코 폴로의 동방 여행과 『동방견문록』 (1271~1295년)', '마르코 폴로의 동방 여행과 『동방견문록』 (1271~1295년)', 'WEST', '', 'SCIENCE', 'A', 1271, 1295, 'exact', '베네치아 상인 마르코 폴로가 실크로드를 거쳐 대도(베이징)에서 쿠빌라이 칸을 섬긴 후 견문록을 남김.', '유럽인들에게 동양에 대한 폭발적 호기심과 대항해 시대를 자극한 기폭제.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-guo-shoujing-shoushi-calendar', '곽수경의 수시력(授時曆) 편찬 (1280년)', '곽수경의 수시력(授時曆) 편찬 (1280년)', 'CHINA', '', 'SCIENCE', 'A', 1276, 1280, 'exact', '간의(簡儀), 규표 등 정밀 관측기구를 제작하여 1년을 365.2425일(현대 그레고리력과 동일)로 오차 없이 계산.', '동양 역법사상 최고 정밀도의 역법 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-zaju-and-blue-white-porcelain', '경덕진 원청화(元靑花) 백자의 탄생과 페르시아 코발트 수입', '경덕진 원청화(元靑花) 백자의 탄생과 페르시아 코발트 수입', 'CHINA', '', 'ART_CULTURE', 'C', 1278, 1300, 'exact', '페르시아의 코발트 안료(스말트)를 수입하여 순백의 도자기에 푸른 문양을 그린 청화백자 대량 수출.', '글로벌 도자기 시장을 석권한 블루 앤 화이트 자기의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-fall-of-southern-song-yamen', '애산 전투와 남송의 완전 멸망 (1279년)', '애산 전투와 남송의 완전 멸망 (1279년)', 'CHINA', '', 'POLITICS', 'A', 1279, 1279, 'exact', '원나라 장홍범의 수군이 남송 함대를 애산에서 섬멸하자 육수부가 어린 황제를 안고 바다에 투신하여 송 319년 왕조 종언.', '중국 전역이 북방 유목 민족에 의해 최초로 완전 정복 통일됨.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce13-four-class-system-yuan', '원나라의 4계급 신분제 (몽골인·색목인·한인·남인)', '원나라의 4계급 신분제 (몽골인·색목인·한인·남인)', 'CHINA', '', 'INSTITUTION', 'B', 1279, 1300, 'exact', '지배층 몽골인, 재정과 기술을 맡은 중앙아시아 색목인, 옛 금나라 한인, 최하층 남송 남인으로 차별 대우.', '한족 사대부들의 과거제 폐지와 반원 감정 축적.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-cotton-plant-mun-ikjeom', '문익점의 목화씨 도입과 정천익의 물레 방적 기술 (1363년 예비 형성)', '문익점의 목화씨 도입과 정천익의 물레 방적 기술 (1363년 예비 형성)', 'KOREA', '', 'SCIENCE', 'B', 1280, 1300, 'exact', '원나라와의 빈번한 교류 속에서 남방의 면화 재배 정보가 유입되어 고려 의생활 혁명의 전조 형성.', '삼베와 모시에서 따뜻한 무명옷으로의 의복 혁명 준비.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-samguk-yusa-ilyeon', '일연 승려의 『삼국유사(三國遺事)』 저술 (1281년)', '일연 승려의 『삼국유사(三國遺事)』 저술 (1281년)', 'KOREA', '', 'ART_CULTURE', 'A', 1281, 1281, 'exact', '단군왕검의 고조선 건국 신화(홍익인간), 가야사, 향가 14수, 설화, 야사를 집대성한 민족 자주 의식의 역사서.', '한민족 5천 년 역사의 뿌리(단군)를 복원한 가장 귀중한 보물 사료.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-jewang-ungi-history', '이승휴의 서사 역사시 『제왕운기(帝王韻紀)』 (1287년)', '이승휴의 서사 역사시 『제왕운기(帝王韻紀)』 (1287년)', 'KOREA', '', 'ART_CULTURE', 'C', 1287, 1287, 'exact', '중국의 역사와 대등하게 단군조선부터 고려까지의 역사를 상·하권의 운문(시)으로 서술하고 발해사를 최초로 우리 역사로 편입.', '한국사의 독자적 정통성을 확립한 민족주의 역사관.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce13-an-hyang-neo-confucianism-import', '안향(안유)의 주자학(성리학) 고려 최초 도입 (1289년)', '안향(안유)의 주자학(성리학) 고려 최초 도입 (1289년)', 'KOREA', '', 'RELIGION', 'A', 1289, 1290, 'exact', '충렬왕을 수행하여 원나라 연경에 다녀오며 주희의 저작과 공자·주자 초상화를 가져와 국자감 부흥 기금(섬학전) 설치.', '고려 말 신진사대부 등장과 조선 건국의 사상적 씨앗.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce13-dante-alighieri-vita-nuova', '단테 알리기에리의 『신생(La Vita Nuova)』과 라틴어 탈피', '단테 알리기에리의 『신생(La Vita Nuova)』과 라틴어 탈피', 'WEST', '', 'ART_CULTURE', 'C', 1295, 1295, 'exact', '피렌체의 단테가 베아트리체에 대한 사랑을 라틴어가 아닌 토스카나 속어(이탈리아어)로 노래함.', '이탈리아 국민 문학과 『신곡』으로 이어지는 르네상스 문학의 맹아.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('little-ice-age-start', '14세기 소빙기 시작과 기후 한랭화', 'Beginning of the Little Ice Age', 'CLIMATE', '지구 전역', 'CLIMATE_ENVIRONMENT', 'B', 1300, 1850, 'approximate', '지구 평균 기온이 하락하여 대흉작, 기근, 빙하 확장이 빈번하게 발생했던 장기 기후 한랭기.', '농업 생산성 급감으로 사회 불안, 흑사병 취약성 증가, 명나라 멸망 및 조선 경신대기근의 배경이 됨.', '태양 흑점 극소기(마운더 극소기 등)와 대규모 화산 폭발 에어로졸.', '식량 위기, 사회적 반란, 왕조 교체의 기폭제 역할.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-dante-divine-comedy-completion', '단테의 대서사시 『신곡(Divina Commedia)』 완성 (1320년)', '단테의 대서사시 『신곡(Divina Commedia)』 완성 (1320년)', 'WEST', '', 'ART_CULTURE', 'B', 1308, 1320, 'exact', '베르길리우스와 베아트리체의 인도로 지옥, 연옥, 천국을 순례하는 3부작 14,233행의 이탈리아 운문 서사시.', '중세 기독교 세계관의 총결산이자 르네상스를 여는 문학의 정점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-avignon-papacy-schism', '아비뇽 유수(1309~1377)와 서구 대분열(1378~1417)', '아비뇽 유수(1309~1377)와 서구 대분열(1378~1417)', 'WEST', '', 'RELIGION', 'A', 1309, 1378, 'exact', '프랑스 필리프 4세가 교황청을 아비뇽으로 강제 이전시키고, 이후 로마와 아비뇽에서 두 명의 교황이 난립하며 상호 파문.', '교황권의 처참한 추락과 위클리프·후스의 종교개혁 선구 운동 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-hundred-years-war-begins', '영·프 백년전쟁 발발 (크레시 전투 장궁 승리, 1337~1453년)', '영·프 백년전쟁 발발 (크레시 전투 장궁 승리, 1337~1453년)', 'WEST', '', 'POLITICS', 'A', 1337, 1346, 'exact', '에드워드 3세가 프랑스 왕위 계승권을 주장하며 침공하여 크레시 전투(1346)에서 영국 장궁병이 프랑스 중장기사를 궤멸시킴.', '중세 기사 계급의 몰락과 영국·프랑스 근대 민족 국가로의 전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-petrarch-renaissance-humanism', '페트라르카와 인문주의(Humanism)의 태동', '페트라르카와 인문주의(Humanism)의 태동', 'WEST', '', 'ART_CULTURE', 'A', 1341, 1374, 'exact', '중세를 ''암흑시대''로 규정하고 고대 키케로의 라틴 고전 필사본을 발굴하며 인간 중심의 르네상스 휴머니즘 주창.', '이탈리아 르네상스 인문주의의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('black-death-pandemic', '유라시아 흑사병 대유행', 'The Black Death Pandemic', 'WEST', '유럽/중동/중국', 'CLIMATE_ENVIRONMENT', 'A', 1346, 1353, 'exact', '페스트균에 의한 팬데믹으로 유럽 인구의 30~50%가 사망하며 중세 사회 구조를 근본적으로 뒤흔듦.', '노동력 부족으로 농노제가 붕괴하고 임금이 상승하였으며, 교회의 권위가 실추되어 르네상스와 종교개혁의 도화선이 됨.', '몽골 교역로를 통한 페스트균 전파와 14세기 대기근으로 인한 면역력 약화.', '장원제 붕괴, 봉건 영주 쇠퇴, 인본주의적 사고 확산.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-black-death-europe', '흑사병(Black Death) 대유행 (유럽 인구 1/3 사망, 1347~1351년)', '흑사병(Black Death) 대유행 (유럽 인구 1/3 사망, 1347~1351년)', 'WEST', '', 'CLIMATE_ENVIRONMENT', 'A', 1347, 1351, 'exact', '크림반도 카파에서 제노바 상선을 통해 전파된 페스트균으로 유럽 전역에서 2,500만~5,000만 명이 사망함.', '노동력 부족으로 농노제 붕괴, 교회의 권위 실추 및 중세 봉건 사회의 총체적 해체 가속.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-boccaccio-decameron', '보카치오의 『데카메론(Decameron)』', '보카치오의 『데카메론(Decameron)』', 'WEST', '', 'ART_CULTURE', 'B', 1348, 1353, 'exact', '피렌체의 흑사병을 피해 교외 별장에 모인 10명의 남녀가 10일간 나눈 100편의 재치와 인간적 욕망을 담은 소설.', '서양 근대 산문 소설과 사실주의 문학의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-red-turban-rebellions', '백련교도와 홍건적의 난 (1351년)', '백련교도와 홍건적의 난 (1351년)', 'CHINA', '', 'POLITICS', 'A', 1351, 1368, 'exact', '황하 치수 공사 중 한산유, 유복통 등이 ''미륵불 하생''을 외치며 붉은 두건을 두르고 전국적 무장 봉기.', '원나라 멸망의 결정타.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-gongmin-anti-yuan-reforms', '고려 공민왕의 반원 자주 개혁과 쌍성총관부 수복 (1356년)', '고려 공민왕의 반원 자주 개혁과 쌍성총관부 수복 (1356년)', 'KOREA', '', 'POLITICS', 'A', 1351, 1374, 'exact', '변발과 호복 폐지, 기철 등 친원파 숙청, 정동행성 이문소 폐지, 유인우·이자춘을 보내 쌍성총관부(철령 이북 영토)를 99년 만에 무력 수복.', '고려의 자주권 회복과 북방 영토 수복의 영웅적 개혁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-golden-bull-1356', '카를 4세의 금인칙서 (신성로마제국 7선제후 선출제 확립, 1356년)', '카를 4세의 금인칙서 (신성로마제국 7선제후 선출제 확립, 1356년)', 'WEST', '', 'INSTITUTION', 'C', 1356, 1356, 'exact', '교황의 간섭을 배제하고 3명의 성직 선제후와 4명의 세속 선제후가 다수결로 독일 국왕을 선출하는 헌법 제정.', '독일의 분권적 영방 국가 체제 고착화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-water-margin-romance-three-kingdoms', '나관중의 『삼국지연의』와 시내암의 『수호지』 집필', '나관중의 『삼국지연의』와 시내암의 『수호지』 집필', 'CHINA', '', 'ART_CULTURE', 'A', 1360, 1390, 'exact', '민간 구전문학을 장편 장회소설로 재창작하여 동양 최고의 대중 문학 걸작 탄생.', '중국 4대 기서 중 2대 걸작의 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-shin-don-reforms', '승려 신돈의 전민변정도감(田民辨整都監) 개혁 (1366년)', '승려 신돈의 전민변정도감(田民辨整都監) 개혁 (1366년)', 'KOREA', '', 'INSTITUTION', 'B', 1365, 1371, 'exact', '공민왕의 전폭적 신임 아래 권세가들이 빼앗은 토지를 본주인에게 돌려주고 억울하게 노비가 된 양인을 해방시킴.', '민중의 열렬한 지지를 받은 개혁이자 권문세족의 격렬한 반발로 좌절.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-ming-dynasty-founding', '주원장의 명(明)나라 건국과 한족 왕조 부흥 (1368년)', '주원장의 명(明)나라 건국과 한족 왕조 부흥 (1368년)', 'CHINA', '', 'POLITICS', 'A', 1368, 1368, 'exact', '소작농·탁발승 출신 주원장(홍무제)이 홍건적을 이끌고 난징에서 건국한 후 북벌군으로 원을 몽골 초원으로 몰아냄(북원).', '이민족 지배 100년 만에 한족 전통 왕조의 복원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-blue-and-white-underglaze-red', '경덕진 유리홍(釉裏紅) 도자기 제작', '경덕진 유리홍(釉裏紅) 도자기 제작', 'CHINA', '', 'ART_CULTURE', 'C', 1368, 1398, 'exact', '구리 안료를 환원염으로 소성하여 선명한 붉은 문양을 내는 고난도 도자기 생산.', '명나라 황실 도자기 기술의 독보적 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-ming-great-wall-reinforcement', '북방 방어를 위한 명나라 장성 축조 시작', '북방 방어를 위한 명나라 장성 축조 시작', 'CHINA', '', 'POLITICS', 'C', 1368, 1400, 'exact', '북원의 몽골 기병 재침입을 막기 위해 서달 등이 험준한 산악 지대에 벽돌과 석회로 견고한 장성 개축 착수.', '오늘날 우리가 보는 웅장한 만리장성의 대부분이 이 시기 축조.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('ming-dynasty-founding', '명나라 건국과 정화의 대원정', 'Founding of Ming Dynasty & Zheng He''s Voyages', 'CHINA', '명(明)', 'POLITICS', 'A', 1368, 1433, 'range', '주원장이 몽골 원나라를 북쪽으로 축출하고 한족 제국을 부활시켰으며, 영락제 시기 정화의 거대 함대가 인도양과 아프리카까지 원정함.', '동남아시아 및 인도양에 대한 조공 무역망을 구축하고 동아시아 질서를 재편.', '홍건적의 난과 원나라 내부 분열.', '정화 사후 해금령(海禁令)으로 해양 진출 중단, 이후 서양의 대항해시대와 대비됨.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-jikji-movable-metal-type', '『직지심체요절(백운화상초록직지심체요절)』 금속활자 인쇄 (유네스코 세계기록유산, 1377년)', '『직지심체요절(백운화상초록직지심체요절)』 금속활자 인쇄 (유네스코 세계기록유산, 1377년)', 'KOREA', '', 'SCIENCE', 'A', 1377, 1377, 'exact', '청주 흥덕사에서 백운화상의 어록을 주자(금속활자)로 인쇄한 현존하는 세계에서 가장 오래된 금속활자본.', '서양 구텐베르크 성경(1455년)보다 78년 앞선 인류 인쇄 문화사의 불멸의 금자탑(프랑스 국립도서관 소장).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-choe-museon-jinpo-gunpowder', '최무선의 화통도감 설치와 진포대첩 화포 승리 (1377/1380년)', '최무선의 화통도감 설치와 진포대첩 화포 승리 (1377/1380년)', 'KOREA', '', 'SCIENCE', 'A', 1377, 1380, 'exact', '염초 제조법을 습득해 화통도감을 세우고 화포, 화통, 주화(로켓)를 개발하여 진포 해전에서 왜선 500척을 화포로 격침.', '세계 해전사상 최초의 함포 해전 승리이자 왜구 격퇴의 주역.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-hongwu-autocracy', '홍무제의 승상제 폐지와 황제 독재권 강화', '홍무제의 승상제 폐지와 황제 독재권 강화', 'CHINA', '', 'INSTITUTION', 'A', 1380, 1380, 'exact', '호유용의 옥사를 계기로 1500년간 이어온 승상(총리) 제도를 영구 폐지하고 6부를 황제에게 직속시킴.', '중국 역사상 가장 극단적인 황제 1인 전제 독재 체제 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-wat-tyler-rebellion', '영국 와트 타일러의 난 (1381년)', '영국 와트 타일러의 난 (1381년)', 'WEST', '', 'POLITICS', 'B', 1381, 1381, 'exact', '인두세 부과에 맞서 와트 타일러와 존 볼(사제)이 ''아담이 밭 갈고 하와가 길쌈할 때 귀족이 어디 있었는가''를 외치며 런던 점령.', '영국 농노제의 실질적 폐지를 이끈 민중 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-yellow-registers-fish-scale', '부역황책(호적)과 어린도책(토지대장) 편찬', '부역황책(호적)과 어린도책(토지대장) 편찬', 'CHINA', '', 'INSTITUTION', 'A', 1381, 1387, 'exact', '전국의 인구와 호구를 정밀 조사한 부역황책과 물고기 비늘처럼 토지 구획을 그린 어린도책을 완성하고 이갑제 실시.', '명나라 국가 재정과 징세 행정의 완벽한 전산망 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-john-wycliffe-bible', '존 위클리프의 최초 영어 성경 번역과 롤라드파', '존 위클리프의 최초 영어 성경 번역과 롤라드파', 'WEST', '', 'RELIGION', 'B', 1382, 1384, 'exact', '교황 무오설과 성직 매매를 비판하고 라틴어 성경을 대중 영어로 완역하여 ''성경 유일주의'' 선언.', '종교개혁의 샛별(The Morning Star of the Reformation).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-wihwado-retreat', '이성계의 위화도 회군 (4대 불가론, 1388년)', '이성계의 위화도 회군 (4대 불가론, 1388년)', 'KOREA', '', 'POLITICS', 'A', 1388, 1388, 'exact', '우왕과 최영의 명나라 요동 정벌 명령에 맞서 ''작은 나라가 큰 나라를 칠 수 없다'' 등 4불가론을 내세우며 압록강 위화도에서 회군하여 정권 장악.', '고려 왕조 멸망과 조선 건국의 결정적 군사 정변.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce14-ottoman-battle-of-kosovo', '코소보 전투와 오스만 제국의 발칸반도 제패 (1389년)', '코소보 전투와 오스만 제국의 발칸반도 제패 (1389년)', 'WEST', '', 'POLITICS', 'C', 1389, 1389, 'exact', '술탄 무라트 1세의 오스만 튀르크군이 세르비아 라자르 공작의 발칸 기독교 연합군을 섬멸함.', '오스만 제국이 동유럽의 지배자로 군림하고 비잔틴 제국을 고립시킴.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-gwajeonbeop-land-reform', '조준의 과전법(科田法) 실시 (1391년)', '조준의 과전법(科田法) 실시 (1391년)', 'KOREA', '', 'INSTITUTION', 'A', 1391, 1391, 'exact', '권문세족의 불법 농장 문서를 개경 시가지에서 불태우고 경기 지방의 토지를 신진 관료들에게 과전으로 재분배.', '구 귀족 세력의 경제 기반을 해체하고 조선 왕조 창업의 경제적 토대 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('joseon-founding', '조선 건국과 성리학적 통치 질서 확립', 'Founding of Joseon Dynasty', 'KOREA', '조선', 'POLITICS', 'A', 1392, 1392, 'exact', '이성계와 신진사대부(정도전 등)가 고려를 무너뜨리고 유교(성리학)를 국교로 삼는 새로운 왕조를 개창함.', '500년 유교 문치주의 국가 체제 구축과 한양 천도 및 경복궁 창건.', '위화도 회군과 과전법 실시로 신흥 무인 세력과 신진사대부의 결합.', '조선왕조 500년 지속 및 세종대왕의 문화적 융성으로 연결.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-jeong-mongju-loyalty', '포은 정몽주의 『단심가』와 선죽교 피살 (1392년)', '포은 정몽주의 『단심가』와 선죽교 피살 (1392년)', 'KOREA', '', 'ART_CULTURE', 'B', 1392, 1392, 'exact', '이방원의 하여가에 맞서 ''이 몸이 죽고 죽어 일백 번 고쳐 죽어''로 고려 충절을 지키다 개경 선죽교에서 조영규 등에게 피살됨.', '동방 이학(성리학)의 시조이자 만고 충절의 상징.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-joseon-founding-1392', '조선 건국 (태조 이성계·정도전, 1392년)', '조선 건국 (태조 이성계·정도전, 1392년)', 'KOREA', '', 'POLITICS', 'A', 1392, 1392, 'exact', '신흥 무인 세력 이성계와 신진사대부 정도전·조준이 공양왕의 선양을 받아 수창궁에서 즉위하고 국호를 ''조선''으로 선포.', '500년 유교 입국 조선 왕조의 탄생이자 한국사의 근세 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-jeong-dojeon-hanyang-planning', '정도전의 한양 천도(1394)와 경복궁·종묘·사직 설계', '정도전의 한양 천도(1394)와 경복궁·종묘·사직 설계', 'KOREA', '', 'INSTITUTION', 'A', 1394, 1398, 'exact', '수도를 한양(서울)으로 옮기고 주례 고공기에 입각해 경복궁, 근정전, 종묘, 사직단, 한양도성(흥인지문·숭례문)을 명명하고 도시 계획 완성.', '600년 수도 서울의 탄생과 유교적 이상 국가의 도시화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-great-ming-code', '『대명률(大明律)』 반포 (1397년)', '『대명률(大明律)』 반포 (1397년)', 'CHINA', '', 'INSTITUTION', 'B', 1397, 1397, 'exact', '당률을 바탕으로 명확하고 간결하게 정비한 명나라 표준 종합 법전.', '조선 경국대전 형전 및 청률의 기초가 된 동아시아 근세 법전의 표준.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-six-maxims-shengyu', '홍무제의 육유(六諭) 반포와 향촌 교화', '홍무제의 육유(六諭) 반포와 향촌 교화', 'CHINA', '', 'INSTITUTION', 'C', 1397, 1397, 'exact', '부모 효도, 어른 공경, 화목, 자손 교육, 생업 충실, 죄 짓지 말라는 6대 유교 도덕을 전국 마을에 낭독시킴.', '국가 권력이 촌락 단위까지 도덕 규범을 침투시킨 유교적 향촌 지배.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce14-princes-strife-first', '제1차 왕자의 난 (무인정사, 1398년)', '제1차 왕자의 난 (무인정사, 1398년)', 'KOREA', '', 'POLITICS', 'B', 1398, 1398, 'exact', '사병 혁파와 세자 이방석 책봉에 반발한 정안대군 이방원이 사병을 동원해 정도전, 남은, 심효생을 살해하고 권력 장악.', '재상 중심제(정도전)와 국왕 중심제(이방원)의 유혈 충돌 및 태종 집권의 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce14-jingnan-campaign', '정난의 변(靖難之變, 1399~1402년)', '정난의 변(靖難之變, 1399~1402년)', 'CHINA', '', 'POLITICS', 'B', 1399, 1402, 'exact', '연왕 주체(영락제)가 건문제의 삭번책에 맞서 ''간신을 제거하여 나라의 난을 바로잡는다''며 거병하여 황위 찬탈.', '명나라의 수도가 난징에서 북경으로 이전되는 결정적 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-taejong-centralization-six-ministries', '태종 이방원의 6조 직계제와 호패법 실시', '태종 이방원의 6조 직계제와 호패법 실시', 'KOREA', '', 'INSTITUTION', 'A', 1400, 1418, 'exact', '사병을 완전 혁파하고, 의정부를 거치지 않고 6부가 왕에게 직접 보고하는 6조 직계제와 16세 이상 남성에게 신분증인 호패를 발급.', '세종대왕의 태평성대를 가능하게 한 강력한 중앙집권과 재정 기반 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('renaissance-florence', '이탈리아 르네상스와 인문주의의 개화', 'Italian Renaissance & Humanism', 'WEST', '이탈리아 피렌체', 'ART_CULTURE', 'A', 1400, 1550, 'approximate', '신 중심의 중세 세계관에서 벗어나 고대 그리스·로마의 고전을 부활시키고 인간의 이성과 예술적 잠재력을 찬양한 문화 혁신 운동.', '레오나르도 다 빈치, 미켈란젤로 등의 예술과 마키아벨리의 정치학 등 근대 서구 정신의 태동.', '비잔틴 제국 학자들의 망명, 지중해 무역으로 축적된 메디치 가문의 후원.', '알프스 이북 르네상스와 근대 과학적 사고방식의 확산.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-yongle-encyclopedia', '『영락대전(永樂大典)』 편찬 (1408년)', '『영락대전(永樂大典)』 편찬 (1408년)', 'CHINA', '', 'ART_CULTURE', 'A', 1403, 1408, 'exact', '해진 등 2천여 명의 학자가 참가하여 고대부터 명대까지의 서적 8천여 종을 집대성한 22,877권의 세계 최대 백과사전 완성.', '중국 고전문헌학의 최대 집대성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-zheng-he-voyages', '정화의 서역 남해 대원정 (7차례 항해, 1405~1433년)', '정화의 서역 남해 대원정 (7차례 항해, 1405~1433년)', 'CHINA', '', 'SCIENCE', 'A', 1405, 1433, 'exact', '환관 정화가 길이 130m의 거대한 보선(寶船) 60여 척과 2만 7천 명을 이끌고 동남아, 인도, 아라비아, 아프리카 동해안(케냐)까지 항해.', '콜럼버스보다 80년 앞선 세계 최대 규모의 평화적 해양 원정이자 조공 무역망 확장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-yongle-capital-forbidden-city', '영락제의 베이징 천도와 자금성(Forbidden City) 완공 (1420년)', '영락제의 베이징 천도와 자금성(Forbidden City) 완공 (1420년)', 'CHINA', '', 'POLITICS', 'A', 1406, 1420, 'exact', '남경에서 북경으로 수도를 옮기고 100만 명의 인력을 동원하여 9,999칸의 웅장한 황궁 자금성과 천단을 완공함.', '명·청 500년간 제국의 정치적 심장부 완공.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-grand-canal-restoration-jining', '명나라 대운하 전면 준설과 회통하 개통 (1415년)', '명나라 대운하 전면 준설과 회통하 개통 (1415년)', 'CHINA', '', 'INSTITUTION', 'C', 1411, 1415, 'exact', '산둥 수문 30여 개를 설치하여 강남의 조운 400만 석을 북경으로 원활하게 운송하는 운하망 복원.', '북경 천도를 뒷받침한 경제 물류 동맥.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-tsushima-expedition-gihae', '이종무 장군의 쓰시마섬(대마도) 정벌 (기해동정, 1419년)', '이종무 장군의 쓰시마섬(대마도) 정벌 (기해동정, 1419년)', 'KOREA', '', 'POLITICS', 'B', 1419, 1419, 'exact', '상왕 태종과 세종의 결단으로 227척의 군함과 1만 7천 군사를 파견해 왜구의 소굴 대마도를 소탕하고 항복을 받아냄.', '왜구의 근본적 위협 차단 및 3포 개항(계해약조)을 통한 통제 무역 질서 구축.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-florence-duomo-brunelleschi', '브루넬레스키의 피렌체 두오모(산타 마리아 델 피오레) 돔 완공', '브루넬레스키의 피렌체 두오모(산타 마리아 델 피오레) 돔 완공', 'WEST', '', 'ART_CULTURE', 'C', 1420, 1436, 'exact', '비계(받침대) 없이 벽돌을 헤링본(생선뼈) 패턴으로 쌓아올린 45m 직경의 거대 8각형 르네상스 돔 완공.', '르네상스 건축 공학의 기적적 개가.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-zhengtong-ming-blue-white', '선덕·성화 연간 청화백자 및 투채(鬪彩) 자기 절정', '선덕·성화 연간 청화백자 및 투채(鬪彩) 자기 절정', 'CHINA', '', 'ART_CULTURE', 'C', 1426, 1487, 'exact', '유하청화와 유상채를 결합한 성화 투채 닭잔(계강배) 등 황실 전용 최고급 도자기 생산.', '중국 관요 도자기 경매 사상 최고가의 명품 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-nongsa-jikseol', '정초의 『농사직설(農事直說)』 편찬 (1429년)', '정초의 『농사직설(農事直說)』 편찬 (1429년)', 'KOREA', '', 'SCIENCE', 'B', 1429, 1429, 'exact', '중국 농서 베끼기를 벗어나 전국의 경험 많은 노농들의 실제 영농 경험을 조사하여 편찬한 한국 최초의 독자 농서.', '우리 풍토에 맞는 벼농사 직파법 및 이앙법 보급과 농업 생산력 증대.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-joan-of-arc-orleans', '잔 다르크의 오를레앙 해방과 백년전쟁 종결 (1429/1453년)', '잔 다르크의 오를레앙 해방과 백년전쟁 종결 (1429/1453년)', 'WEST', '', 'POLITICS', 'A', 1429, 1453, 'exact', '17세 시골 처녀 잔 다르크가 신의 계시를 받아 오를레앙 포위를 풀고 샤를 7세 대관식을 성사시킨 후 프랑스가 최종 승리.', '프랑스 국민 영웅 탄생 및 봉건 영주 중심에서 왕권 중심 상비군 체제로 전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-four-forts-six-posts', '4군 6진 개척과 압록강·두만강 국경선 확정', '4군 6진 개척과 압록강·두만강 국경선 확정', 'KOREA', '', 'POLITICS', 'A', 1433, 1443, 'exact', '최윤덕을 보내 압록강 상류 4군을, 김종서를 보내 두만강 하류 6진을 개척하고 사민정책으로 백성들을 이주시켜 오늘날의 압록강-두만강 국경 확정.', '대한민국 한반도 영토의 최종 경계선 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-sejong-science-revolution', '세종대왕·장영실의 과학기술 황금기 (측우기·자격루·혼천의·칠정산)', '세종대왕·장영실의 과학기술 황금기 (측우기·자격루·혼천의·칠정산)', 'KOREA', '', 'SCIENCE', 'A', 1434, 1444, 'exact', '세계 최초의 표준 우량계 측우기(1441), 자동 물시계 자격루(1434), 해시계 앙부일구, 한양 기준 독자 천문역법 『칠정산 내·외편』(1444) 완성.', '15세기 전반 세계 과학기술 연구의 30%를 차지한 경이로운 과학 르네상스.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-hai-jin-maritime-ban', '명나라 해금령(海禁令) 강화와 왜구의 발흥', '명나라 해금령(海禁令) 강화와 왜구의 발흥', 'CHINA', '', 'ECONOMY', 'B', 1436, 1500, 'exact', '정화 사후 원양 선박 건조를 금지하고 민간 해상 무역을 통제하자 밀무역업자와 왜구가 결합하여 동남 해안 약탈.', '중국의 자발적 해양 철수와 서세동점의 간접적 원인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-silver-monetization-begins', '은(銀) 중심 화폐 경제로의 전환 시작', '은(銀) 중심 화폐 경제로의 전환 시작', 'CHINA', '', 'ECONOMY', 'B', 1436, 1500, 'exact', '명나라 지폐(대명보초)의 인플레이션 붕괴로 민간에서 은화 결제가 보편화되며 강남 상업 자본 축적.', '후대 일조편법 및 글로벌 은 유입의 경제적 기초.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('hangul-creation-sejong', '훈민정음(한글) 창제와 과학기술 진흥', 'Creation of Hunminjeongeum (Hangul) & Scientific Flourishing', 'KOREA', '조선', 'ART_CULTURE', 'A', 1443, 1446, 'exact', '세종대왕이 백성을 위해 독창적이고 과학적인 음소 문자 훈민정음을 창제하고 측우기, 자격루, 칠정산 등 과학기구를 제작함.', '문자 독점을 타파하고 민족 문화의 자주성을 확립한 인류 언어학 역사상 최고의 업적.', '한자의 어려움으로 인한 백성의 소통 단절과 농업 생산성 향상을 위한 과학 연구 필요성.', '국문 문학 발달 및 조선의 독자적 역법과 천문학 정립.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-hunminjeongeum-creation', '세종대왕의 훈민정음(한글) 창제 (1443년) 및 반포 (1446년)', '세종대왕의 훈민정음(한글) 창제 (1443년) 및 반포 (1446년)', 'KOREA', '', 'ART_CULTURE', 'A', 1443, 1446, 'exact', '백성을 사랑하는 애민정신으로 발음기관의 모양을 본떠 28자의 과학적 표음문자를 독창적으로 창제하고 집현전 학사들과 『훈민정음 해례본』 편찬(국보·유네스코 세계기록유산).', '세계 문자 역사상 가장 과학적이고 독창적인 인류 최고의 문화유산.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-tumubao-crisis', '토목보의 변 (정통제 포로 사건, 1449년)', '토목보의 변 (정통제 포로 사건, 1449년)', 'CHINA', '', 'POLITICS', 'A', 1449, 1449, 'exact', '오이라트부 에센 타이시의 침공에 맞서 환관 왕진의 부추김으로 친정한 명 영종(정통제)이 토목보에서 50만 대군을 잃고 생포됨.', '명나라의 공세적 팽창 중단 및 수세적 만리장성 방어 체제로의 전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-beijing-defense-yu-qian', '우겸의 베이징 보위전과 명나라 사직 수호 (1449년)', '우겸의 베이징 보위전과 명나라 사직 수호 (1449년)', 'CHINA', '', 'POLITICS', 'B', 1449, 1450, 'exact', '황제가 사로잡힌 국가 비상사태에서 병부상서 우겸이 경태제를 옹립하고 베이징 9개 성문에서 결사 항전하여 오이라트군을 격퇴.', '제2의 정강의 변(남천)을 막아낸 명나라 구국의 승리.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('gutenberg-printing-press', '구텐베르크 활판 인쇄술 혁명', 'Gutenberg''s Movable Type Printing Revolution', 'WEST', '독일 마인츠', 'SCIENCE', 'A', 1450, 1455, 'exact', '요하네스 구텐베르크가 금속 활자와 유성 잉크, 압착 인쇄기를 결합하여 『42행 성경』을 대량 인쇄함.', '지식과 정보의 대중화를 이끌어 르네상스 확산, 종교개혁, 과학혁명의 결정적 매개체가 됨.', '서적 수요 증가와 필사본 제작의 한계.', '루터의 95개조 반박문이 전 유럽으로 수주일 만에 퍼져나갈 수 있는 인프라 구축.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-gutenberg-movable-type', '구텐베르크의 납 활판 인쇄술 혁명과 42행 성서 (1450~1455년)', '구텐베르크의 납 활판 인쇄술 혁명과 42행 성서 (1450~1455년)', 'WEST', '', 'SCIENCE', 'A', 1450, 1455, 'exact', '독일 마인츠에서 납·주석 합금 활자, 유성 잉크, 포도주 압착기를 응용한 인쇄기로 42행 성서 대량 인쇄 성공.', '지식 혁명, 대중 문해력 폭발, 종교개혁과 과학 혁명을 가능하게 한 인류 최고 발명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-fall-of-constantinople', '오스만 제국의 콘스탄티노폴리스 정복과 동로마 멸망 (1453년)', '오스만 제국의 콘스탄티노폴리스 정복과 동로마 멸망 (1453년)', 'WEST', '', 'POLITICS', 'A', 1453, 1453, 'exact', '술탄 메흐메트 2세가 우르반 거포와 함선 육지 운반으로 1,123년 역사의 비잔틴 제국을 멸망시키고 이스탄불로 개칭.', '중세의 공식 종말, 동방 무역로 차단으로 인한 대항해 시대 촉발, 그리스 학자들의 이탈리아 망명으로 르네상스 가속.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-sejo-gyeyujeongnan', '수양대군의 계유정난(1453년)과 사육신·생육신', '수양대군의 계유정난(1453년)과 사육신·생육신', 'KOREA', '', 'POLITICS', 'A', 1453, 1456, 'exact', '수양대군이 김종서·황보인을 살해하고 단종을 폐위하여 세조로 즉위하자 성삼문, 박팽년 등 사육신이 단종 복위를 꾀하다 참형당함.', '훈구파 공신 세력의 대두와 도덕적 절의를 중시하는 사림파의 태동.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-gyeongguk-daejeon-completion', '성종의 『경국대전(經國大典)』 완성 및 반포 (1485년)', '성종의 『경국대전(經國大典)』 완성 및 반포 (1485년)', 'KOREA', '', 'INSTITUTION', 'A', 1455, 1485, 'exact', '세조 때 착수하여 예종을 거쳐 성종 때 이전·호전·예전·병전·형전·공전 6전의 통치 법전을 완성하여 반포.', '조선 왕조 500년 통치 체제를 뒷받침한 불멸의 최고 성문 헌법.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-wars-of-the-roses', '영국 장미전쟁(Wars of the Roses)과 튜더 왕조 성립 (1455~1485년)', '영국 장미전쟁(Wars of the Roses)과 튜더 왕조 성립 (1455~1485년)', 'WEST', '', 'POLITICS', 'B', 1455, 1485, 'exact', '랭커스터 가문(붉은 장미)과 요크 가문(흰 장미)의 30년 내전 끝에 헨리 7세가 보스워스 전투에서 승리해 튜더 왕조 개창.', '봉건 귀족의 자멸과 강력한 절대 왕정(헨리 8세·엘리자베스 1세)의 기반 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce15-tian-shun-restoration', '탈문의 변(奪門之變, 1457년)과 영종의 복위', '탈문의 변(奪門之變, 1457년)과 영종의 복위', 'CHINA', '', 'POLITICS', 'C', 1457, 1457, 'exact', '석형, 조길상 등이 정변을 일으켜 상황으로 있던 영종을 복위시키고 우겸을 억울하게 처형함.', '명나라 중기 환관과 장군들의 권력 투쟁 격화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-italian-renaissance-art', '이탈리아 르네상스의 황금기 (레오나르도 다 빈치·보티첼리)', '이탈리아 르네상스의 황금기 (레오나르도 다 빈치·보티첼리)', 'WEST', '', 'ART_CULTURE', 'A', 1470, 1500, 'exact', '메디치 가문의 후원 아래 보티첼리의 『비너스의 탄생』, 다 빈치의 『최후의 만찬』과 원근법, 해부학, 인문주의 예술 만개.', '서양 고전 미학과 근대 예술·과학적 탐구의 최고 절정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-dongguk-tonggam-history', '서거정의 『동국통감(東國通鑑)』 편찬 (1485년)', '서거정의 『동국통감(東國通鑑)』 편찬 (1485년)', 'KOREA', '', 'ART_CULTURE', 'C', 1485, 1485, 'exact', '단군조선부터 삼국, 고려 말까지의 역사를 편년체로 서술한 57권의 관찬 통사 완성.', '조선 전기를 대표하는 통사 체계의 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-columbus-discovery-americas', '콜럼버스의 신대륙 도착 (1492년)', '콜럼버스의 신대륙 도착 (1492년)', 'WEST', '', 'SCIENCE', 'A', 1492, 1492, 'exact', '스페인 이사벨 여왕의 후원을 받은 크리스토퍼 콜럼버스가 산타마리아호를 타고 대서양을 건너 바하마 제도(산살바도르) 도착.', '아메리카 대륙과 구대륙 간 ''콜럼버스의 교환(옥수수·감자·은·천연두)'' 및 세계화의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-reconquista-completed-1492', '스페인의 그라나다 함락과 레콩키스타 완성 (1492년)', '스페인의 그라나다 함락과 레콩키스타 완성 (1492년)', 'WEST', '', 'POLITICS', 'A', 1492, 1492, 'exact', '카스티야-아라곤 연합 왕국(페르난도·이사벨)이 나스르 왕조의 알람브라 궁전을 함락시켜 780년간의 이베리아 이슬람 통치 종결.', '통일 스페인 제국의 탄생과 세계 해상 제국으로의 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('age-of-discovery-columbus', '대항해시대와 콜럼버스의 신대륙 도달', 'Age of Discovery & Columbian Exchange', 'WEST', '스페인/포르투갈/아메리카', 'ECONOMY', 'A', 1492, 1522, 'exact', '콜럼버스의 대서양 횡단과 마젤란 함대의 세계 일주로 지구상의 모든 대륙이 해상 무역로를 통해 직접 연결됨.', '콜럼버스 교환(작물·가축·전염병 이동)과 은(銀)의 세계적 유통으로 자본주의와 세계 경제 체제 성립.', '오스만 제국의 지중해 무역 장악으로 인한 신항로 개척 열망과 나침반·항해술 발전.', '아메리카 원주민 문명 파괴, 대서양 노예무역, 유럽 상업혁명.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-treaty-of-tordesillas', '토르데시야스 조약 (스페인과 포르투갈의 세계 분할, 1494년)', '토르데시야스 조약 (스페인과 포르투갈의 세계 분할, 1494년)', 'WEST', '', 'POLITICS', 'B', 1494, 1494, 'exact', '교황 알렉산데르 6세의 중재로 서경 46도 자오선을 기준으로 서쪽(아메리카)은 스페인이, 동쪽(아프리카·아시아·브라질)은 포르투갈이 분할 점령.', '유럽 열강의 전 지구적 식민지 쟁탈전의 공식 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce15-vasco-da-gama-india-route', '바스쿠 다 가마의 인도 항로 개척 (희망봉 경유, 1497~1498년)', '바스쿠 다 가마의 인도 항로 개척 (희망봉 경유, 1497~1498년)', 'WEST', '', 'SCIENCE', 'B', 1497, 1498, 'exact', '포르투갈 함대가 아프리카 남단 희망봉을 돌아 인도 서해안 캘리컷에 도달하여 직접 향신료 무역로 개척.', '지중해-베네치아 무역 독점 타파와 대서양-인도양 해양 패권 포르투갈 장악.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce15-muo-sahwa-first-literati-purge', '무오사화(1498년) - 김종직의 조의제문과 사화의 시작', '무오사화(1498년) - 김종직의 조의제문과 사화의 시작', 'KOREA', '', 'POLITICS', 'B', 1498, 1498, 'exact', '연산군 때 훈구파 유자광·이극돈이 김일손의 사초에 실린 김종직의 『조의제문』(세조의 왕위 찬탈 비판)을 문제 삼아 사림파 대거 처형.', '조선 중기 4대 사화(무오·갑자·기묘·을사)의 피비린내 나는 서막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-jungjong-coup', '중종반정 (연산군 폐위, 1506년)', '중종반정 (연산군 폐위, 1506년)', 'KOREA', '', 'POLITICS', 'B', 1506, 1506, 'exact', '폭정을 일삼던 연산군을 박원종, 성희안 등이 폐위하고 진성대군(중종)을 옹립하여 왕도 정치 복원 도모.', '조선 최초의 신하에 의한 국왕 폐위와 사림 등용의 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-wang-yangming-mind-philosophy', '왕양명의 양명학(陽明學) 창시 (치양지·지행합일)', '왕양명의 양명학(陽明學) 창시 (치양지·지행합일)', 'CHINA', '', 'RELIGION', 'A', 1508, 1528, 'exact', '용장(귀주성)에서 깨달음을 얻어 ''심즉리(마음이 곧 이치다)'', 앎과 행함은 하나라는 ''지행합일'', 마음에 내재된 ''치양지'' 역설.', '주자학의 교조화를 타파하고 인간 주체성을 해방시킨 신유학의 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-michelangelo-sistine-chapel', '미켈란젤로의 시스티나 성당 천장화(천지창조) 및 최후의 심판', '미켈란젤로의 시스티나 성당 천장화(천지창조) 및 최후의 심판', 'WEST', '', 'ART_CULTURE', 'B', 1508, 1541, 'exact', '교황 율리오 2세의 명으로 4년간 비계 위에 누워 프레스코로 완성한 서양 미술사상 최고의 기념비적 걸작.', '르네상스 성기 미술의 최고봉이자 인체 조형 미학의 정점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-machiavelli-the-prince', '니콜로 마키아벨리의 『군주론(Il Principe)』', '니콜로 마키아벨리의 『군주론(Il Principe)』', 'WEST', '', 'ART_CULTURE', 'B', 1513, 1532, 'exact', '도덕과 정치를 분리하여 군주는 여우의 교활함과 사자의 용맹을 겸비해야 한다고 주장.', '근대 정치학의 출발점이자 현실주의 정치사상의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-jo-gwangjo-gimyo-reforms', '조광조의 도학 정치 개혁과 기묘사화 (1519년)', '조광조의 도학 정치 개혁과 기묘사화 (1519년)', 'KOREA', '', 'INSTITUTION', 'A', 1515, 1519, 'exact', '중종 때 조광조가 현량과(추천제) 실시, 소격서 폐지, 향약 보급, 위훈삭제(훈구 공신 거짓 공신 삭탈)를 추진하다 주초위왕 모함으로 사사됨.', '조선 사림파의 도덕주의 개혁 운동의 상징적 사건.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-martin-luther-reformation', '마르틴 루터의 95개조 반박문과 종교개혁 (1517년)', '마르틴 루터의 95개조 반박문과 종교개혁 (1517년)', 'WEST', '', 'RELIGION', 'A', 1517, 1517, 'exact', '비텐베르크 성교회 문에 면벌부 판매를 비판하는 반박문을 게시하고 오직 믿음(Sola Fide), 오직 은혜, 오직 성경을 주창.', '중세 가톨릭 단일 세계 붕괴와 개신교(프로테스탄트)의 탄생, 근대 개인주의와 종교 자유의 기원.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('protestant-reformation-luther', '종교개혁과 95개조 반박문', 'Protestant Reformation & Martin Luther', 'WEST', '독일 비텐베르크', 'RELIGION', 'A', 1517, 1648, 'exact', '마르틴 루터의 면벌부 판매 비판으로 시작되어 교황권의 절대성을 무너뜨리고 개신교(프로테스탄트)가 분립한 종교·사회 혁명.', '개인의 신앙 자유와 성서 중심주의를 확립하고 30년 전쟁 후 베스트팔렌 조약으로 근대 주권국가 체제 출범.', '로마 가톨릭 교회의 세속화와 면벌부 강매, 활판 인쇄술을 통한 비판 확산.', '30년 전쟁(1618~1648) 및 종교 다원화, 베스트팔렌 평화조약.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-magellan-circumnavigation', '마젤란-엘카노 함대의 인류 최초 세계 일주 (1519~1522년)', '마젤란-엘카노 함대의 인류 최초 세계 일주 (1519~1522년)', 'WEST', '', 'SCIENCE', 'A', 1519, 1522, 'exact', '스페인을 출항해 마젤란 해협을 지나 태평양을 횡단하고 빅토리아호가 귀환하여 지구가 둥글다는 것을 실증.', '지구 전 구역의 지리적 연결 완성 및 대항해 시대의 정점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-spanish-conquest-americas', '스페인의 아즈텍·잉카 제국 정복 (코르테스·피사로)', '스페인의 아즈텍·잉카 제국 정복 (코르테스·피사로)', 'WEST', '', 'POLITICS', 'A', 1519, 1533, 'exact', '코르테스가 멕시코 아즈텍을(1521), 피사로가 페루 잉카 제국을 멸망시키고 포토시 은광을 개발해 막대한 은을 유럽으로 수송.', '스페인 해가 지지 않는 제국의 건설과 유럽의 가격 혁명(인플레이션).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-shin-saimdang-art', '신사임당의 초충도와 예술적 성취', '신사임당의 초충도와 예술적 성취', 'KOREA', '', 'ART_CULTURE', 'C', 1520, 1551, 'exact', '수박, 가지, 오이, 나비, 방아깨비 등을 섬세한 필치로 묘사한 『초충도』와 시문학, 서예에 뛰어난 조선 최고의 여류 예술가.', '자연을 사랑한 고결한 예술혼과 율곡 이이의 어머니.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-john-calvin-institutes', '장 칼뱅의 『기독교 강요』와 예정설 (제네바 종교개혁)', '장 칼뱅의 『기독교 강요』와 예정설 (제네바 종교개혁)', 'WEST', '', 'RELIGION', 'A', 1536, 1559, 'exact', '구원은 오직 하나님의 절대 주권에 예정되어 있다는 교리와 직업소명설, 근면·절약을 강조.', '막스 베버가 분석한 자본주의 정신의 산실이자 장로교·청교도의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-copernicus-heliocentrism', '코페르니쿠스의 지동설 발표 (『천구의 회전에 관하여』, 1543년)', '코페르니쿠스의 지동설 발표 (『천구의 회전에 관하여』, 1543년)', 'WEST', '', 'SCIENCE', 'A', 1543, 1543, 'exact', '지구가 우주의 중심이 아니라 태양 주위를 도는 행성 중 하나라는 태양 중심설(지동설) 수학적 제안.', '과학 혁명(Scientific Revolution)의 거대한 서막을 연 코페르니쿠스적 전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-vesalius-human-anatomy', '안드레아스 베살리우스의 『인체의 구조에 관하여(De Fabrica)』', '안드레아스 베살리우스의 『인체의 구조에 관하여(De Fabrica)』', 'WEST', '', 'SCIENCE', 'B', 1543, 1543, 'exact', '갈레노스의 오류를 직접 시체 해부를 통해 바로잡고 정밀한 목판 삽화로 뼈, 근육, 혈관을 해부학적으로 규명.', '근대 해부학 및 현대 의학의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-baekundong-seowon-first', '주세붕의 백운동서원(소수서원) 창건과 서원의 전국 확산 (1543년)', '주세붕의 백운동서원(소수서원) 창건과 서원의 전국 확산 (1543년)', 'KOREA', '', 'INSTITUTION', 'A', 1543, 1550, 'exact', '풍기군수 주세붕이 안향을 모시기 위해 최초의 사설 서원을 세우고, 이황의 건의로 명종이 ''소수서원'' 현판을 내린 최초의 사액서원 탄생.', '사림파의 향촌 결집 거점이자 유교 교육·선현 제향의 중심지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('scientific-revolution-newton', '과학 혁명과 뉴턴의 프린키피아', 'Scientific Revolution & Newton''s Principia', 'WEST', '영국/유럽', 'SCIENCE', 'A', 1543, 1687, 'exact', '코페르니쿠스의 지동설, 갈릴레오의 관측을 거쳐 아이작 뉴턴이 만유인력과 고전역학 체계를 확립하여 근대 과학의 패러다임을 완성함.', '자연을 수학적 법칙으로 설명하는 기계론적 세계관을 정립하고 계몽주의와 산업혁명의 지적 기초를 마련.', '경험주의(베이컨)와 합리주의(데카르트)의 융합 및 망원경 등 정밀 관측기구 발명.', '계몽사상 확산과 기술 응용을 통한 산업혁명.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-li-shizhen-bencao-gangmu', '이시진의 『본초강목(本草綱目)』 편찬 (1578년)', '이시진의 『본초강목(本草綱目)』 편찬 (1578년)', 'CHINA', '', 'SCIENCE', 'A', 1552, 1578, 'exact', '27년간 1,892종의 약재와 11,096개의 처방, 1,100여 점의 삽화를 52권에 체계적으로 분류한 동양 최대의 약학 백과사전.', '유네스코 세계기록유산이자 식물학·광물학·의학의 세계적 고전.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-peace-of-augsburg', '아우크스부르크 화의 (1555년)', '아우크스부르크 화의 (1555년)', 'WEST', '', 'RELIGION', 'C', 1555, 1555, 'exact', '''영주의 종교가 그 영지의 종교를 결정한다(Cuius regio, eius religio)''는 원칙으로 루터교 공인.', '신성로마제국 내 루터파의 합법화와 종교 전쟁의 일시적 봉합.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-qi-jiguang-anti-piracy', '척계광의 척가군 창설과 왜구 완전 격퇴 (1561년)', '척계광의 척가군 창설과 왜구 완전 격퇴 (1561년)', 'CHINA', '', 'POLITICS', 'A', 1555, 1568, 'exact', '낭선과 등패, 조총을 유기적으로 결합한 원앙진(鴛鴦陣) 전술을 창안하고 『기효신서』를 지어 절강·복건 왜구를 소탕.', '동남 해안 안정화 및 후대 조선 임진왜란 무예도보통지에 전술 전파.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-toegye-yulgok-neo-confucianism', '퇴계 이황과 율곡 이이의 성리학 심화 (사단칠정 논쟁)', '퇴계 이황과 율곡 이이의 성리학 심화 (사단칠정 논쟁)', 'KOREA', '', 'RELIGION', 'A', 1558, 1584, 'exact', '이황의 주리론(『성학십도』, 일본 성리학에 지대한 영향)과 이이의 주기론·십만양병설(『성학집요』)로 조선 성리학의 세계적 이론 완성.', '한국 유학 사상의 최고 양대 산맥 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-lim-kkeokjeong-rebellion', '임꺽정의 구월산 도적 봉기 (명종 대, 1559~1562년)', '임꺽정의 구월산 도적 봉기 (명종 대, 1559~1562년)', 'KOREA', '', 'POLITICS', 'B', 1559, 1562, 'exact', '백정 출신 임꺽정이 황해도 구월산을 거점으로 의적 활동을 벌이며 탐관오리의 재물을 털어 빈민에게 구휼.', '16세기 훈구 척신 정치(을사사화·문정왕후)의 학정 속에서 분출된 민중 저항.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-silver-influx-global-trade', '스페인·일본 은(銀)의 중국 대량 유입과 글로벌 무역', '스페인·일본 은(銀)의 중국 대량 유입과 글로벌 무역', 'CHINA', '', 'ECONOMY', 'B', 1570, 1600, 'exact', '마닐라 갤리온 무역과 일본 이와미 은광의 은이 중국의 비단, 도자기, 차와 교환되며 전 세계 은의 3분의 1이 명나라로 집결.', '글로벌 조기 자본주의 경제망의 중심축으로 중국 번영.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-zhang-juzheng-single-whip', '장거정의 일조편법(一條鞭法) 전국 개혁 (1581년)', '장거정의 일조편법(一條鞭法) 전국 개혁 (1581년)', 'CHINA', '', 'INSTITUTION', 'A', 1572, 1582, 'exact', '복잡한 전세, 요역, 잡세를 하나로 묶어 토지 1무당 은(銀)으로 납부하게 하는 전국 조세 혁신 단행.', '중국 조세 제도의 은본위 화폐화 및 국가 재정 건전화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-sarim-factional-split', '붕당 정치의 발생 (동인과 서인의 분당, 1575년)', '붕당 정치의 발생 (동인과 서인의 분당, 1575년)', 'KOREA', '', 'POLITICS', 'A', 1575, 1575, 'exact', '이조전랑 자리를 두고 김효원(동인)과 심의겸(서인)을 중심으로 사림파가 양분되어 학문과 정견에 따른 붕당 정치 시작.', '상호 비판과 견제를 통한 조선 중기 정치 질서의 틀 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-matte-ricci-jesuit-mission', '마테오 리치의 중국 입국과 『천주실의』·『곤여만국전도』', '마테오 리치의 중국 입국과 『천주실의』·『곤여만국전도』', 'CHINA', '', 'RELIGION', 'A', 1582, 1601, 'exact', '예수회 선교사 마테오 리치가 유학자 복장을 하고 서양 천문학, 기하학(유클리드 원론), 세계지도를 소개하며 서광계 등과 교류.', '서학(西學)의 최초 중국 유입과 동서 문명 융합의 가교.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-nurgaci-unification-jurchen', '누르하치의 건주여진 통일과 8기군 창설 착수 (1583~1600년)', '누르하치의 건주여진 통일과 8기군 창설 착수 (1583~1600년)', 'CHINA', '', 'POLITICS', 'C', 1583, 1600, 'exact', '부친의 갑옷 13벌로 거병하여 건주여진을 통합하고 만주 문자 제정 및 후금(청) 건국 기반 구축.', '명청 교체의 주역인 만주 제국의 태동.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce16-spanish-armada-defeat', '영국의 스페인 무적함대(아르마다) 격파 (1588년)', '영국의 스페인 무적함대(아르마다) 격파 (1588년)', 'WEST', '', 'POLITICS', 'A', 1588, 1588, 'exact', '엘리자베스 1세 치하 프랜시스 드레이크의 영국 함대가 화선과 장거리 함포로 펠리페 2세의 무적함대를 칼레 해전에서 궤멸시킴.', '스페인의 해상 패권 쇠퇴와 영국의 세계 해양 대제국 도약 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-journey-to-the-west-novel', '오승은의 『서유기(西遊記)』 출판', '오승은의 『서유기(西遊記)』 출판', 'CHINA', '', 'ART_CULTURE', 'C', 1590, 1592, 'exact', '손오공, 저팔계, 사오정이 삼장법사를 호위하여 서천으로 불경을 구하러 가는 100회 장편 판타지 소설.', '중국 낭만주의 환상 문학의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-ming-aid-to-joseon-imjin', '명나라의 임진왜란 참전 (만력 3대정, 1592~1598년)', '명나라의 임진왜란 참전 (만력 3대정, 1592~1598년)', 'CHINA', '', 'POLITICS', 'B', 1592, 1598, 'exact', '만력제가 이여송의 군대를 파견하여 평양성을 탈환하는 등 조선을 구원했으나 명나라 재정의 치명적 고갈 초래.', '명나라 쇠퇴와 만주 여진족(누르하치) 발흥의 결정적 원인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('imjin-war-east-asia', '임진왜란과 동아시아 삼국의 격변', 'Imjin War & East Asian Transformation', 'KOREA', '조선/일본/명', 'POLITICS', 'A', 1592, 1598, 'exact', '도요토미 히데요시의 조선 침략으로 발발한 동아시아 국제 전쟁으로, 이순신의 해전 승리와 의병의 항전으로 격퇴함.', '조선 국토의 황폐화, 명나라의 국력 쇠퇴 및 청나라로의 왕조 교체, 일본 도쿠가와 이에야스의 에도 막부 수립을 촉발.', '일본 전국시대 통일 후 도요토미 히데요시의 대륙 정복 야망과 조총 보급.', '명·청 교체와 여진족(후금)의 대두, 일본의 도자기 전쟁(조선 도공 납치).', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-imjin-war-outbreak', '임진왜란 발발 (1592년)과 한산도·명량·노량 해전', '임진왜란 발발 (1592년)과 한산도·명량·노량 해전', 'KOREA', '', 'POLITICS', 'A', 1592, 1598, 'exact', '도요토미 히데요시의 20만 왜군 침략에 맞서 이순신 장군이 거북선과 학익진으로 23전 23승 불패 신화를 쓰며 제해권을 장악하고 국가를 수호함.', '동아시아 3국의 국제 대전쟁이자 조선을 구한 성웅 이순신의 불멸의 해전 승리.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-righteous-armies-imjin', '전국 의병(義兵)의 궐기와 곽재우·조헌·사명대사', '전국 의병(義兵)의 궐기와 곽재우·조헌·사명대사', 'KOREA', '', 'POLITICS', 'A', 1592, 1598, 'exact', '홍의장군 곽재우, 고경명, 조헌(금산 전투), 서산대사·사명대사(승병) 등이 향토와 백성을 지키기 위해 자발적으로 무장 봉기.', '민중과 양반이 일치단결한 구국 저항 정신의 표상.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce16-gwon-yul-haengju-great-victory', '권율 장군의 행주대첩 (1593년)', '권율 장군의 행주대첩 (1593년)', 'KOREA', '', 'POLITICS', 'B', 1593, 1593, 'exact', '행주산성에서 권율의 2,300여 군관민과 부녀자들(행주치마 돌 나르기), 신기전과 변이중 화차로 왜군 3만을 대파함.', '임진왜란 3대 대첩의 하나로 한양 수복의 결정적 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce16-donglin-academy-movement', '고헌성의 동림서원 재건과 동림당 운동 (1594년)', '고헌성의 동림서원 재건과 동림당 운동 (1594년)', 'CHINA', '', 'POLITICS', 'B', 1594, 1600, 'exact', '무석 동림서원에서 사대부들이 모여 환관 정치와 광세(세금)를 비판하며 도덕적 정치 개혁 운동 전개.', '명 말기 당쟁(동림당 vs 비동림당/엄당)의 발원지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-dutch-east-india-voc', '네덜란드 동인도회사(VOC) 설립과 암스테르담 증권거래소 (1602년)', '네덜란드 동인도회사(VOC) 설립과 암스테르담 증권거래소 (1602년)', 'WEST', '', 'ECONOMY', 'B', 1602, 1602, 'exact', '인류 최초의 주식회사이자 유한책임제, 세계 최초의 공설 증권거래소를 세워 향신료 무역 독점.', '근대 금융 자본주의와 주식회사 제도의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-gwanghaegun-neutral-diplomacy', '광해군의 실리적 중립 외교와 강홍립 파견 (1619년)', '광해군의 실리적 중립 외교와 강홍립 파견 (1619년)', 'KOREA', '', 'POLITICS', 'A', 1608, 1623, 'exact', '명나라의 원병 요청에 강홍립에게 1만 3천 군사를 주어 사르후 전투에 출정시킨 후 상황을 보아 후금(청)에 투항케 하여 조선 침략을 방지.', '명분보다 실리를 중시한 탁월한 자주적 외교 정책.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-daedongbeop-tax-reform', '대동법(大同法) 실시 (이원익·김육, 1608~1708년)', '대동법(大同法) 실시 (이원익·김육, 1608~1708년)', 'KOREA', '', 'INSTITUTION', 'A', 1608, 1708, 'exact', '가호마다 부과하던 가혹한 특산물 공납을 토지 결수에 따라 쌀(1결당 12두)·동전으로 통일 납부하게 하고 공인(貢人) 육성.', '농민 부담을 덜고 상품 화폐 경제 및 장시 발달을 촉진한 조선 최고의 세제 개혁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-galileo-telescope-dialogue', '갈릴레오 갈릴레이의 망원경 천체 관측과 지동설 옹호', '갈릴레오 갈릴레이의 망원경 천체 관측과 지동설 옹호', 'WEST', '', 'SCIENCE', 'A', 1609, 1633, 'exact', '목성의 4대 위성, 달의 크레이터, 금성의 위상을 관측하고 『두 우주 체계에 관한 대화』를 썼다가 종교재판에서 ''그래도 지구는 돈다'' 남김.', '근대 관측 천문학과 실험 물리학의 창시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-donguibogam-heojun', '허준의 『동의보감(東醫寶鑑)』 완성 (유네스코 세계기록유산, 1610년/1613년)', '허준의 『동의보감(東醫寶鑑)』 완성 (유네스코 세계기록유산, 1610년/1613년)', 'KOREA', '', 'SCIENCE', 'A', 1610, 1613, 'exact', '광해군의 명으로 내경·외형·잡병·탕액·침구 5편 25권으로 동양 의학 지식을 집대성하고 한글 약초 이름을 병기.', '동양 의학사상 독보적인 예방의학 백과사전이자 의학서 최초의 유네스코 세계기록유산.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-hong-gildong-jeon-novel', '허균의 한글 소설 『홍길동전(洪吉童傳)』', '허균의 한글 소설 『홍길동전(洪吉童傳)』', 'KOREA', '', 'ART_CULTURE', 'B', 1610, 1618, 'exact', '적서 차별(호부호형 불가)을 타파하고 활빈당을 이끌어 탐관오리를 징벌한 후 이상향 율도국을 세우는 최초의 한글 소설.', '한국 한글 문학의 효시이자 신분제 비판 사회 개혁 소설.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-peace-of-westphalia', '30년 전쟁 종결과 베스트팔렌 조약 (1648년)', '30년 전쟁 종결과 베스트팔렌 조약 (1648년)', 'WEST', '', 'POLITICS', 'A', 1618, 1648, 'exact', '유럽 전역을 초토화한 최후의 종교 전쟁을 끝내며 국가 주권, 영토 보전, 내정 불간섭 원칙 확립.', '근대 국제법 및 주권 국가 체제(Westphalian System)의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-injo-coup-1623', '인조반정 (1623년)과 친명배금 정책', '인조반정 (1623년)과 친명배금 정책', 'KOREA', '', 'POLITICS', 'A', 1623, 1623, 'exact', '서인 세력(이귀·김류)이 광해군의 폐모살제와 중립외교를 비판하며 무력으로 정권을 탈취하고 능양군(인조)을 옹립.', '친명배금 노선으로 정묘호란과 병자호란의 참화를 자초한 정치적 분기점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-xu-guangqi-nongzheng-quanshu', '서광계의 『농정전서(農政全書)』 편찬 (1639년)', '서광계의 『농정전서(農政全書)』 편찬 (1639년)', 'CHINA', '', 'SCIENCE', 'B', 1625, 1639, 'exact', '전통 농업 기술에 서양의 수리 공학(아르키메데스 나선 펌프 등)을 접목한 60권의 종합 농업 기술서 완성.', '서양 과학과 결합한 명 말기 실학의 걸작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-william-harvey-blood-circulation', '윌리엄 하비의 혈액 순환 이론 발견 (1628년)', '윌리엄 하비의 혈액 순환 이론 발견 (1628년)', 'WEST', '', 'SCIENCE', 'B', 1628, 1628, 'exact', '심장이 펌프 작용을 하여 동맥과 정맥을 통해 온몸을 순환한다는 사실을 정량적 실험으로 규명.', '근대 생리학과 심혈관 의학의 기초.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-byeongjahoran-samjeondo', '병자호란(1636년)과 남한산성 결사항전·삼전도의 굴욕 (1637년)', '병자호란(1636년)과 남한산성 결사항전·삼전도의 굴욕 (1637년)', 'KOREA', '', 'POLITICS', 'A', 1636, 1637, 'exact', '청 태종 12만 군대의 침략으로 인조가 남한산성에서 47일간 혹한 속에 저항하다 삼전도에서 삼궤구고두례를 행하며 항복.', '명청 교체의 소용돌이 속에서 겪은 국가적 치욕과 효종의 북벌론, 소현세자의 서양 문물 수용 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-tiangong-kaiwu', '송응성의 산업기술 백과사전 『천공개물(天工開物)』 편찬 (1637년)', '송응성의 산업기술 백과사전 『천공개물(天工開物)』 편찬 (1637년)', 'CHINA', '', 'SCIENCE', 'A', 1637, 1637, 'exact', '농업, 방직, 제련, 도자기, 주조, 화약, 제지 등 전통 산업 제조 공정을 123점의 정밀 삽화와 함께 기술.', '동양의 디드로 백과사전으로 평가받는 실용 기술학의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-descartes-discourse-on-method', '르네 데카르트의 『방법서설』 (''나는 생각한다, 고로 존재한다'')', '르네 데카르트의 『방법서설』 (''나는 생각한다, 고로 존재한다'')', 'WEST', '', 'SCIENCE', 'A', 1637, 1637, 'exact', '방법적 회의를 통해 확실한 철학의 제1원리(Cogito, ergo sum)를 도출하고 해석기하학(직교좌표계) 창안.', '근대 서양 합리론 철학과 수학의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-sohyeon-crown-prince-western', '소현세자의 심양 볼모와 아담 샬과의 교류 (서양 과학 도입)', '소현세자의 심양 볼모와 아담 샬과의 교류 (서양 과학 도입)', 'KOREA', '', 'SCIENCE', 'B', 1637, 1645, 'exact', '청나라 심양에 볼모로 잡혀간 소현세자가 독일 예수회 선교사 아담 샬에게 망원경, 천문역법(시헌력), 천주교 서적을 수용하여 귀국.', '조선에 서구 근대 과학 문물이 최초로 도입된 역사적 사건.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-rembrandt-night-watch', '렘브란트의 명암법과 『야간 순찰(The Night Watch)』 (1642년)', '렘브란트의 명암법과 『야간 순찰(The Night Watch)』 (1642년)', 'WEST', '', 'ART_CULTURE', 'C', 1642, 1642, 'exact', '키아로스쿠로(빛과 어둠의 대조) 기법으로 민병대 시민들의 역동적인 움직임을 담은 바로크 미술의 최고봉.', '네덜란드 황금시대 회화 예술의 대표작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-manchu-conquest-beijing', '이자성의 북경 점령과 청나라의 산해관 입관 (1644년)', '이자성의 북경 점령과 청나라의 산해관 입관 (1644년)', 'CHINA', '', 'POLITICS', 'A', 1644, 1644, 'exact', '이자성의 농민군이 북경을 함락해 숭정제가 자살하고 명 멸망 후, 오삼계가 산해관 문을 열어 다이곤의 청군이 중원 장악.', '명청 교체와 만주족에 의한 중국 전역 통치(268년 청 제국) 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-eight-banners-system-peak', '청나라 팔기제(八旗制)와 녹영병 군사 체제 완성', '청나라 팔기제(八旗制)와 녹영병 군사 체제 완성', 'CHINA', '', 'INSTITUTION', 'B', 1644, 1690, 'exact', '만주 8기, 몽골 8기, 한군 8기의 군정일치 조직과 한족 중심의 녹영군으로 광대한 제국 방어.', '소수 만주족이 다수 한족을 지배할 수 있었던 군사적 핵심.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('qing-dynasty-founding', '청나라 건국과 강건성세(康乾盛世)', 'Qing Dynasty & High Qing Era', 'CHINA', '청(淸)', 'POLITICS', 'A', 1644, 1795, 'range', '만주족이 명나라를 멸망시키고 청나라를 세운 뒤, 강희제·옹정제·건륭제 3대에 걸쳐 영토를 최대치(티베트, 신장 등)로 확장하고 번영을 누림.', '오늘날 중국 영토의 기본 경계를 확립하고 팔기군 제도와 만한병용제로 다민족 제국을 안정적으로 통치.', '이자성의 난으로 명나라 자멸 후 오삼계의 투항 및 팔기군의 입관.', '19세기 아편전쟁과 서구 열강의 침략으로 쇠퇴.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-queuing-order-manchu', '변발령(剃髮令) 시행 (''머리를 남기면 목을 자른다'')', '변발령(剃髮令) 시행 (''머리를 남기면 목을 자른다'')', 'CHINA', '', 'INSTITUTION', 'C', 1645, 1645, 'exact', '만주족 복장과 앞머리를 깎고 뒤로 땋는 변발을 강제하여 한족의 신체적 복종을 요구.', '강남 강음·가정 학살 등 거센 반발과 청 제국 복식의 통일.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-gu-yanwu-evidential-scholarship', '고염무의 고증학(考證學) 제창 (''천하흥망 필부유책'')', '고염무의 고증학(考證學) 제창 (''천하흥망 필부유책'')', 'CHINA', '', 'SCIENCE', 'B', 1650, 1682, 'exact', '공리공담의 양명학을 배격하고 문헌의 철저한 실증과 음운학, 지리학을 강조한 『일지록』 저술.', '청대 학문의 주류가 된 실사구시 고증학의 창시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-kangxi-emperor-reign', '강희제의 즉위와 61년 통치 (삼번의 난 평정·대만 복속)', '강희제의 즉위와 61년 통치 (삼번의 난 평정·대만 복속)', 'CHINA', '', 'POLITICS', 'A', 1661, 1700, 'exact', '오삼계 등 3번의 난을 평정(1681), 정성공의 대만을 복속(1683), 몽골 갈단을 친정하여 준가르 격파.', '강건성세(강희·옹정·건륭 130년 황금기)의 위대한 기틀 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-louis-xiv-versailles-absolutism', '루이 14세의 베르사유 궁전과 프랑스 절대왕정 (''짐은 곧 국가다'')', '루이 14세의 베르사유 궁전과 프랑스 절대왕정 (''짐은 곧 국가다'')', 'WEST', '', 'POLITICS', 'A', 1661, 1700, 'exact', '''태양왕'' 루이 14세가 베르사유 궁전을 지어 귀족을 복종시키고 콜베르의 중상주의로 유럽 최강국 군림.', '서유럽 절대왕정의 최고 화려한 절정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-huang-zongxi-waiting-for-the-dawn', '황종희의 『명이대방록(明夷待訪錄)』과 반전제주의 사상', '황종희의 『명이대방록(明夷待訪錄)』과 반전제주의 사상', 'CHINA', '', 'INSTITUTION', 'A', 1662, 1663, 'exact', '''천하의 주인은 백성이고 군주는 손님이다''를 선언하며 군주 전제정과 법률 독점을 맹렬히 비판.', '중국 근대 계몽주의 사상과 민주적 헌정론의 선구.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-sangpyeong-tongbo-coin', '상평통보(常平通寶) 전국 유통 개시 (1678년)', '상평통보(常平通寶) 전국 유통 개시 (1678년)', 'KOREA', '', 'ECONOMY', 'A', 1678, 1678, 'exact', '숙종 4년 영의정 허적 등의 건의로 상평통보를 대량 주조하여 조세, 매매, 임금 지불에 사용하여 화폐 경제 전면 정착.', '조선 후기 전국적 상품 유통과 금속 화폐 유통의 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-pu-songling-liaozhai', '포송령의 기이한 요괴 소설 『요재지이(聊齋志異)』', '포송령의 기이한 요괴 소설 『요재지이(聊齋志異)』', 'CHINA', '', 'ART_CULTURE', 'C', 1679, 1700, 'exact', '여우 귀신, 유령, 신선 이야기를 통해 관료의 부패와 과거 제도의 부조리를 풍자한 500여 편의 단편소설.', '중국 문언 단편소설의 최고봉.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-hwanguk-politics-sukjong', '숙종 대의 환국 정치 (경신·기사·갑술환국과 장희빈)', '숙종 대의 환국 정치 (경신·기사·갑술환국과 장희빈)', 'KOREA', '', 'POLITICS', 'A', 1680, 1694, 'exact', '숙종이 왕권 강화를 위해 서인과 남인을 번갈아 일거에 실각·사사시키는 환국(換局)을 단행하여 붕당의 상호 공존 붕괴.', '붕당 정치가 일당 전제화 및 사생결단식 권력 투쟁으로 변질.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-isaac-newton-principia', '아이작 뉴턴의 『자연철학의 수학적 원리(프린키피아)』 (1687년)', '아이작 뉴턴의 『자연철학의 수학적 원리(프린키피아)』 (1687년)', 'WEST', '', 'SCIENCE', 'A', 1687, 1687, 'exact', '만유인력의 법칙과 3대 운동 법칙(관성, 가속도, 작용·반작용), 미적분학으로 고전 물리학 완성.', '과학 혁명의 최고 절정이자 근대 기계론적 우주관 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-english-glorious-revolution', '영국의 명예혁명과 권리장전(Bill of Rights) 승인 (1688~1689년)', '영국의 명예혁명과 권리장전(Bill of Rights) 승인 (1688~1689년)', 'WEST', '', 'INSTITUTION', 'A', 1688, 1689, 'exact', '제임스 2세를 피 한 방울 흘리지 않고 축출하고 윌리엄 3세와 메리 2세가 ''의회의 승인 없이 과세·입법할 수 없다''는 권리장전에 서명.', '세계 최초의 입헌군주제 및 의회 민주주의 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce17-treaty-of-nerchinsk', '청·러 네르친스크 조약 체결 (1689년)', '청·러 네르친스크 조약 체결 (1689년)', 'CHINA', '', 'POLITICS', 'A', 1689, 1689, 'exact', '스타노보이 산맥과 아르군강을 국경으로 확정하고 라틴어·만주어·러시아어로 조약문 작성.', '중국 역사상 서양 국가(러시아)와 맺은 최초의 근대적 대등 조약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce17-john-locke-two-treatises', '존 로크의 『정치통치론(시민정부론)』과 사회계약설 (1689년)', '존 로크의 『정치통치론(시민정부론)』과 사회계약설 (1689년)', 'WEST', '', 'INSTITUTION', 'B', 1689, 1689, 'exact', '인간의 자연권(생명·자유·재산)을 보호하기 위해 정부를 위임했으며 권력을 남용할 때 ''저항권''이 있음을 천명.', '미국 독립선언서와 근대 자유민주주의 헌정의 사상적 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce17-ahn-yongbok-dokdo', '안용복의 도일(渡日)과 독도·울릉도 조선 영유권 일본 막부 공인 (1693/1696년)', '안용복의 도일(渡日)과 독도·울릉도 조선 영유권 일본 막부 공인 (1693/1696년)', 'KOREA', '', 'POLITICS', 'B', 1693, 1696, 'exact', '부산 동래 어민 안용복이 일본 돗토리번에 건너가 항의하여 에도 막부로부터 ''울릉도와 독도는 조선의 영토''라는 서계를 받아냄.', '독도가 역사적·국제법적으로 명백한 대한민국의 영토임을 입증하는 결정적 사료.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-white-porcelain-moon-jar', '조선 백자 달항아리(백자대호)의 미학', '조선 백자 달항아리(백자대호)의 미학', 'KOREA', '', 'ART_CULTURE', 'C', 1700, 1750, 'exact', '상하 부분을 따로 빚어 이어 붙인 부정형의 둥근 곡선과 순백의 절제미를 담은 40cm 이상의 거대한 백자 항아리 제작.', '한국 고유의 무위자연과 순백의 아름다움을 상징하는 세계적 명품.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-tian-fu-yong-ding', '지정은제(地丁銀制)의 전국적 완성', '지정은제(地丁銀制)의 전국적 완성', 'CHINA', '', 'INSTITUTION', 'B', 1712, 1729, 'exact', '강희제가 인두세(정세)를 동결한 후 옹정제가 정세를 토지세(지세)에 완전 통합하여 은으로 징수.', '인두세 완전 폐지로 인한 중국 인구의 폭발적 증가(1억 명→3억 명).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-yeongjo-tangpyeong-gyunyeok', '영조의 탕평책(蕩平策)과 균역법(均役法) 실시 (1750년)', '영조의 탕평책(蕩平策)과 균역법(均役法) 실시 (1750년)', 'KOREA', '', 'INSTITUTION', 'A', 1724, 1776, 'exact', '붕당의 대립을 완화하기 위해 탕평비를 세워 고른 인재를 등용하고, 군포 부담을 2필에서 1필로 반감(결작·선무군관포 신설)한 균역법 시행.', '조선 후기 정치 안정과 농민 생활 안정의 위대한 민본 개혁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-yongzheng-grand-council', '옹정제의 군기도(軍機處) 설치와 주필유지(비밀 상소제)', '옹정제의 군기도(軍機處) 설치와 주필유지(비밀 상소제)', 'CHINA', '', 'INSTITUTION', 'A', 1729, 1735, 'exact', '황제 직속 최고 비밀 군사·정치 의결 기구인 군기처를 두고 신하들의 주접(밀지)을 직접 붉은 먹물로 결재.', '황제 1인 독재 전제 통치 시스템의 완벽한 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-true-view-landscape-genre-painting', '진경산수화(겸재 정선)와 풍속화(단원 김홍도·혜원 신윤복)', '진경산수화(겸재 정선)와 풍속화(단원 김홍도·혜원 신윤복)', 'KOREA', '', 'ART_CULTURE', 'A', 1730, 1800, 'exact', '중국 산수화 모방을 탈피해 금강산·인왕산을 직접 사생한 진경산수화와 서민들의 일상(씨름·서당)과 양반 풍류를 그린 풍속화 만개.', '조선 고유의 미의식과 독자적 민족 회화의 절정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-qianlong-reign-zenith', '건륭제의 십전무공(十全武功)과 청 제국 최대 판도 완성', '건륭제의 십전무공(十全武功)과 청 제국 최대 판도 완성', 'CHINA', '', 'POLITICS', 'A', 1735, 1796, 'exact', '준가르, 신장(위구르), 티베트, 대만, 네팔(구르카)을 완전 복속시켜 1,300만 ㎢의 역사상 최대 판도 구축.', '오늘날 현대 중국 국경선의 기본 영토 확정.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-enlightenment-philosophes', '유럽 계몽주의의 전성기 (볼테르·루소·몽테스키외)', '유럽 계몽주의의 전성기 (볼테르·루소·몽테스키외)', 'WEST', '', 'RELIGION', 'A', 1748, 1778, 'exact', '몽테스키외의 3권분립(『법의 정신』), 루소의 국민주권(『사회계약론』), 볼테르의 관용과 표현의 자유 주창.', '근대 민주 정치 제도의 철학적 청사진 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-dream-of-the-red-chamber', '조설근의 『홍루몽(紅樓夢)』 편찬', '조설근의 『홍루몽(紅樓夢)』 편찬', 'CHINA', '', 'ART_CULTURE', 'A', 1750, 1791, 'exact', '가보옥과 임대옥의 비극적 사랑을 통해 청대 귀족 가문의 흥망성쇠를 섬세한 심리 묘사로 그린 중국 최고의 소설.', '홍학(紅學)이라는 전문 학문 분야를 낳은 중국 문학의 불멸의 금자탑.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-pansori-chunhyangjeon', '판소리 12마당과 서민 문학의 대중화', '판소리 12마당과 서민 문학의 대중화', 'KOREA', '', 'ART_CULTURE', 'B', 1750, 1800, 'exact', '소리꾼과 고수가 어우러져 민중의 애환과 해학을 노래하는 『춘향가』, 『심청가』, 『흥보가』 등 판소리와 한글 소설 대유행.', '유네스코 인류무형문화유산으로 등재된 한국 전통 공연 예술의 백미.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-diderot-encyclopedie', '디드로와 달랑베르의 『백과전서(Encyclopédie)』 편찬 (1751~1772년)', '디드로와 달랑베르의 『백과전서(Encyclopédie)』 편찬 (1751~1772년)', 'WEST', '', 'SCIENCE', 'B', 1751, 1772, 'exact', '모든 과학, 예술, 기술, 철학 지식을 비판적 이성으로 집대성한 28권의 기념비적 계몽 저작.', '지식의 대중화와 프랑스 혁명의 사상적 인큐베이터.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-seven-years-war-global', '7년 전쟁 (인류 최초의 글로벌 세계 대전, 1756~1763년)', '7년 전쟁 (인류 최초의 글로벌 세계 대전, 1756~1763년)', 'WEST', '', 'POLITICS', 'B', 1756, 1763, 'exact', '유럽, 북미(프렌치-인디언 전쟁), 인도(플라시 전투)에서 영국-프로이센 vs 프랑스-오스트리아가 격돌하여 영국의 대승.', '대영제국이 전 세계 패권을 장악하고 프랑스는 북미 식민지 상실.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-canton-system-trade', '광주 1구 무역 체제(광둥 공행 제도, 1757년)', '광주 1구 무역 체제(광둥 공행 제도, 1757년)', 'CHINA', '', 'ECONOMY', 'A', 1757, 1757, 'exact', '서양 국가들과의 무역항을 광저우 1곳으로 제한하고 독점 상인 길드 공행(十三行)을 통해서만 교역 허용.', '아편전쟁(1840년)의 무역 불균형 갈등을 낳은 폐쇄적 무역 통제.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-silhak-movement-jeong-yak-yong', '실학(實學)의 집대성 (다산 정약용·박지원·박제가)', '실학(實學)의 집대성 (다산 정약용·박지원·박제가)', 'KOREA', '', 'SCIENCE', 'A', 1760, 1800, 'exact', '중농학파(유형원·이익·정약용)의 토지 개혁과 중상학파(북학파 박지원 『열하일기』, 박제가 『북학의』)의 상공업 진흥 및 청 문물 수용 주장.', '조선 사회의 구조적 모순을 혁파하려 한 근대적 비판 지성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('industrial-revolution-britain', '영국 산업혁명과 증기기관의 실용화', 'British Industrial Revolution & Steam Engine', 'WEST', '영국', 'SCIENCE', 'A', 1760, 1840, 'approximate', '제임스 와트의 증기기관 개량과 방적기 발명으로 인류의 생산 방식이 가내수공업에서 기계제 공장으로 전환된 경제·사회적 대격변.', '자본주의와 도시화, 노동계급의 형성을 낳았으며 현대 산업 문명과 글로벌 경제 구조의 출발점.', '영국의 풍부한 석탄/철광석, 식민지 무역을 통한 자본 축적, 안정된 정치 제도(명예혁명).', '철도망 부설, 세계 시장 통합, 환경오염 및 자본주의-사회주의 이념 대립.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-prince-sado-tragedy', '사도세자의 비극 (임오화변, 1762년)', '사도세자의 비극 (임오화변, 1762년)', 'KOREA', '', 'POLITICS', 'B', 1762, 1762, 'exact', '영조의 엄격한 훈육과 노론-소론 당쟁의 소용돌이 속에서 사도세자가 뒤주에 갇혀 8일 만에 비극적으로 사망함.', '혜경궁 홍씨의 『한중록』과 정조의 효심(수원 천도 구상)의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-hong-daeyong-astronomy-inquiry', '홍대용의 의산문답(醫山問答)과 지전설·무한우주론', '홍대용의 의산문답(醫山問答)과 지전설·무한우주론', 'KOREA', '', 'SCIENCE', 'C', 1765, 1766, 'exact', '북경 천주당을 견학하고 사설 천문대 농수각을 지어 지구의 자전(지전설)과 지구가 우주의 중심이 아니라는 탈중화주의 과학관 제시.', '동양 전통 우주관을 깬 조선 실학 천문학의 선구.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-industrial-revolution-watt', '제임스 와트의 증기기관 개량과 산업혁명 개막 (1769년)', '제임스 와트의 증기기관 개량과 산업혁명 개막 (1769년)', 'WEST', '', 'SCIENCE', 'A', 1765, 1785, 'exact', '증기기관의 효율을 혁신하여 방적기, 방직기, 제철소, 증기선에 동력을 공급함으로써 기계화 대량 생산 시대 개막.', '인류 경제·사회 구조를 농경 사회에서 산업 자본주의 사회로 완전히 전환시킨 대변혁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-mozart-beethoven-classical-music', '빈 고전파 음악의 황금기 (모차르트·하이든·베토벤)', '빈 고전파 음악의 황금기 (모차르트·하이든·베토벤)', 'WEST', '', 'ART_CULTURE', 'C', 1770, 1800, 'exact', '소나타 형식과 교향곡, 오페라(피가로의 결혼, 마술피리)를 완성하여 서양 음악 예술의 영원한 규범 정립.', '서양 고전 음악의 최전성기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-siku-quanshu-compilation', '『사고전서(四庫全書)』 편찬 (1773~1782년)', '『사고전서(四庫全書)』 편찬 (1773~1782년)', 'CHINA', '', 'ART_CULTURE', 'A', 1773, 1782, 'exact', '경(經)·사(史)·자(子)·집(集) 4부 3,503종 79,337권을 36,000책으로 필사하여 문연각 등 7대 장서각에 보관.', '중국 전통 문헌의 최대 집대성이자 반청 서적을 금서로 검열한 문화 통제.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-american-independence-1776', '미국 독립 혁명과 독립선언서 발표 (1776년)', '미국 독립 혁명과 독립선언서 발표 (1776년)', 'WEST', '', 'POLITICS', 'A', 1775, 1783, 'exact', '토머스 제퍼슨이 기초한 독립선언서를 발표하고 조지 워싱턴이 요크타운 전투에서 승리하여 세계 최초의 근대 공화국 합중국 건국.', '근대 입헌 민주 공화국 모델의 탄생과 전 세계 민주화 혁명의 도화선.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-adam-smith-wealth-of-nations', '애덤 스미스의 『국부론(The Wealth of Nations)』 (1776년)', '애덤 스미스의 『국부론(The Wealth of Nations)』 (1776년)', 'WEST', '', 'ECONOMY', 'A', 1776, 1776, 'exact', '시장 경제의 ''보이지 않는 손(Invisible Hand)'', 자유무역, 분업의 원리를 체계화하여 중상주의를 비판.', '근대 경제학의 탄생이자 자본주의 시장 경제의 바이블.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('joseon-renaissance-jeongjo', '조선 후기 탕평책과 정조의 문예부흥 (규장각, 수원화성)', 'King Jeongjo''s Reform & Late Joseon Renaissance', 'KOREA', '조선', 'POLITICS', 'B', 1776, 1800, 'exact', '정조가 규장각을 설치하고 장용영을 육성하며, 정약용의 거중기를 활용해 수원화성을 축조하는 등 실학 중심의 개혁 정치를 펼침.', '실학사상(북학파)과 조선 후기 서민 문화(판소리, 민화, 한글 소설)가 최고조로 만개함.', '붕당정치의 폐해 극복을 위한 탕평책 추진과 서학(천주교 및 서양 과학)의 유입.', '정조 사후 세도정치(안동 김씨 등) 도래로 인한 국가적 쇠락.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-jeongjo-renaissance-suwon-hwaseong', '정조의 조선 르네상스 (규장각·초계문신제·수원화성 축조, 1794~1796년)', '정조의 조선 르네상스 (규장각·초계문신제·수원화성 축조, 1794~1796년)', 'KOREA', '', 'POLITICS', 'A', 1776, 1800, 'exact', '정약용의 거중기를 이용해 유네스코 세계유산 수원화성을 축조하고, 규장각과 장용영(친위대)을 통해 실학과 문예 부흥 완수.', '조선 후기 문화와 개혁의 최고 황금기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-catholicism-western-learning-origin', '천주교(서학)의 자발적 수용과 이승훈의 세례 (1784년)', '천주교(서학)의 자발적 수용과 이승훈의 세례 (1784년)', 'KOREA', '', 'RELIGION', 'A', 1777, 1784, 'exact', '이벽, 권철신 등이 천진암 강학회에서 학문으로 서학을 연구한 후 이승훈이 북경에서 세례를 받고 돌아와 명동에 한국 천주교회 창립.', '외국 선교사의 파견 없이 자발적으로 교회를 설립한 세계 교회사상 유일한 기적.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-he-shen-corruption', '화신(和珅)의 천문학적 부정축재와 사사 (1799년)', '화신(和珅)의 천문학적 부정축재와 사사 (1799년)', 'CHINA', '', 'POLITICS', 'C', 1780, 1799, 'exact', '건륭제의 총신 화신이 국가 15년 치 예산에 달하는 8억 냥의 은을 축재했다가 가경제에게 처형당함.', '청나라 관료 부패의 극치와 쇠락의 원인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-kant-critique-of-pure-reason', '임마누엘 칸트의 『순수이성비판』 (1781년)', '임마누엘 칸트의 『순수이성비판』 (1781년)', 'WEST', '', 'SCIENCE', 'C', 1781, 1788, 'exact', '대륙 합리론과 영국 경험론을 종합하여 인식론의 코페르니쿠스적 전환과 정언명령(도덕 법칙) 확립.', '독일 관념론과 현대 철학의 최고 거장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('french-revolution', '프랑스 대혁명과 인권 선언', 'French Revolution & Declaration of Rights of Man', 'WEST', '프랑스 파리', 'POLITICS', 'A', 1789, 1799, 'exact', '바스티유 감옥 습격으로 시작되어 절대왕정과 봉건적 신분제를 타파하고 자유·평등·우애의 이념과 근대 시민사회를 선포함.', '국민주권과 기본권 사상을 전 유럽과 세계로 확산시켜 근대 민주주의의 기틀을 확립.', '구제도의 모순(앙시앵 레짐), 삼부회의 갈등, 계몽사상 확산, 재정 파탄.', '루이 16세 처형, 나폴레옹의 등장 및 나폴레옹 법전 제정, 유럽 전역의 민족주의 고양.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-french-revolution', '프랑스 대혁명과 인권선언 (1789년)', '프랑스 대혁명과 인권선언 (1789년)', 'WEST', '', 'POLITICS', 'A', 1789, 1799, 'exact', '바스티유 감옥 습격으로 시작되어 구제도(앙시앵 레짐)를 타파하고 ''자유·평등·우애''의 인간과 시민의 권리선언 채택.', '근대 민주주의, 국민 국가, 인권 사상의 결정적 분수령.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-peking-opera-origin', '휘반(徽班)의 북경 상경과 경극(京劇)의 탄생 (1790년)', '휘반(徽班)의 북경 상경과 경극(京劇)의 탄생 (1790년)', 'CHINA', '', 'ART_CULTURE', 'C', 1790, 1790, 'exact', '건륭제 팔순 잔치를 위해 안휘성의 삼경반 등 극단들이 북경에 들어와 피황희(경극)로 발전.', '중국 대표 전통 종합 공연 예술 경극의 정립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce18-sinhae-tonggong-commercial-freedom', '신해통공(辛亥通共, 1791년) - 금난전권 폐지', '신해통공(辛亥通共, 1791년) - 금난전권 폐지', 'KOREA', '', 'ECONOMY', 'A', 1791, 1791, 'exact', '채제공의 건의로 육의전을 제외한 시전 상인들의 독점 판매권(금난전권)을 폐지하여 난전(자유 상인)의 자유로운 상업 활동 보장.', '조선 상업 자본주의의 획기적 발전과 자유 시장 경제 촉진.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-macartney-embassy-1793', '영국 매카트니 사절단의 북경 방문 (1793년)', '영국 매카트니 사절단의 북경 방문 (1793년)', 'CHINA', '', 'POLITICS', 'A', 1793, 1793, 'exact', '영국 국왕 조지 3세의 친서를 가지고 온 매카트니가 삼궤구고두례를 거부하고 통상을 요구했으나 건륭제가 거절.', '산업화된 서구 열강과 중화 조공 질서의 최초의 문명 충돌.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce18-edward-jenner-smallpox-vaccine', '에드워드 제너의 종두법(천연두 백신) 발명 (1796년)', '에드워드 제너의 종두법(천연두 백신) 발명 (1796년)', 'WEST', '', 'SCIENCE', 'B', 1796, 1796, 'exact', '우두 바이러스를 접종하여 인류 역사상 가장 치명적인 질병 천연두에 대한 면역력을 획득하는 백신 접종법 최초 개발.', '현대 면역학의 탄생과 수억 명의 생명을 구한 의학 혁신.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce18-white-lotus-rebellion-1796', '백련교도의 난(白蓮敎之亂) 폭발 (1796~1804년)', '백련교도의 난(白蓮敎之亂) 폭발 (1796~1804년)', 'CHINA', '', 'POLITICS', 'B', 1796, 1804, 'exact', '사천·호북·섬서 산악 지대에서 빈농들이 종교 결사 백련교를 중심으로 9년간 게릴라 항전 전개.', '청나라 팔기군의 무능 폭로와 강건성세의 종말 및 청 제국 쇠퇴의 신호탄.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-sedo-politics-tribulations', '세도정치(안동 김씨·풍양 조씨)와 홍경래의 난 (1811년)', '세도정치(안동 김씨·풍양 조씨)와 홍경래의 난 (1811년)', 'KOREA', '', 'POLITICS', 'B', 1800, 1863, 'exact', '순조·헌종·철종 3대 60년간 외척 세도 가문이 매관매직과 삼정의 문란(전정·군정·환곡)을 일삼자 평안도에서 홍경래가 차별 타파를 외치며 농민 봉기.', '조선 후기 국가 시스템의 총체적 파탄과 민중 봉기의 도화선.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-napoleonic-wars-code', '나폴레옹 전쟁과 나폴레옹 법전(Civil Code) 반포 (1804년)', '나폴레옹 전쟁과 나폴레옹 법전(Civil Code) 반포 (1804년)', 'WEST', '', 'POLITICS', 'A', 1804, 1815, 'exact', '나폴레옹 보나파르트가 유럽 대륙을 제패하고 아우스테를리츠 전투 승리 및 법 앞의 평등, 사유재산을 보장한 근대 민법전 반포.', '전 유럽에 프랑스 혁명 이념(자유·평등)을 확산시키고 근대 민법 체계 표준 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('opium-wars-china', '아편전쟁과 동아시아의 개항 격변', 'Opium Wars & Forced Opening of China', 'CHINA', '청나라/홍콩', 'POLITICS', 'A', 1839, 1860, 'exact', '영국의 아편 밀수와 청나라의 몰수로 발발한 전쟁으로, 난징 조약(1842)을 통해 홍콩이 할양되고 불평등 조약 체제가 시작됨.', '동아시아 중화 질서의 붕괴와 서구 제국주의 열강에 의한 반식민지화 위기 개막.', '영국의 무역 적자 해소를 위한 아편 밀무역과 임칙서의 아편 몰수.', '태평천국의 난, 양무운동, 일본의 메이지 유신 촉발.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-first-opium-war-nanjing', '제1차 아편전쟁(1840년)과 난징조약(1842년) - 굴욕의 근대 개막', '제1차 아편전쟁(1840년)과 난징조약(1842년) - 굴욕의 근대 개막', 'CHINA', '', 'POLITICS', 'A', 1840, 1842, 'exact', '임칙서의 아편 몰수 소각에 맞서 영국이 증기 군함 네메시스호로 침공하여 홍콩을 할양받고 상하이 등 5개 항을 개항시키는 불평등 조약 체결.', '중국 100년 치욕사(치욕의 세기)와 반식민지화의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-karl-marx-communist-manifesto-das-kapital', '카를 마르크스의 『공산당 선언』(1848)과 『자본론』(1867)', '카를 마르크스의 『공산당 선언』(1848)과 『자본론』(1867)', 'WEST', '', 'ECONOMY', 'A', 1848, 1867, 'exact', '역사적 유물론과 잉여가치설을 바탕으로 자본주의 모순을 분석하고 프롤레타리아 계급투쟁과 사회주의 이론 정립.', '20세기 전 세계를 양분한 사회주의·공산주의 운동의 바이블.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-taiping-rebellion', '홍수전의 태평천국의 난 (1851~1864년)', '홍수전의 태평천국의 난 (1851~1864년)', 'CHINA', '', 'POLITICS', 'A', 1851, 1864, 'exact', '자칭 예수의 아우 홍수전이 ''멸만흥한'', 남녀평등, 토지 균등 분배(천조전무제도)를 내세우며 난징을 수도로 천경 정권 수립(2천만 명 사망).', '중국 역사상 최대 규모의 기독교 결합 농민 혁명과 향용(증국번 상군)의 대두.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-beijing-treaty-1860', '제2차 아편전쟁과 북경조약·원명원 파괴 (1860년)', '제2차 아편전쟁과 북경조약·원명원 파괴 (1860년)', 'CHINA', '', 'POLITICS', 'C', 1856, 1860, 'exact', '영·프 연합군이 베이징을 점령하고 황실 별궁 원명원을 방화·약탈했으며 러시아에 연해주를 할양함.', '러시아의 부동항 블라디보스토크 확보와 중국 영토 침탈 심화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-charles-darwin-origin-of-species', '찰스 다윈의 『종의 기원』과 진화론 (1859년)', '찰스 다윈의 『종의 기원』과 진화론 (1859년)', 'WEST', '', 'SCIENCE', 'A', 1859, 1859, 'exact', '비글호 항해와 갈라파고스 군도 관찰을 통해 자연선택설(Natural Selection)에 의한 생물 진화 메커니즘 규명.', '생물학뿐 아니라 철학, 사회학, 세계관을 근본적으로 바꾼 과학 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-choe-jeu-donghak-creation', '수운 최제우의 동학(東學) 창시 (인내천 사상, 1860년)', '수운 최제우의 동학(東學) 창시 (인내천 사상, 1860년)', 'KOREA', '', 'RELIGION', 'B', 1860, 1864, 'exact', '서학(서양 세력)에 맞서 경주에서 ''사람이 곧 하늘이다(人乃天)''는 시천주와 후천개벽 사상을 창시하여 양반·천민 차별 없는 평등 세상 제시.', '한국 자생 근대 민족 종교의 탄생(천도교의 모태).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-louis-pasteur-germ-theory', '루이 파스퇴르의 세균 감염론과 백신 개발 (광견병 백신, 1885년)', '루이 파스퇴르의 세균 감염론과 백신 개발 (광견병 백신, 1885년)', 'WEST', '', 'SCIENCE', 'B', 1860, 1885, 'exact', '생물 자연발생설을 반박하고 저온 살균법(파스퇴라이제이션)과 병원균 박멸 원리를 확립하여 광견병·탄저병 백신 개발.', '현대 미생물학과 공중보건 위생학의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-american-civil-war-emancipation', '미국 남북전쟁과 링컨의 노예 해방 선언 (1861~1865년)', '미국 남북전쟁과 링컨의 노예 해방 선언 (1861~1865년)', 'WEST', '', 'POLITICS', 'A', 1861, 1865, 'exact', '에이브러햄 링컨 대통령의 영도 아래 게티즈버그 연설(''국민의, 국민에 의한, 국민을 위한 정부'')과 북군의 승리로 400만 흑인 노예 해방.', '미국의 연방 통합 유지와 세계 최강 산업 국가로의 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-self-strengthening-movement', '양무운동(洋務運動) - ''중체서용(中體西用)'' 부국강병', '양무운동(洋務運動) - ''중체서용(中體西用)'' 부국강병', 'CHINA', '', 'INSTITUTION', 'A', 1861, 1895, 'exact', '이홍장, 증국번, 좌종당 등이 강남제조총국, 금릉기기국을 세우고 북양함대를 창설하여 서양의 근대 군사 기술 도입 추진.', '제도 개혁 없는 기술 모방의 한계(청일전쟁 패배로 좌절).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-cixi-empress-dowager', '서태후(Empress Dowager Cixi)의 47년 섭정과 이화원 중건', '서태후(Empress Dowager Cixi)의 47년 섭정과 이화원 중건', 'CHINA', '', 'POLITICS', 'B', 1861, 1908, 'exact', '동치제와 광서제를 배후 조종하며 북양해군 예산을 유용해 호화로운 이화원을 재건하는 등 수구파 정치 주도.', '청나라 말기 권력 독점과 개혁 지연의 주역.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-german-unification-bismarck', '비스마르크의 철혈 정책과 독일 제국 통일 (1871년)', '비스마르크의 철혈 정책과 독일 제국 통일 (1871년)', 'WEST', '', 'POLITICS', 'A', 1862, 1871, 'exact', '프로이센의 오토 폰 비스마르크가 오스트리아와 프랑스를 격파하고 베르사유 궁전 거울의 방에서 빌헬름 1세 황제 대관식 거행.', '유럽 중심부에 거대 강국 독일 탄생 및 세력 균형 재편.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-heungseon-daewongun-reforms', '흥선대원군의 개혁과 쇄국 양요 (병인양요·신미양요, 1863~1873년)', '흥선대원군의 개혁과 쇄국 양요 (병인양요·신미양요, 1863~1873년)', 'KOREA', '', 'POLITICS', 'A', 1863, 1873, 'exact', '경복궁 중건, 서원 600여 개 철폐, 사창제·호포제(양반 군포 징수)를 단행하고 프랑스군(병인양요, 1866)과 미군(신미양요, 1871)을 격퇴하며 척화비 건립.', '왕권 강화와 통상 수교 거부로 자주를 지키려 한 쇄국 정치.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-albert-einstein-birth-physics', '맥스웰의 전자기학 방정식 완성 (1865년)', '맥스웰의 전자기학 방정식 완성 (1865년)', 'WEST', '', 'SCIENCE', 'B', 1865, 1873, 'exact', '전기, 자기, 빛이 동일한 전자기파 현상임을 수학적 4대 방정식으로 통합.', '뉴턴 역학과 함께 고전 물리학의 2대 지주이자 무선 통신의 원천.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('meiji-restoration-japan', '메이지 유신과 일본의 근대화', 'Meiji Restoration & Modernization', 'WEST', '일본', 'POLITICS', 'B', 1868, 1889, 'exact', '막부를 타도하고 천황 중심의 중앙집권 국가를 수립하여 서구식 법제, 산업, 군사 제도를 급속히 이식함.', '아시아에서 유일하게 비서구 근대 제국주의 열강으로 부상하며 동아시아 세력 균형을 뒤흔듦.', '페리 제독의 흑선 내항과 존왕양이 운동.', '청일전쟁, 러일전쟁, 대한제국 강제 병합으로 이어지는 침략주의 팽창.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-impressionism-monet', '모네의 『인상, 일출』과 인상주의(Impressionism) 미술 탄생 (1872년)', '모네의 『인상, 일출』과 인상주의(Impressionism) 미술 탄생 (1872년)', 'WEST', '', 'ART_CULTURE', 'C', 1872, 1886, 'exact', '야외에서 시시각각 변화하는 빛의 순간적 인상을 원색의 붓터치로 포착한 미술 혁명.', '근대 현대 미술(모더니즘)의 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-ganghwa-treaty-1876', '강화도 조약(조일수호조규, 1876년) - 최초의 근대 불평등 조약', '강화도 조약(조일수호조규, 1876년) - 최초의 근대 불평등 조약', 'KOREA', '', 'POLITICS', 'A', 1876, 1876, 'exact', '일본 운요호 사건의 강압으로 부산·원산·인천 3개 항구를 개항하고 치외법권(영사재판권)과 해안측량권을 허용한 불평등 조약 체결.', '조선의 개항과 세계 자본주의 시장 편입의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-edison-electricity-revolution', '토머스 에디슨의 백열전구 발명과 2차 산업혁명 (전기·화학·석유)', '토머스 에디슨의 백열전구 발명과 2차 산업혁명 (전기·화학·석유)', 'WEST', '', 'SCIENCE', 'A', 1879, 1890, 'exact', '실용 백열전구, 발전소, 축음기, 영사기를 발명하고 벨의 전화기, 테슬라의 교류 전기와 함께 밤을 낮으로 바꿈.', '전기화와 대량 생산 공장 체제를 구축한 제2차 산업혁명의 완성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-gapsin-coup-1884', '김옥균·박영효의 갑신정변 (1884년)', '김옥균·박영효의 갑신정변 (1884년)', 'KOREA', '', 'POLITICS', 'A', 1884, 1884, 'exact', '우정총국 개국 축하연에서 급진개화파가 청나라 종속 탈피, 문벌 폐지, 인민평등, 조세 개혁을 담은 14개조 혁신 정강을 발표했으나 청군 개입으로 ''3일 천하''로 끝남.', '한국 최초의 근대 국민 국가 건설을 지향한 부르주아 정치 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce19-scramble-for-africa-berlin', '베를린 회의와 아프리카 대륙 분할 (1884~1885년)', '베를린 회의와 아프리카 대륙 분할 (1884~1885년)', 'WEST', '', 'POLITICS', 'B', 1884, 1885, 'exact', '유럽 14개국이 모여 현지 민족을 무시하고 자로 잰 듯이 아프리카 전 대륙을 식민지로 분할 점령.', '제국주의 침탈의 극치와 20세기 아프리카 분쟁의 원인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('donghak-peasant-revolution', '동학 농민 혁명과 갑오개혁', 'Donghak Peasant Revolution & Gabo Reform', 'KOREA', '조선', 'POLITICS', 'A', 1894, 1894, 'exact', '전봉준을 중심으로 봉건 탐관오리의 학정과 외세 침략에 맞서 일어난 대규모 농민 혁명이자 신분제 폐지(갑오개혁)의 계기.', '신분제 철폐, 과부 재가 허용 등 근대적 평등 사회로 나아가는 도화선이자 청일전쟁의 직접적 발단.', '고부군수 조병갑의 탐학, 외세 침탈에 대한 반발, ''사람이 곧 하늘''이라는 인내천 사상.', '우금치 전투의 패배, 청일전쟁 발발, 을미사변과 대한제국 선포.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-donghak-peasant-revolution', '동학농민혁명 (전봉준·우금치 전투, 1894년)', '동학농민혁명 (전봉준·우금치 전투, 1894년)', 'KOREA', '', 'POLITICS', 'A', 1894, 1894, 'exact', '고부군수 조병갑의 탐학에 맞서 녹두장군 전봉준이 ''보국안민'', ''제폭구민''을 외치며 전주성을 점령하고 집강소를 설치하여 폐정개혁 12조 단행.', '반봉건·반외세 민족자주 혁명의 최고봉이자 갑오개혁과 3·1운동의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-gabo-reform-1894', '갑오개혁 (1894년) - 신분제(노비제) 완전 철폐', '갑오개혁 (1894년) - 신분제(노비제) 완전 철폐', 'KOREA', '', 'INSTITUTION', 'A', 1894, 1894, 'exact', '군국기무처를 설치하여 천년 신분제와 공사 노비제 폐지, 과부 재가 허용, 과거제 폐지, 은본위제 채택 등 근대적 국가 제도로 전면 개편.', '한국 역사상 봉건 신분 질서의 공식적 완전 해체.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-first-sino-japanese-war', '청일전쟁(1894~1895년)과 시모노세키 조약', '청일전쟁(1894~1895년)과 시모노세키 조약', 'CHINA', '', 'POLITICS', 'A', 1894, 1895, 'exact', '조선 지배권을 두고 일본과 격돌하여 북양함대가 전멸하고 대만과 요동반도를 할양하며 조선에 대한 종주권 완전 상실.', '동아시아 전통 중화 질서의 붕괴 및 열강의 중국 영토 분할 본격화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-sun-yat-sen-revive-china', '쑨원의 흥중회(興中會) 창설과 반청 혁명 운동 (1894년)', '쑨원의 흥중회(興中會) 창설과 반청 혁명 운동 (1894년)', 'CHINA', '', 'POLITICS', 'B', 1894, 1900, 'exact', '하와이 호놀룰루에서 화교들을 모아 ''만주 오랑캐를 몰아내고 중화를 회복하며 공화정을 세운다''는 강령 발표.', '신해혁명(1911년)으로 이어지는 중국 근대 공화 혁명의 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-eulmi-incident-queen-min', '을미사변(명성황후 시해, 1895년)과 단발령·을미의병', '을미사변(명성황후 시해, 1895년)과 단발령·을미의병', 'KOREA', '', 'POLITICS', 'A', 1895, 1895, 'exact', '일본 낭인과 군대가 경복궁 옥호루를 습격해 명성황후를 시해하고 단발령을 강제하자 유생과 백성들이 전국적으로 을미의병 궐기.', '항일 무장 독립운동의 첫 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-independence-club-seo-jaepil', '독립협회 창립(1896년)과 만민공동회·독립문 건립', '독립협회 창립(1896년)과 만민공동회·독립문 건립', 'KOREA', '', 'POLITICS', 'A', 1896, 1898, 'exact', '서재필, 윤치호, 이상재 등이 영은문을 헐고 독립문을 세웠으며 종로에서 시민들이 참여하는 최초의 근대 대중 집회 만민공동회와 의회 설립 운동 전개.', '자주국권·자유민권·자강개혁을 외친 근대 시민운동의 효시.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce19-korean-empire-declaration', '고종 황제의 대한제국 선포와 광무개혁 (1897년)', '고종 황제의 대한제국 선포와 광무개혁 (1897년)', 'KOREA', '', 'POLITICS', 'A', 1897, 1897, 'exact', '환구단에서 황제 즉위식을 올리고 독자 연호 ''광무(光武)''를 반포하여 자주 독립 제국임을 천명하고 전차, 전신, 양전사업(지계) 등 근대화 추진.', '자주 근대 국가를 향한 최후의 주권 선언이자 근대적 개혁.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korean-empire-proclamation', '대한제국 선포와 광무개혁', 'Proclamation of the Korean Empire & Gwangmu Reform', 'KOREA', '대한제국', 'POLITICS', 'B', 1897, 1910, 'exact', '고종 황제가 환구단에서 황제 즉위식을 거행하고 자주독립 제국임을 선포하며 전차, 철도, 근대식 통신을 도입하는 광무개혁을 추진함.', '자주적 근대 국가 수립을 지향했으나 열강의 각축 속에서 1910년 국권 피탈로 이어짐.', '아관파천 이후 자주독립 여론(독립협회 등) 고조.', '을사늑약(1905)과 경술국치(1910)로 일제강점기 시작.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-hundred-days-reform-1898', '무술변법(Hundred Days'' Reform, 1898년)', '무술변법(Hundred Days'' Reform, 1898년)', 'CHINA', '', 'INSTITUTION', 'A', 1898, 1898, 'exact', '강유위, 양계초가 광서제의 지지를 받아 일본 메이지 유신을 모방한 입헌군주제, 과거제 개혁, 경사대학당 설립을 추진하다 서태후의 쿠데타로 103일 만에 좌절.', '위로부터의 근대 입헌 개혁의 좌절과 혁명파(쑨원) 대두.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-yan-fu-tianyanlun', '엄복의 『천연론(天演論)』 번역과 사회진화론 확산 (1898년)', '엄복의 『천연론(天演論)』 번역과 사회진화론 확산 (1898년)', 'CHINA', '', 'SCIENCE', 'B', 1898, 1898, 'exact', '헉슬리의 진화론을 번역하여 ''약육강식, 적자생존''의 원리를 소개하고 중국 민족의 생존 위기의식 고취.', '중국 근대 지식인들에게 변법과 혁명의 가장 강력한 사상적 충격 부여.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce19-boxer-rebellion-1900', '의화단 운동(1899~1900년)과 8개국 연합군의 베이징 점령', '의화단 운동(1899~1900년)과 8개국 연합군의 베이징 점령', 'CHINA', '', 'POLITICS', 'A', 1899, 1901, 'exact', '''부청멸양''을 외치며 서양 교회와 철도를 파괴하자 서태후가 열강에 선전포고했으나 8개국 연합군에 자금성이 유린당하고 신축조약(4억 5천만 냥 배상) 체결.', '청 제국의 완전한 뇌사 상태 및 멸망 불가피.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-eulsa-treaty-annexation-tragedy', '을사늑약(1905년)과 경술국치(한일강제병합, 1910년)', '을사늑약(1905년)과 경술국치(한일강제병합, 1910년)', 'KOREA', '', 'POLITICS', 'A', 1905, 1910, 'exact', '러일전쟁 승리 후 일본이 군대를 동원해 외교권을 강탈(을사늑약, 안중근의 이토 히로부미 처단)하고 1910년 대한제국을 강제 병합하여 국권 피탈.', '35년간의 일제 식민 통치라는 민족사 최대의 국난 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-einstein-relativity-quantum', '알베르트 아인슈타인의 상대성이론과 양자역학 혁명', '알베르트 아인슈타인의 상대성이론과 양자역학 혁명', 'WEST', '', 'SCIENCE', 'A', 1905, 1927, 'exact', '특수·일반상대성이론(E=mc²)과 보어, 하이젠베르크, 슈뢰딩거의 양자역학으로 시간, 공간, 물질의 본질을 완전히 재정의.', '원자력, 반도체, 레이저, 컴퓨터를 가능하게 한 현대 물리학의 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-xinhai-revolution-1911', '신해혁명(1911년)과 중화민국 건국 (쑨원의 삼민주의)', '신해혁명(1911년)과 중화민국 건국 (쑨원의 삼민주의)', 'CHINA', '', 'POLITICS', 'A', 1911, 1912, 'exact', '무창 봉기로 청나라가 멸망(마지막 황제 푸이 퇴위)하고 쑨원이 아시아 최초의 민주 공화국인 중화민국 임시 대총통으로 취임.', '2,132년간 지속된 중국 전제 황제정의 영구 종말.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('world-war-one-russian-revolution', '제1차 세계대전과 러시아 볼셰비키 혁명', 'World War I & Russian Bolshevik Revolution', 'WEST', '유럽/러시아', 'POLITICS', 'A', 1914, 1918, 'exact', '제국주의 열강 간의 전면전으로 4대 제국(독일, 오스트리아, 러시아, 오스만)이 붕괴하고, 레닌에 의해 인류 최초의 사회주의 국가가 수립됨.', '국제연맹 창설과 민족자결주의 확산으로 아시아 피압박 민족의 독립운동(3·1운동, 5·4운동)을 촉발.', '사라예보 사건(동맹국 vs 협상국의 군비 경쟁 및 식민지 쟁탈전).', '베르사유 체제 수립, 소련(USSR) 탄생, 제2차 세계대전의 씨앗 잉태.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-world-war-one-versailles', '제1차 세계대전(1914~1918)과 베르사유 조약·국제연맹 창설', '제1차 세계대전(1914~1918)과 베르사유 조약·국제연맹 창설', 'WEST', '', 'POLITICS', 'A', 1914, 1919, 'exact', '사라예보 사건으로 촉발되어 참호전, 기관총, 독가스, 탱크가 등장한 총력전으로 4대 제국(독일·오스트리아·러시아·오스만)이 붕괴됨.', '20세기 세계 질서의 근본적 재편과 윌슨의 민족자결주의 선언.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-russian-revolution-lenin', '러시아 볼셰비키 혁명(1917년)과 소련(소비에트 연방) 수립', '러시아 볼셰비키 혁명(1917년)과 소련(소비에트 연방) 수립', 'WEST', '', 'POLITICS', 'A', 1917, 1922, 'exact', '블라디미르 레닌과 트로츠키가 ''빵·평화·토지''를 외치며 10월 혁명으로 차르 체제를 타도하고 인류 최초의 사회주의 국가 소련 건국.', '70년간 지속될 전 세계 냉전 이데올로기 대립의 탄생.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-lu-xun-true-story-ah-q', '노신의 소설 『아Q정전(阿Q正傳)』과 『광인일기』', '노신의 소설 『아Q정전(阿Q正傳)』과 『광인일기』', 'CHINA', '', 'ART_CULTURE', 'C', 1918, 1921, 'exact', '봉건적 유교 도덕을 ''사람을 잡아먹는 예교''로 고발하고 아Q의 ''정신승리법''을 통해 중국인들의 노예근성을 날카롭게 해부.', '중국 현대 문학의 아버지.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-may-fourth-movement-1919', '5·4 운동(1919년)과 신문화운동 (민주와 과학)', '5·4 운동(1919년)과 신문화운동 (민주와 과학)', 'CHINA', '', 'ART_CULTURE', 'A', 1919, 1919, 'exact', '파리강화회의 산둥반도 일본 양도에 분노한 북경 대학생들이 천안문에서 총궐기하고 진독수·노신 등이 유교 봉건 타파 외침.', '중국 현대 반제국주의·반봉건 민중 계몽 운동의 출발점이자 중국 공산당 창당(1921)의 모태.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-march-first-movement-1919', '3·1 만세운동 (1919년)과 대한민국 임시정부 수립 (4월 11일)', '3·1 만세운동 (1919년)과 대한민국 임시정부 수립 (4월 11일)', 'KOREA', '', 'POLITICS', 'A', 1919, 1919, 'exact', '태화관 기미독립선언서 낭독과 탑골공원 만세 시위로 시작되어 200만 명이 참가한 전 민족 비폭력 평화 만세 시위, 그리고 상하이에 대한민국 임시정부(대한민국 국호·민주공화제 채택) 수립.', '대한민국 헌법 전문에 명시된 법통이자 아시아 민족 해방 운동(중국 5·4 운동, 인도 비폭력 운동)의 도화선.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('march-first-movement', '3·1 운동과 대한민국 임시정부 수립', 'March 1st Movement & Provisional Government of Korea', 'KOREA', '한국/상하이', 'POLITICS', 'A', 1919, 1919, 'exact', '일제의 무단통치에 맞서 전 민족이 비폭력 만세 운동을 전개하고, 민주공화정 체제의 대한민국 임시정부를 수립함.', '군주정에서 민주공화국으로의 패러다임 전환이자 오늘날 대한민국 헌법의 법통적 뿌리.', '민족자결주의와 고종 황제 인산일 계기 독립 선언.', '일제의 문화통치 전환, 중국 5·4 운동에 영향, 상하이 임시정부 출범.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-great-depression-new-deal', '세계 대공황(1929년)과 루스벨트 대통령의 뉴딜 정책', '세계 대공황(1929년)과 루스벨트 대통령의 뉴딜 정책', 'WEST', '', 'ECONOMY', 'A', 1929, 1939, 'exact', '뉴욕 월스트리트 주가 대폭락으로 촉발된 글로벌 경제 공황에 맞서 케인스주의 수정자본주의와 TVA 공공사업, 사회보장법 도입.', '자유방임주의 종말과 복지 국가 정부 개입 모델의 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-world-war-two-un', '제2차 세계대전(1939~1945)과 홀로코스트·유엔(UN) 창설', '제2차 세계대전(1939~1945)과 홀로코스트·유엔(UN) 창설', 'WEST', '', 'POLITICS', 'A', 1939, 1945, 'exact', '히틀러 나치즘과 일본 군국주의의 파시즘에 맞서 연합국이 노르망디 상륙작전과 원자폭탄 투하로 승리하고 1945년 국제연합(UN) 창설.', '인류 역사상 최대의 전쟁(8천만 명 사망)과 전후 미·소 양극 냉전 체제 출범.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('world-war-two-holocaust', '제2차 세계대전과 원자폭탄 투하', 'World War II & The Atomic Bomb', 'WEST', '전 세계', 'POLITICS', 'A', 1939, 1945, 'exact', '파시즘 추축국(독일·이탈리아·일본)과 연합국의 총력전으로 인류 역사상 최악의 인명 피해를 냈으며 핵무기 사용과 함께 종전됨.', '유엔(UN) 창설, 한국 광복, 미·소 냉전 체제 개막, 핵시대 돌입.', '나치 독일의 폴란드 침공과 일본의 진주만 기습.', '식민지 해방, 전범 재판, 브레턴우즈 체제 출범.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-korean-liberation-division-1945', '8·15 광복과 남북 분단 (1945년)', '8·15 광복과 남북 분단 (1945년)', 'KOREA', '', 'POLITICS', 'A', 1945, 1945, 'exact', '일제의 무조건 항복으로 35년 식민 지배에서 해방되었으나 38도선을 경계로 미·소 양군이 진주하여 국토 분단.', '민족 해방의 기쁨과 비극적 분단 냉전 체제의 시작.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korean-liberation-division', '8·15 광복과 한국전쟁(6·25 전쟁)', 'Korean Liberation (1945) & The Korean War (1950-1953)', 'KOREA', '한반도', 'POLITICS', 'A', 1945, 1953, 'exact', '일제 강점에서 해방되었으나 미·소 신탁통치와 38선 분단에 이어 북한의 남침으로 3년간의 동족상잔 전쟁과 휴전협정이 체결됨.', '냉전의 최전선으로서 한반도 분단이 고착화되고 대한민국 정부 수립 및 전후 재건 시작.', '얄타 회담 이후 미·소 분할 점령과 냉전 대립 격화.', '휴전선 분단, 이산가족 발생, 한미상호방위조약 체결.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-peoples-republic-founding-1949', '중화인민공화국 건국 선포 (마오쩌둥, 1949년 10월 1일)', '중화인민공화국 건국 선포 (마오쩌둥, 1949년 10월 1일)', 'CHINA', '', 'POLITICS', 'A', 1949, 1949, 'exact', '국공내전에서 장제스의 국민당을 대만으로 축출하고 마오쩌둥이 천안문 망루에서 ''중국 인민이 일어섰다''고 선포.', '사회주의 신중국 탄생과 양안 분단 체제 형성.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('prc-founding-mao', '중화인민공화국 건국 및 문화대혁명', 'Founding of the PRC & Cultural Revolution', 'CHINA', '중국', 'POLITICS', 'A', 1949, 1976, 'range', '국공내전에서 승리한 마오쩌둥이 베이징 천안문에서 중화인민공화국을 선포하고 대약진 운동과 문화대혁명을 거침.', '사회주의 대국으로의 전환과 이후 덩샤오핑의 개혁개방으로 이어지는 현대 중국의 기초.', '농민 중심 공산당 게릴라전 승리와 국민당의 부패.', '대약진 운동 실패와 문화대혁명 혼란, 1978년 개혁개방 노선 채택.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-korean-war-1950', '6·25 전쟁(한국전쟁, 1950~1953년)과 휴전협정', '6·25 전쟁(한국전쟁, 1950~1953년)과 휴전협정', 'KOREA', '', 'POLITICS', 'A', 1950, 1953, 'exact', '북한의 불법 기습 남침으로 발발하여 유엔군(인천상륙작전)과 중공군 참전 끝에 1953년 7월 27일 휴전협정 체결.', '수백만 명의 사상자와 한반도 분단 고착화, 한미상호방위조약 체결.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('global-climate-change-anthropocene', '지구 온난화와 인류세 (Anthropocene)', 'Global Climate Change & The Anthropocene', 'CLIMATE', '지구 전역', 'CLIMATE_ENVIRONMENT', 'A', 1950, 2026, 'range', '온실가스 배출로 인한 지구 평균 기온 상승, 극단적 기상이변, 북극 빙하 감소 등 인류 활동이 지구 시스템을 변화시키는 현대 환경 위기.', '탄소 중립, 재생에너지 전환, 국제 파리 기후협약 등 21세기 인류 문명의 지속가능성을 좌우하는 핵심 과제.', '화석연료 대량 연소와 무분별한 삼림 벌채 및 산업화.', '기후 난민 발생, 해수면 상승, 에너지 대전환 가속.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-dna-double-helix-discovery', '왓슨과 크릭의 DNA 이중나선 구조 규명 (1953년)', '왓슨과 크릭의 DNA 이중나선 구조 규명 (1953년)', 'WEST', '', 'SCIENCE', 'B', 1953, 1953, 'exact', '로잘린드 프랭클린의 X선 회절 사진을 바탕으로 유전 정보가 저장·복제되는 분자 생물학적 구조 규명.', '생명공학, 유전자 치료, 인간 게놈 프로젝트의 출발점.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-great-leap-forward-famine', '대약진 운동(1958~1962)과 3년 대기근', '대약진 운동(1958~1962)과 3년 대기근', 'CHINA', '', 'ECONOMY', 'B', 1958, 1962, 'exact', '인민공사와 토법고로(철강 증산), 제사해 운동(참새 잡기) 등 비과학적 정책으로 수천만 명이 아사한 비극.', '극좌 모험주의의 참담한 실패.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-april-nineteenth-revolution-1960', '4·19 혁명 (1960년) - 아시아 최초의 민주주의 시민 혁명', '4·19 혁명 (1960년) - 아시아 최초의 민주주의 시민 혁명', 'KOREA', '', 'POLITICS', 'A', 1960, 1960, 'exact', '이승만 정권의 3·15 부정선거와 김주열 열사 최루탄 사망에 분노한 중고생·대학생과 시민들이 총궐기하여 독재 정권을 퇴진시킴.', '대한민국 민주주의의 불굴의 뿌리이자 헌법 전문에 수록된 민주 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korean-democratization-economic-growth', '대한민국의 경제성장(한강의 기적)과 6월 민주항쟁', 'Miracle on the Han River & June Democratic Struggle', 'KOREA', '대한민국', 'POLITICS', 'A', 1960, 1987, 'range', '전쟁의 폐허에서 고도 산업화(한강의 기적)를 달성함과 동시에 1987년 6월 항쟁으로 대통령 직선제와 완전한 민주화를 쟁취함.', '2차 대전 이후 독립한 국가 중 경제 발전과 민주주의를 동시에 달성한 세계적인 성공 모델.', '수출 중심 산업화 정책, 국민의 높은 교육열, 시민사회의 민주화 열망.', '1988 서울올림픽 개최, OECD 가입, 글로벌 문화강국(K-Culture) 도약.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-miracle-on-the-han-river', '한강의 기적 (초고속 산업화와 포항제철·경부고속도로, 1960~1980년대)', '한강의 기적 (초고속 산업화와 포항제철·경부고속도로, 1960~1980년대)', 'KOREA', '', 'ECONOMY', 'A', 1962, 1988, 'exact', '세계 최빈국에서 경제개발 5개년 계획, 포항제철, 경부고속도로 완공, 반도체·자동차·조선·IT 중화학공업 육성으로 1인당 GDP 수백 배 도약.', '2차 대전 이후 최빈국에서 선진 공업국으로 진입한 인류 역사상 유일무이한 경제 성공 신화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-cultural-revolution-disaster', '문화대혁명(1966~1976년)의 광기와 참극', '문화대혁명(1966~1976년)의 광기와 참극', 'CHINA', '', 'POLITICS', 'A', 1966, 1976, 'exact', '마오쩌둥의 주도로 홍위병들이 구사상·구문화를 파괴하고 지식인, 류사오치, 덩샤오핑을 숙청하며 수백만 명이 희생된 10년 동란.', '중국 전통 문화와 경제의 궤멸적 타격.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-apollo-11-moon-landing', '아폴로 11호의 인류 최초 달 착륙 (닐 암스트롱, 1969년)', '아폴로 11호의 인류 최초 달 착륙 (닐 암스트롱, 1969년)', 'WEST', '', 'SCIENCE', 'A', 1969, 1969, 'exact', '''이것은 한 인간에게는 작은 한 걸음이지만, 인류에게는 위대한 도약이다''를 남기며 새턴 V 로켓으로 달 표면 고요의 바다에 착륙.', '인류가 지구를 벗어나 우주 시대를 개막한 역사상 최고의 성취.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('digital-revolution-internet', '디지털 혁명과 인터넷·정보화 시대', 'Digital Revolution & The Internet Era', 'WEST', '글로벌', 'SCIENCE', 'A', 1969, 2000, 'range', 'ARPANET에서 시작된 인터넷과 개인용 컴퓨터(PC), 월드와이드웹(WWW)의 보급으로 전 세계 지식과 경제가 실시간으로 연결됨.', '지식 정보 기반 사회와 4차 산업혁명, 글로벌 초연결 사회의 인프라 구축.', '트랜지스터 및 반도체 집적회로의 비약적 발전(무어의 법칙).', '스마트폰, 인공지능(AI), 빅데이터로 이어지는 21세기 디지털 문명.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-sino-american-rapprochement', '닉슨 대통령의 방중과 미·중 수교 (핑퐁 외교, 1972/1979년)', '닉슨 대통령의 방중과 미·중 수교 (핑퐁 외교, 1972/1979년)', 'CHINA', '', 'POLITICS', 'B', 1971, 1979, 'exact', '핑퐁 외교를 거쳐 리처드 닉슨이 베이징을 방문해 상하이 코뮈니케를 발표하고 1979년 공식 외교 수교 체결.', '중·소 분열 속에서 소련을 견제하고 중국이 국제 사회 무대로 복귀한 전략적 대전환.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-reform-and-opening-deng', '덩샤오핑의 개혁개방(改革開放) 선포 (11기 3중전회, 1978년)', '덩샤오핑의 개혁개방(改革開放) 선포 (11기 3중전회, 1978년)', 'CHINA', '', 'ECONOMY', 'A', 1978, 1992, 'exact', '''흑묘백묘론''과 실사구시를 바탕으로 심천 등 경제특구를 설치하고 사회주의 시장경제 도입 및 1992년 남순강화 단행.', '중국을 세계의 공장이자 G2 초강대국으로 탈바꿈시킨 역사적 경제 대도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-may-eighteenth-gwangju-uprising', '5·18 광주 민주화 운동 (유네스코 세계기록유산, 1980년)', '5·18 광주 민주화 운동 (유네스코 세계기록유산, 1980년)', 'KOREA', '', 'POLITICS', 'A', 1980, 1980, 'exact', '전두환 신군부의 5·17 비상계엄 확대와 계엄군의 무자비한 유혈 진압에 맞서 광주 시민들이 시민군을 결성하고 계엄군을 몰아내며 열흘간 자치 공동체 수호.', '대한민국 민주화 운동의 숭고한 성지이자 세계 민주주의의 교과서.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-june-democratic-uprising-1987', '6월 민주항쟁(1987년)과 대통령 직선제 개헌 (현행 87년 체제)', '6월 민주항쟁(1987년)과 대통령 직선제 개헌 (현행 87년 체제)', 'KOREA', '', 'POLITICS', 'A', 1987, 1987, 'exact', '박종철 열사 고문치사 사건과 이한열 열사 최루탄 피격 후 전 국민이 ''호헌철폐 독재타도''를 외치며 6·29 선언(대통령 5년 단임 직선제) 쟁취.', '대한민국 평화적 민주화 완성 및 현행 제6공화국 체제 출범.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-seoul-olympics-1988', '1988 서울 올림픽 개최 (''손에 손잡고'')', '1988 서울 올림픽 개최 (''손에 손잡고'')', 'KOREA', '', 'ART_CULTURE', 'A', 1988, 1988, 'exact', '동서 냉전 12년 만에 동구권과 서구권 160개국이 모두 참가한 화합의 대제전으로 한국의 발전상을 세계에 각인시키고 북방외교(소련·동유럽 수교) 촉진.', '대한민국이 세계 무대의 중심 국가로 당당히 우뚝 선 순간.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-tiananmen-square-massacre-1989', '천안문 6·4 민주화 운동과 유혈 진압 (1989년)', '천안문 6·4 민주화 운동과 유혈 진압 (1989년)', 'CHINA', '', 'POLITICS', 'A', 1989, 1989, 'exact', '호요방 사망 후 대학생과 시민들이 천안문 광장에서 자유와 민주화를 요구했으나 당국이 탱크와 군대로 유혈 진압.', '정치적 민주화 요구의 전면 억압과 경제 개혁 중심의 독자 노선 고착화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-fall-of-berlin-wall-soviet-collapse', '베를린 장벽 붕괴(1989년)와 소련 해체(1991년) - 냉전 종식', '베를린 장벽 붕괴(1989년)와 소련 해체(1991년) - 냉전 종식', 'WEST', '', 'POLITICS', 'A', 1989, 1991, 'exact', '고르바초프의 페레스트로이카와 동유럽 민주화 혁명으로 베를린 장벽이 무너지고 소련이 공식 해체되며 자유주의 민주주의 승리 선언.', '45년 동서 냉전의 종식과 단극 미국 주도 글로벌화 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-invention-of-internet-www', '팀 버너스리의 월드 와이드 웹(WWW) 발명과 인터넷 혁명 (1989/1990년)', '팀 버너스리의 월드 와이드 웹(WWW) 발명과 인터넷 혁명 (1989/1990년)', 'WEST', '', 'SCIENCE', 'A', 1989, 1995, 'exact', 'CERN에서 HTML, HTTP, URL 기반의 월드 와이드 웹을 개발하여 무료 공개함으로써 전 인류를 초연결 정보망으로 통합.', '3차 산업혁명인 정보통신(IT) 디지털 시대의 폭발적 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce20-european-union-maastricht', '마스트리히트 조약과 유럽 연합(EU) 공식 출범 (1993년)', '마스트리히트 조약과 유럽 연합(EU) 공식 출범 (1993년)', 'WEST', '', 'INSTITUTION', 'B', 1993, 1999, 'exact', '단일 통화 유로(Euro) 도입과 국경 철폐(솅겐 조약)를 합의하며 단일 경제·정치 공동체 유럽연합 출범.', '수백 년간 전쟁을 벌이던 유럽 국가들의 평화적 초국가 통합 모델.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce20-hong-kong-handover-1997', '홍콩의 중국 반환과 ''일국양제(一國兩制)'' 출범 (1997년 7월 1일)', '홍콩의 중국 반환과 ''일국양제(一國兩制)'' 출범 (1997년 7월 1일)', 'CHINA', '', 'POLITICS', 'A', 1997, 1997, 'exact', '156년간의 영국 통치를 끝내고 홍콩 주권이 중국으로 반환되었으며 ''한 국가 두 체제(50년 불변)'' 약속.', '식민지 시대의 완전한 종식과 대중화권 통합 가속.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce20-inter-korean-summit-2000', '최초의 남북 정상회담과 6·15 남북공동선언 (2000년)', '최초의 남북 정상회담과 6·15 남북공동선언 (2000년)', 'KOREA', '', 'POLITICS', 'A', 2000, 2000, 'exact', '김대중 대통령과 김정일 국방위원장이 평양에서 만나 분단 55년 만에 최초의 정상회담을 갖고 자주적 평화 통일과 이산가족 상봉, 개성공단 등에 합의.', '한반도 평화 공존과 화해 협력의 새 시대 개막(김대중 대통령 노벨평화상 수상).', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-nine-eleven-attacks-terror', '9·11 테러와 대테러 전쟁의 시작 (2001년)', '9·11 테러와 대테러 전쟁의 시작 (2001년)', 'WEST', '', 'POLITICS', 'A', 2001, 2001, 'exact', '알카에다의 항공기 납치 테러로 뉴욕 세계무역센터 쌍둥이 빌딩과 펜타곤이 피격되어 3,000여 명 사망.', '21세기 국제 안보 패러다임 전환과 아프가니스탄·이라크 전쟁 촉발.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-wto-entry-g2-rise', '중국의 WTO 공식 가입(2001년)과 세계 2위 경제대국(G2) 등극', '중국의 WTO 공식 가입(2001년)과 세계 2위 경제대국(G2) 등극', 'CHINA', '', 'ECONOMY', 'A', 2001, 2010, 'exact', '세계무역기구에 가입하며 글로벌 공급망의 중심축으로 성장하여 2010년 일본을 제치고 세계 2위 경제 대국으로 부상.', '21세기 미·중 패권 경쟁(G2 구도)의 경제적 기반.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-semiconductor-it-superpower', '대한민국 글로벌 반도체·IT 초격차 제조 강국 도약', '대한민국 글로벌 반도체·IT 초격차 제조 강국 도약', 'KOREA', '', 'ECONOMY', 'A', 2001, 2026, 'exact', '메모리 반도체(D램·낸드플래시) 세계 시장 점유율 1위, 5G 세계 최초 상용화, 전기차 배터리(2차전지), 첨단 바이오 파운드리 석권.', '글로벌 첨단 공급망의 대체 불가능한 핵심 국가로 확고한 위상 확립.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-world-cup-semifinals-2002', '2002 한일 월드컵 4강 신화와 붉은악마 길거리 응원', '2002 한일 월드컵 4강 신화와 붉은악마 길거리 응원', 'KOREA', '', 'ART_CULTURE', 'A', 2002, 2002, 'exact', '거스 히딩크 감독의 지휘 아래 포르투갈, 이탈리아, 스페인을 격파하고 아시아 최초로 월드컵 4강에 진출하며 수천만 명의 길거리 응원 문화 창조.', '국민적 자긍심과 역동적 에너지를 전 세계에 분출한 국가적 축제.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-three-gorges-dam-completion', '삼협댐(싼샤댐) 완공 (세계 최대 수력발전소, 2006/2012년)', '삼협댐(싼샤댐) 완공 (세계 최대 수력발전소, 2006/2012년)', 'CHINA', '', 'SCIENCE', 'B', 2006, 2012, 'exact', '양쯔강에 길이 2.3km, 높이 185m의 거대 댐을 완공하여 2,250만 kW의 전력을 생산하고 홍수 통제.', '단일 시설 세계 최대 발전량을 기록한 토목 공학의 집약체.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-iphone-smartphone-revolution', '스티브 잡스의 아이폰(iPhone) 출시와 모바일 혁명 (2007년)', '스티브 잡스의 아이폰(iPhone) 출시와 모바일 혁명 (2007년)', 'WEST', '', 'SCIENCE', 'A', 2007, 2007, 'exact', '정전식 멀티터치 스크린, 앱스토어 생태계를 결합한 스마트폰을 출시하여 인류의 라이프스타일과 소통 방식을 완전히 재편.', '모바일 컴퓨팅, 앱 경제, 소셜 미디어(SNS) 시대의 폭발적 개막.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-beijing-olympics-2008', '2008 베이징 올림픽 개최와 중화민족 부흥 과시', '2008 베이징 올림픽 개최와 중화민족 부흥 과시', 'CHINA', '', 'ART_CULTURE', 'A', 2008, 2008, 'exact', '''하나의 세계, 하나의 꿈''을 슬로건으로 조류 둥지 경기장(냐오차오)에서 웅장한 개막식을 열고 종합 1위 달성.', '중국의 글로벌 강대국 복귀를 전 세계에 선언한 상징적 이벤트.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-first-black-president-obama', '버락 오바마 미국 최초 흑인 대통령 당선 (2008년)', '버락 오바마 미국 최초 흑인 대통령 당선 (2008년)', 'WEST', '', 'POLITICS', 'B', 2008, 2008, 'exact', '''Yes We Can''을 슬로건으로 흑인 민권 운동 45년 만에 미국 최초의 아프리카계 미국인 대통령 당선.', '미국 민주주의와 인종 평등사의 상징적 이정표.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-global-financial-crisis-2008', '2008 글로벌 금융위기 (리먼 브라더스 파산)', '2008 글로벌 금융위기 (리먼 브라더스 파산)', 'WEST', '', 'ECONOMY', 'A', 2008, 2008, 'exact', '미국 서브프라임 모기지 사태로 투자은행 리먼 브라더스가 파산하며 전 세계 금융 시스템 붕괴 위기 및 양적완화(QE) 도입.', '신자유주의 금융 규제 완화의 한계 노출과 비트코인(블록체인) 탄생의 계기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-high-speed-rail-network', '중국 고속철도망(CRH) 4만 km 돌파 (세계 최장)', '중국 고속철도망(CRH) 4만 km 돌파 (세계 최장)', 'CHINA', '', 'SCIENCE', 'A', 2008, 2026, 'exact', '베이징-상하이, 베이징-광저우를 잇는 시속 350km 푸싱호 고속철도망을 전국에 깔아 세계 고속철 총연장의 70% 차지.', '세계 최대 규모의 첨단 교통 인프라 혁신.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-unesco-world-heritage-inscriptions', '조선왕릉·한국의 서원·갯벌 유네스코 세계유산 등재', '조선왕릉·한국의 서원·갯벌 유네스코 세계유산 등재', 'KOREA', '', 'ART_CULTURE', 'C', 2009, 2021, 'exact', '조선 왕릉 40기(2009), 한국의 9개 서원(2019), 한국의 갯벌(2021) 등 찬란한 문화·자연유산이 세계유산으로 등재.', '한국의 독보적인 문화유산 보존과 세계적 가치 공인.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-crispr-cas9-gene-editing', 'CRISPR-Cas9 3세대 유전자 가위 기술 개발 (2012년)', 'CRISPR-Cas9 3세대 유전자 가위 기술 개발 (2012년)', 'WEST', '', 'SCIENCE', 'B', 2012, 2020, 'exact', '다우드나와 샤르팡티에가 특정 유전자 염기서열을 정밀하게 자르고 교정하는 유전자 가위 개발(2020 노벨화학상).', '난치성 유전 질환 치료와 맞춤 생명공학 혁명.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-xi-jinping-third-term', '시진핑 국가주석 3연임과 ''중국몽(中國夢)'' 체제 확립', '시진핑 국가주석 3연임과 ''중국몽(中國夢)'' 체제 확립', 'CHINA', '', 'POLITICS', 'A', 2012, 2026, 'exact', '헌법상 주석 임기 제한을 철폐하고 ''중화민족의 위대한 부흥''과 공동부유를 내세우며 1인 장기 집권 체제 완성.', '마오쩌둥·덩샤오핑 이래 가장 강력한 권력 집중.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-k-culture-global-syndrome', 'K-컬처(K-Culture)의 전 세계적 열풍 (BTS·오징어게임·기생충)', 'K-컬처(K-Culture)의 전 세계적 열풍 (BTS·오징어게임·기생충)', 'KOREA', '', 'ART_CULTURE', 'A', 2012, 2026, 'exact', '싸이 강남스타일(2012), 봉준호 감독 『기생충』 칸 황금종려상·아카데미 4관왕(2020), BTS 빌보드 핫100 1위, 넷플릭스 『오징어 게임』 전 세계 1위, 한강 작가 노벨문학상 수상(2024).', '한국 문화 예술이 전 지구적 소프트 파워의 중심이자 글로벌 주류 문화로 우뚝 선 기적.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-belt-and-road-initiative', '시진핑 주석의 ''일대일로(一帶一路)'' 구상 제안 (2013년)', '시진핑 주석의 ''일대일로(一帶一路)'' 구상 제안 (2013년)', 'CHINA', '', 'POLITICS', 'A', 2013, 2026, 'exact', '육상 실크로드 경제벨트와 21세기 해상 실크로드를 통해 아시아, 유럽, 아프리카를 잇는 거대 인프라·경제 영향력망 구축.', '중국 주도 글로벌 대외 전략과 지정학적 영향력 확장.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-sewol-ferry-tragedy-safety', '세월호 참사(2014년)와 국가 안전망 대전환', '세월호 참사(2014년)와 국가 안전망 대전환', 'KOREA', '', 'POLITICS', 'B', 2014, 2014, 'exact', '진도 앞바다에서 여객선 세월호 침몰로 안산 단원고 학생 등 304명이 희생된 비극적 참사.', '생명 존중과 사회적 안전 시스템에 대한 전 국민적 각성과 책임 요구.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-paris-climate-agreement', '파리 기후변화협정 체결 (탄소중립과 신재생에너지, 2015년)', '파리 기후변화협정 체결 (탄소중립과 신재생에너지, 2015년)', 'WEST', '', 'CLIMATE_ENVIRONMENT', 'A', 2015, 2015, 'exact', '전 세계 195개국이 지구 평균 온도 상승을 산업화 이전 대비 1.5℃ 이내로 제한하기로 결의한 기후 협약.', '기후 위기 대응을 위한 전 지구적 에너지 전환(RE100, 전기차)의 법적 기준.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-spacex-reusable-rocket', '스페이스X의 재사용 로켓 팰컨9 성공과 민간 우주 시대 (2015년)', '스페이스X의 재사용 로켓 팰컨9 성공과 민간 우주 시대 (2015년)', 'WEST', '', 'SCIENCE', 'B', 2015, 2026, 'exact', '1단 로켓 해상 바지선 수직 착륙 회수에 성공하여 우주 발사 비용을 10분의 1로 절감하고 스타링크 위성 인터넷망 구축.', '민간 상업 우주 개발(뉴 스페이스)과 화성 탐사의 길 개척.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-candlelight-revolution-impeachment', '촛불시민혁명과 대통령 탄핵 인용 (2016~2017년)', '촛불시민혁명과 대통령 탄핵 인용 (2016~2017년)', 'KOREA', '', 'POLITICS', 'A', 2016, 2017, 'exact', '국정농단 사태에 맞서 연인원 1,700만 명의 시민들이 광화문 광장에서 평화로운 촛불 집회를 열어 국회 탄핵 소추와 헌법재판소 전원일치 탄핵 인용 쟁취.', '헌정 질서와 민주주의의 회복력을 평화적으로 증명하여 전 세계 민주주의의 귀감이 된 사건.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-panmunjeom-declaration-2018', '2018 판문점 선언과 남북 정상회담 (''한반도의 평화와 번영'')', '2018 판문점 선언과 남북 정상회담 (''한반도의 평화와 번영'')', 'KOREA', '', 'POLITICS', 'A', 2018, 2018, 'exact', '문재인 대통령과 김정은 위원장이 판문점 군사분계선을 넘나들며 도보다리 회담을 갖고 ''한반도에 더 이상 전쟁은 없을 것''을 선언.', '완전한 비핵화와 평화 체제 구축을 향한 역사적 이정표.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-us-china-tech-trade-war', '미·중 기술 패권 전쟁과 반도체 공급망 갈등 (2018년~현재)', '미·중 기술 패권 전쟁과 반도체 공급망 갈등 (2018년~현재)', 'CHINA', '', 'ECONOMY', 'B', 2018, 2026, 'exact', '관세 부과로 시작되어 화웨이 제재, 첨단 반도체 장비 수출 통제 및 공급망 디커플링(디리스킹) 대치 격화.', '21세기 세계 경제와 첨단 기술 표준을 둘러싼 신냉전의 핵심 전선.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-hong-kong-national-security-law', '홍콩 국가보안법 제정과 일국양제 체제 변화 (2020년)', '홍콩 국가보안법 제정과 일국양제 체제 변화 (2020년)', 'CHINA', '', 'POLITICS', 'C', 2019, 2020, 'exact', '2019년 대규모 범죄인 인도법 반대 시위 이후 전인대에서 홍콩 보안법을 통과시켜 중앙 통제 강화.', '홍콩의 고도 자치권 축소와 국제 금융 중심지 위상 변화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-covid19-global-pandemic', '코로나19(COVID-19) 글로벌 팬데믹과 mRNA 백신 혁신 (2019~2023년)', '코로나19(COVID-19) 글로벌 팬데믹과 mRNA 백신 혁신 (2019~2023년)', 'WEST', '', 'CLIMATE_ENVIRONMENT', 'A', 2019, 2023, 'exact', '신종 코로나바이러스 대유행으로 전 세계 국경 봉쇄, 700만 명 사망, 비대면 원격 근무 확산 및 사상 최초 초고속 mRNA 백신 상용화.', '21세기 최대의 보건 위기이자 글로벌 공급망 재편과 디지털 전환의 가속화.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-space-station-tiangong', '중국 독자 우주정거장 ''톈궁(天宮)'' 완공과 달·화성 탐사 (2021~2022년)', '중국 독자 우주정거장 ''톈궁(天宮)'' 완공과 달·화성 탐사 (2021~2022년)', 'CHINA', '', 'SCIENCE', 'A', 2019, 2026, 'exact', '창어 4호의 인류 최초 달 뒷면 착륙, 주룽호 화성 탐사선 착륙에 이어 독자적인 상설 우주정거장 톈궁 완공.', '미국과 대등하게 경쟁하는 우주 강국 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-superconducting-fusion-kstar', '인공태양 KSTAR 초전도 핵융합 1억도 초고온 운전 성공', '인공태양 KSTAR 초전도 핵융합 1억도 초고온 운전 성공', 'KOREA', '', 'SCIENCE', 'B', 2020, 2024, 'exact', '한국형 초전도 핵융합 연구장치 KSTAR가 1억도 초고온 플라즈마를 48초간 연속 유지하는 세계 신기록 달성.', '인류 꿈의 무한 청정 에너지 핵융합 발전 기술 선도.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-ce21-digital-yuan-e-cny', '중국 디지털 위안화(e-CNY) 시범 도입과 핀테크 발전', '중국 디지털 위안화(e-CNY) 시범 도입과 핀테크 발전', 'CHINA', '', 'ECONOMY', 'C', 2020, 2026, 'exact', '주요국 중앙은행 최초로 중앙은행 디지털 화폐(CBDC)를 상용화하고 알리페이·위챗페이 모바일 결제 일상화.', '글로벌 달러 패권에 도전하는 디지털 통화 실험.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-nuri-space-rocket-launch', '누리호(KSLV-II) 100% 독자 기술 우주 발사 성공 (2022~2023년)', '누리호(KSLV-II) 100% 독자 기술 우주 발사 성공 (2022~2023년)', 'KOREA', '', 'SCIENCE', 'A', 2022, 2023, 'exact', '순수 국내 독자 기술로 개발한 75톤급 액체연료 엔진 4기를 클러스터링한 누리호가 1톤 이상의 실용 위성을 고도 700km 궤도에 완벽 안착.', '세계 7번째 실용 우주 발사체 보유국이자 우주 강국 공식 진입.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korea-ce21-kf21-boramae-fighter', '초음속 전투기 KF-21 보라매 독자 개발 및 K-방산 수출', '초음속 전투기 KF-21 보라매 독자 개발 및 K-방산 수출', 'KOREA', '', 'SCIENCE', 'B', 2022, 2026, 'exact', '4.5세대 첨단 초음속 전투기 KF-21 비행 성공 및 K-9 자주포, K-2 흑표 전차, FA-50의 대규모 폴란드·유럽 수출.', '세계 4대 방위산업 강국으로의 도약.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-generative-ai-chatgpt-revolution', '생성형 인공지능(AI) 혁명과 초지능 시대 진입 (2022~현재)', '생성형 인공지능(AI) 혁명과 초지능 시대 진입 (2022~현재)', 'WEST', '', 'SCIENCE', 'A', 2022, 2026, 'exact', '트랜스포머 아키텍처와 LLM(대형 언어 모델)을 바탕으로 한 ChatGPT, Gemini 등의 등장으로 지식 노동, 코딩, 창작의 자동화 혁신.', '인류 문명사상 가장 빠르고 심원한 4차 산업혁명의 정점 도래.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('west-ce21-russia-ukraine-war-2022', '러시아의 우크라이나 침공과 신냉전 대립 (2022년~현재)', '러시아의 우크라이나 침공과 신냉전 대립 (2022년~현재)', 'WEST', '', 'POLITICS', 'A', 2022, 2026, 'exact', '푸틴의 러시아군이 우크라이나를 전면 침공하며 2차 대전 이후 유럽 최대의 전면전 발발 및 나토(NATO) 확장과 신냉전 심화.', '전후 유럽 평화 질서의 붕괴와 지정학적 에너지·식량 위기.', '', '', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();

COMMIT;