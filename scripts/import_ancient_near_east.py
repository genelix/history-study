# -*- coding: utf-8 -*-
"""
Ancient Near East (Sumer, Akkad, Babylon, Assyria, Hittite, Phoenicia, Persia, Egypt)
A-Grade Historical Events Dataset Integrator for HistoryGrid
"""

import json
import os

ANCIENT_NEAR_EAST_EVENTS = [
    {
        "id": "near-east-sumer-uruk-cuneiform",
        "title": "수메르 우루크 도시 문명과 쐐기문자(설형문자) 발명",
        "title_en": "Invention of Cuneiform Writing and Rise of Uruk City-State in Sumer",
        "region_id": "WEST",
        "sub_region": "메소포타미아 / 수메르",
        "category_id": "SCIENCE",
        "importance": "A",
        "year_start": -3400,
        "year_end": -3100,
        "date_precision": "range",
        "summary": "티그리스·유프라테스강 하류 수메르 우루크에서 인류 최초의 도시국가가 발흥하고, 점토판에 기록하는 쐐기문자(설형문자)와 60진법, 바퀴가 발명됨.",
        "historical_significance": "인류 선사시대를 끝내고 역사 시대를 개막한 문자와 도시 문명의 원형.",
        "cause": "티그리스·유프라테스 유역의 관개 농업 잉여 생산물 관리 및 신전 경제 행정 기록의 필요성.",
        "consequence": "문자를 통한 법률·종교·교역 기록의 영구 축적과 메소포타미아 전역으로의 도시 문명 확산.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [],
        "related_events": [
            {"target_event_id": "near-east-sumer-ur-nammu-code", "relation_type": "CAUSES"},
            {"target_event_id": "near-east-sumer-gilgamesh-epic", "relation_type": "INFLUENCED_BY"}
        ],
        "sources": [{"title": "Encyclopaedia Britannica - Sumerian Civilization and Cuneiform"}]
    },
    {
        "id": "near-east-egypt-narmer-unification",
        "title": "나르메르 왕의 상·하 이집트 최초 통일과 제1왕조 개창",
        "title_en": "Unification of Upper and Lower Egypt by King Narmer",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -3100,
        "year_end": -3050,
        "date_precision": "approximate",
        "summary": "상이집트의 나르메르(메네스) 왕이 나일강 삼각주 하이집트를 통합하고 멤피스를 수도로 삼아 제1왕조를 창건함.",
        "historical_significance": "3천 년간 이어질 고대 이집트 파라오 신왕국 문명의 공식적 출발점.",
        "cause": "나일강 수자원과 농경지 통합 관리를 위한 유역 정치체들의 통합 요구.",
        "consequence": "백관과 적관을 결합한 이중관(프스켄트) 착용 및 파라오 중심의 신정일치 중앙집권 국가 형성.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "나르메르 (메네스)", "role_title": "이집트 제1왕조 파라오"}],
        "related_events": [
            {"target_event_id": "near-east-egypt-djoser-step-pyramid", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "Oxford History of Ancient Egypt"}]
    },
    {
        "id": "near-east-egypt-hieroglyphs-papyrus",
        "title": "이집트 상형문자(히에로그리프)와 파피루스 기록 문화",
        "title_en": "Egyptian Hieroglyphic Script and Papyrus Writing System",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "ART_CULTURE",
        "importance": "A",
        "year_start": -3000,
        "year_end": -2800,
        "date_precision": "range",
        "summary": "나일강 파피루스 풀을 가공한 종이와 신성문자(히에로그리프)를 사용하여 종교 의례, 왕실 연대기, 사자의 서 등을 영구 기록함.",
        "historical_significance": "고대 지중해 및 근동 지식 축적과 관료 행정의 기반이 된 문자 매체 혁신.",
        "cause": "파라오의 신성한 권위 기록과 영혼 불멸(오시리스 신앙) 의식의 문서화.",
        "consequence": "파피루스 수출을 통한 지중해 무역 주도 및 서기(Scribe) 관료 계급의 전문화.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [],
        "related_events": [],
        "sources": [{"title": "British Museum - Egyptian Hieroglyphs and Papyrus"}]
    },
    {
        "id": "near-east-egypt-djoser-step-pyramid",
        "title": "임호텝의 사카라 계단식 피라미드 건축 (조세르 왕)",
        "title_en": "Construction of Djoser Step Pyramid by Imhotep at Saqqara",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "ART_CULTURE",
        "importance": "A",
        "year_start": -2670,
        "year_end": -2650,
        "date_precision": "exact",
        "summary": "재상 임호텝이 마스타바를 6단으로 쌓아 올려 인류 최초의 거대한 석조 피라미드를 사카라에 완성함.",
        "historical_significance": "인류 석조 기념비 건축 공학의 대전환점이자 고왕국 파라오 신격화의 시작.",
        "cause": "파라오의 영원한 부활과 천상 승천을 위한 거대 기념비 묘제 개발.",
        "consequence": "석조 토목 기술의 비약적 발전과 기자의 대피라미드 축조로 이어지는 피라미드 시대 개막.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "임호텝", "role_title": "재상 겸 대건축가"}, {"name_ko": "조세르", "role_title": "제3왕조 파라오"}],
        "related_events": [
            {"target_event_id": "near-east-egypt-giza-great-pyramid", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "Complete Pyramids (Mark Lehner)"}]
    },
    {
        "id": "near-east-sumer-ur-royal-tombs",
        "title": "수메르 우르(Ur) 제1왕조와 우르의 군기(Standard of Ur)",
        "title_en": "Royal Tombs of Ur and the Standard of Ur in Sumer",
        "region_id": "WEST",
        "sub_region": "메소포타미아 / 수메르",
        "category_id": "ART_CULTURE",
        "importance": "A",
        "year_start": -2600,
        "year_end": -2500,
        "date_precision": "range",
        "summary": "우르 왕릉에서 청금석과 조개껍데기 모자이크로 평화와 전쟁을 묘사한 정교한 판화 '우르의 군기'와 금제 투구, 하프가 출토됨.",
        "historical_significance": "수메르 도시국가의 고도화된 계급 분화, 야금술, 종교적 왕권의 정점을 증명.",
        "cause": "아프가니스탄(청금석), 인더스(조개) 등과의 광역 원거리 무역을 통한 부의 축적.",
        "consequence": "수메르 도시국가 간의 패권 다툼 격화 및 전문 군사 계급의 성장.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "푸아비 여왕", "role_title": "우르의 여왕/사제"}],
        "related_events": [],
        "sources": [{"title": "Treasures from the Royal Tombs of Ur (Penn Museum)"}]
    },
    {
        "id": "near-east-egypt-giza-great-pyramid",
        "title": "쿠푸 왕의 기자의 대피라미드 완공",
        "title_en": "Completion of the Great Pyramid of Giza by Pharaoh Khufu",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "SCIENCE",
        "importance": "A",
        "year_start": -2560,
        "year_end": -2540,
        "date_precision": "exact",
        "summary": "230만 개의 2.5톤 석재를 오차 0.05%의 초정밀도로 축조한 높이 146.5m의 대피라미드가 완공됨.",
        "historical_significance": "고대 7대 불가사의 중 유일하게 현존하는 고대 공학·천문학·국가 총동원 체제의 극치.",
        "cause": "이집트 고왕국 제4왕조의 강력한 왕권과 천문·기하학 기술의 집적.",
        "consequence": "국가 행정 조직과 물류 운송 체계의 고도화 및 파라오의 절대적 신격화.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "쿠푸", "role_title": "제4왕조 파라오"}],
        "related_events": [],
        "sources": [{"title": "The Great Pyramid: Ancient Egypt Revisited"}]
    },
    {
        "id": "near-east-akkad-sargon-empire",
        "title": "사르곤 대왕의 아카드 제국 건국과 메소포타미아 통일",
        "title_en": "Conquest and Founding of the Akkadian Empire by Sargon the Great",
        "region_id": "WEST",
        "sub_region": "메소포타미아",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -2334,
        "year_end": -2279,
        "date_precision": "exact",
        "summary": "사르곤 1세가 수메르 도시국가들을 정복하고 페르시아만에서 지중해에 이르는 인류 역사상 최초의 통일 다민족 제국을 수립함.",
        "historical_significance": "도시국가 시대를 마감하고 '사방의 왕'이라는 황제 중심 제국주의 통치 모델 창시.",
        "cause": "수메르 도시국가들의 내분과 셈족 계열 아카드인의 군사적 결집.",
        "consequence": "아카드어의 메소포타미아 국제 공용어화 및 도량형 표준화.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "사르곤 대왕", "role_title": "아카드 제국 건국자"}],
        "related_events": [
            {"target_event_id": "near-east-sumer-ur-nammu-code", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "The Ancient Near East (Marc Van De Mieroop)"}]
    },
    {
        "id": "near-east-sumer-ur-nammu-code",
        "title": "우르-남무 법전 편찬과 우르 제3왕조 르네상스",
        "title_en": "Promulgation of the Code of Ur-Nammu and Sumerian Renaissance",
        "region_id": "WEST",
        "sub_region": "메소포타미아 / 수메르",
        "category_id": "INSTITUTION",
        "importance": "A",
        "year_start": -2112,
        "year_end": -2095,
        "date_precision": "exact",
        "summary": "우르 제3왕조의 우르-남무 왕이 함무라비 법전보다 300년 앞선 인류 최초의 성문 법전을 제정하고 대지구라트를 축조함.",
        "historical_significance": "피해에 대한 금전 배상 원칙을 명시한 인류 최초의 법치주의 성문 규범.",
        "cause": "구티족 침략 후 수메르 고유 문화를 부흥시키고 사회 질서를 재건할 법제 필요.",
        "consequence": "우르 대지구라트 건축과 함께 수메르 문학·행정의 마지막 황금기 구가.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "우르-남무", "role_title": "우르 제3왕조 왕"}],
        "related_events": [
            {"target_event_id": "near-east-babylon-hammurabi-code", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "The Sumerians: Their History, Culture, and Character"}]
    },
    {
        "id": "near-east-sumer-gilgamesh-epic",
        "title": "길가메시 서사시(Epic of Gilgamesh)의 성문화",
        "title_en": "Composition of the Epic of Gilgamesh in Mesopotamia",
        "region_id": "WEST",
        "sub_region": "메소포타미아",
        "category_id": "ART_CULTURE",
        "importance": "A",
        "year_start": -2100,
        "year_end": -1800,
        "date_precision": "range",
        "summary": "우루크의 영웅왕 길가메시의 모험, 엔키두와의 우정, 대홍수 전설(우트나피슈팀), 불로초 탐색을 노래한 대서사시 점토판 편찬.",
        "historical_significance": "인류 최고(最古)의 문학 작품이자 죽음과 영생에 대한 실존적 고뇌를 다룬 서양 문학의 원류.",
        "cause": "수메르 구전 영웅 설화들의 아카드어 문헌 집대성.",
        "consequence": "노아의 방주 등 성서 및 그리스 신화의 대홍수 모티프 형성에 결정적 영향.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "길가메시", "role_title": "우루크의 왕"}],
        "related_events": [],
        "sources": [{"title": "The Epic of Gilgamesh (Andrew George)"}]
    },
    {
        "id": "near-east-egypt-middle-kingdom",
        "title": "이집트 중왕국의 재통일과 테베의 부흥",
        "title_en": "Reunification of Egypt under the Middle Kingdom by Mentuhotep II",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -2055,
        "year_end": -1985,
        "date_precision": "exact",
        "summary": "제1중간기의 분열과 기근을 극복하고 멘투호테프 2세가 이집트를 재통일하여 고전 문학(시누헤 이야기)과 파이윰 관개 농업을 꽃피움.",
        "historical_significance": "오시리스 부활 신앙의 대중화와 이집트 고전 예술·문학의 황금기.",
        "cause": "테베 지역 군주들의 군사적 통합과 나일강 수위 안정.",
        "consequence": "누비아 광산 장악과 중왕국 관료 문학의 번영.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "멘투호테프 2세", "role_title": "제11왕조 파라오"}],
        "related_events": [],
        "sources": [{"title": "A History of Ancient Egypt (Nicolas Grimal)"}]
    },
    {
        "id": "near-east-babylon-hammurabi-code",
        "title": "함무라비 왕의 바빌로니아 통일과 함무라비 법전 반포",
        "title_en": "Promulgation of the Code of Hammurabi by King Hammurabi of Babylon",
        "region_id": "WEST",
        "sub_region": "바빌로니아",
        "category_id": "INSTITUTION",
        "importance": "A",
        "year_start": -1792,
        "year_end": -1750,
        "date_precision": "exact",
        "summary": "메소포타미아를 재통일한 함무라비 왕이 282개 조항을 섬록암 비석에 새겨 '눈에는 눈, 이에는 이(동해보복)' 원칙의 법전을 반포함.",
        "historical_significance": "고대 근동 법체계의 집대성이자 국가가 정의와 형벌을 독점하는 사법 국가 체제 확립.",
        "cause": "바빌론 제1왕조의 메소포타미아 전역 정복 후 다양한 민족을 다스릴 통일 법률 제정 필요.",
        "consequence": "사유재산, 상거래, 가족법, 형벌 규정의 법제화 및 고대 법률 문화의 표준 정립.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "함무라비", "role_title": "바빌로니아 왕"}],
        "related_events": [
            {"target_event_id": "near-east-hittite-iron-chariot", "relation_type": "SYNCHRONOUS"}
        ],
        "sources": [{"title": "King Hammurabi of Babylon (Marc Van De Mieroop)"}]
    },
    {
        "id": "near-east-hittite-iron-chariot",
        "title": "히타이트 제국의 철기 제련 독점과 전차 군단 번영",
        "title_en": "Rise of the Hittite Empire and Early Iron Metallurgy in Anatolia",
        "region_id": "WEST",
        "sub_region": "아나톨리아 / 히타이트",
        "category_id": "SCIENCE",
        "importance": "A",
        "year_start": -1600,
        "year_end": -1200,
        "date_precision": "range",
        "summary": "아나톨리아 반도에서 철을 단조하는 독점적 제련 기술과 3인승 바퀴 전차를 개발하여 바빌론을 함락시키고 근동의 강자로 군림함.",
        "historical_significance": "청동기 시대를 끝내고 유라시아 철기 혁명을 촉발한 인류 금속 야금사의 대전환.",
        "cause": "아나톨리아 북부 철광석 매장지와 선진 단조 열처리 야금 기술의 결합.",
        "consequence": "이집트 신왕국과의 시리아 쟁탈전(카데시 전투) 및 철기 무기 기술의 지중해 확산.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "무르실리 1세", "role_title": "히타이트 왕"}, {"name_ko": "수필룰리우마 1세", "role_title": "히타이트 제국 대왕"}],
        "related_events": [
            {"target_event_id": "near-east-ramses-kadesh-treaty", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "The Kingdom of the Hittites (Trevor Bryce)"}]
    },
    {
        "id": "near-east-egypt-hyksos-expulsion-new-kingdom",
        "title": "아흐모세 1세의 힉소스 축출과 이집트 신왕국 제국주의 개막",
        "title_en": "Expulsion of the Hyksos and Founding of the Egyptian New Kingdom",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -1550,
        "year_end": -1525,
        "date_precision": "exact",
        "summary": "아흐모세 1세가 전차와 복합궁을 앞세워 100여 년간 지배하던 아시아계 힉소스를 몰아내고 이집트 신왕국(제18왕조)을 개창함.",
        "historical_significance": "수세적 방어에서 벗어나 시리아·팔레스타인으로 진출하는 이집트 제국주의 전성기의 서막.",
        "cause": "힉소스 지배기 동안 유입된 선진 청동기 전차 전술을 이집트 군대가 체득하여 반격.",
        "consequence": "아몬-라 신전 중심의 국력 결집과 투트모세·람세스 시대로 이어지는 대외 정복.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "아흐모세 1세", "role_title": "제18왕조 창건 파라오"}],
        "related_events": [
            {"target_event_id": "near-east-egypt-hatshepsut-punt", "relation_type": "CAUSES"},
            {"target_event_id": "near-east-egypt-thutmose-megiddo", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "War in Ancient Egypt (Anthony J. Spalinger)"}]
    },
    {
        "id": "near-east-egypt-hatshepsut-punt",
        "title": "하트셉수트 여왕의 통치와 홍해 푼트(Punt) 무역 원정",
        "title_en": "Reign of Queen Hatshepsut and Maritime Expedition to Punt",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "ECONOMY",
        "importance": "A",
        "year_start": -1479,
        "year_end": -1458,
        "date_precision": "exact",
        "summary": "이집트 최초의 실질적 여성 파라오 하트셉수트가 군사 정복 대신 홍해 해상 원정대를 파견해 푼트에서 유향, 몰약, 황금을 직수입함.",
        "historical_significance": "데이르 엘 바하리 신전 건립과 고대 원거리 해상 상업 외교의 번영.",
        "cause": "신전 의례에 필수적인 유향과 사치품을 독점 확보하려는 경제적·외교적 결단.",
        "consequence": "홍해 해상 무역로 개척과 카르나크 신전의 대규모 증축.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "하트셉수트", "role_title": "여성 파라오"}],
        "related_events": [],
        "sources": [{"title": "Hatshepsut: From Queen to Pharaoh (Metropolitan Museum of Art)"}]
    },
    {
        "id": "near-east-egypt-thutmose-megiddo",
        "title": "투트모세 3세의 메기도 전투와 유프라테스 제국 팽창",
        "title_en": "Battle of Megiddo and Imperial Expansion under Thutmose III",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -1457,
        "year_end": -1425,
        "date_precision": "exact",
        "summary": "'고대 이집트의 나폴레옹' 투트모세 3세가 메기도에서 가나안 연합군을 격파하고 유프라테스강까지 영토를 넓혀 최대 판도를 달성함.",
        "historical_significance": "고대 근동 전체에 걸친 이집트의 군사적·외교적 패권 확립.",
        "cause": "시리아-가나안 도시국가들의 반이집트 연합 결성과 반란.",
        "consequence": "레반트 전역의 조공국화 및 이집트-미탄니 간 세력 균형 형성.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "투트모세 3세", "role_title": "제18왕조 정복 파라오"}],
        "related_events": [
            {"target_event_id": "near-east-ramses-kadesh-treaty", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "Thutmose III: A New Biography (Eric H. Cline)"}]
    },
    {
        "id": "near-east-egypt-akhenaten-amarna-revolt",
        "title": "아크나톤의 아톤 일신교 종교 개혁과 아마르나 예술",
        "title_en": "Akhenaten Monotheistic Religious Revolution and Amarna Art",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "RELIGION",
        "importance": "A",
        "year_start": -1353,
        "year_end": -1336,
        "date_precision": "exact",
        "summary": "아멘호테프 4세가 아몬 사제단의 권력을 꺾기 위해 태양신 아톤만을 섬기는 일신교 개혁을 단행하고 아마르나로 천도하여 사실주의 예술을 장려함.",
        "historical_significance": "인류 역사상 최초의 기록된 유일신 사상 시도이자 고대 종교·예술 양식의 파격적 혁신.",
        "cause": "테베 아몬 사제단의 비대해진 경제적·정치적 권력 견제.",
        "consequence": "네페르티티 흉상 등 생동감 넘치는 아마르나 예술 탄생 및 전통 사제단의 반발.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "아크나톤 (아멘호테프 4세)", "role_title": "파라오"}, {"name_ko": "네페르티티", "role_title": "왕비"}],
        "related_events": [
            {"target_event_id": "near-east-egypt-tutankhamun", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "Akhenaten: Egypt's False Prophet (Nicholas Reeves)"}]
    },
    {
        "id": "near-east-egypt-tutankhamun",
        "title": "투탕카멘의 아몬 신앙 복원과 황금 마스크 유물",
        "title_en": "Restoration of Traditional Religion and Tomb of Tutankhamun",
        "region_id": "WEST",
        "sub_region": "이집트",
        "category_id": "ART_CULTURE",
        "importance": "A",
        "year_start": -1332,
        "year_end": -1323,
        "date_precision": "exact",
        "summary": "소년 파라오 투탕카멘이 테베로 환도하여 전통 아몬 신앙을 복원했으며, 왕가의 계곡에서 도굴되지 않은 순금 가면과 보물들이 발굴됨.",
        "historical_significance": "고대 이집트 왕실의 눈부신 금속 공예술과 내세관을 온전히 보여주는 고고학의 기적.",
        "cause": "아크나톤 사후 구체제 사제단과 군부의 전통 다신교 복원 압력.",
        "consequence": "1922년 하워드 카터에 의해 온전한 형태로 발굴되어 전 세계에 이집트 열풍(Egyptomania) 촉발.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "투탕카멘", "role_title": "제18왕조 파라오"}],
        "related_events": [],
        "sources": [{"title": "The Complete Tutankhamun (Nicholas Reeves)"}]
    },
    {
        "id": "near-east-ramses-kadesh-treaty",
        "title": "람세스 2세의 카데시 전투와 인류 최초의 국제 평화 조약",
        "title_en": "Battle of Kadesh and the Egyptian-Hittite Peace Treaty",
        "region_id": "WEST",
        "sub_region": "이집트 / 히타이트",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -1274,
        "year_end": -1259,
        "date_precision": "exact",
        "summary": "이집트 람세스 2세와 히타이트 하투실리 3세가 시리아 카데시에서 5천 대의 전차전 후 은판에 영구 상호불가침 평화조약을 체결함.",
        "historical_significance": "세계사상 최초로 전문이 현존하는 공식 국제 평화 및 군사 동맹 조약(UN 본부에 복제본 전시).",
        "cause": "시리아 무역로와 레반트 지배권을 둘러싼 양대 초강대국의 충돌.",
        "consequence": "오리엔트 양대 제국의 세력 균형 확립 및 아부심벨 대신전 축조.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "람세스 2세", "role_title": "제19왕조 대파라오"}, {"name_ko": "하투실리 3세", "role_title": "히타이트 대왕"}],
        "related_events": [],
        "sources": [{"title": "Ramesses: Egypt's Greatest Pharaoh (Joyce Tyldesley)"}]
    },
    {
        "id": "near-east-phoenicia-alphabet",
        "title": "페니키아 해상 무역망과 음소문자(알파벳)의 발명 및 전파",
        "title_en": "Invention and Spread of the Phoenician Alphabet",
        "region_id": "WEST",
        "sub_region": "레반트 / 페니키아",
        "category_id": "SCIENCE",
        "importance": "A",
        "year_start": -1200,
        "year_end": -1000,
        "date_precision": "range",
        "summary": "티레, 시돈의 페니키아 상인들이 지중해 전역에 식민 도시(카르타고 등)를 건설하고 22개의 자음으로 된 표음문자 알파벳을 창안함.",
        "historical_significance": "그리스 문자, 라틴 문자, 아랍 문자, 히브리 문자 등 현대 모든 서구 알파벳의 직계 조상.",
        "cause": "복잡한 설형·상형문자 대신 신속한 상거래 장부 작성을 위한 간결한 표음문자 필요.",
        "consequence": "그리스인들에게 전파되어 모음이 추가된 현대식 알파벳으로 발전.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [],
        "related_events": [],
        "sources": [{"title": "The Phoenicians and the West (Maria Eugenia Aubet)"}]
    },
    {
        "id": "near-east-assyria-empire-unification",
        "title": "아시리아 제국의 근동 최초 대통일과 아슈르바니팔 도서관",
        "title_en": "Unification of the Near East by the Neo-Assyrian Empire and Library of Ashurbanipal",
        "region_id": "WEST",
        "sub_region": "메소포타미아 / 아시리아",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -745,
        "year_end": -627,
        "date_precision": "range",
        "summary": "아시리아가 철제 무기, 공성퇴, 기병대를 앞세워 메소포타미아·시리아·이집트를 최초로 통일하고 니네베에 수만 점의 점토판 도서관을 설립함.",
        "historical_significance": "고대 근동 전체를 단일 제국으로 묶은 최초의 군사제국이자 인류 최초의 체계적 왕립 도서관.",
        "cause": "티글라트-필레세르 3세의 상비군 개혁과 강력한 철기 군사 기술.",
        "consequence": "오리엔트 전역의 설형문자 문헌(길가메시 서사시 등)이 수집·보존되어 후대에 전승.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "티글라트-필레세르 3세", "role_title": "아시리아 왕"}, {"name_ko": "아슈르바니팔", "role_title": "아시리아 마지막 대왕"}],
        "related_events": [
            {"target_event_id": "near-east-babylon-captivity-hanging-gardens", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "The Might That Was Assyria (H.W.F. Saggs)"}]
    },
    {
        "id": "near-east-babylon-captivity-hanging-gardens",
        "title": "신바빌로니아 네부카드네자르 2세의 바빌론 유수와 공중정원",
        "title_en": "Babylonian Captivity under Nebuchadnezzar II and the Hanging Gardens of Babylon",
        "region_id": "WEST",
        "sub_region": "메소포타미아 / 신바빌로니아",
        "category_id": "RELIGION",
        "importance": "A",
        "year_start": -597,
        "year_end": -562,
        "date_precision": "exact",
        "summary": "네부카드네자르 2세가 이슈타르 문과 공중정원을 짓고 유다 왕국을 멸망시켜 유대인들을 바빌론으로 강제 이주시킴(바빌론 유수).",
        "historical_significance": "유대인들이 바빌론 유수 기간 동안 구약성경 토라를 편집하고 순수 유일신앙을 확립하는 결정적 계기.",
        "cause": "유다 왕국의 반바빌로니아 동맹 가담에 대한 응징과 제국 통합 정책.",
        "consequence": "회당(시나고그) 제도 탄생과 성서 기록의 정착, 유대 민족 정체성 확립.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "네부카드네자르 2세", "role_title": "신바빌로니아 왕"}],
        "related_events": [
            {"target_event_id": "near-east-persia-cyrus-cylinder", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "Babylon: Mesopotamia and the Birth of Civilization (Paul Kriwaczek)"}]
    },
    {
        "id": "near-east-persia-cyrus-cylinder",
        "title": "키루스 대제의 페르시아 제국 창건과 키루스 원통(인권선언)",
        "title_en": "Founding of the Achaemenid Empire and Cyrus Cylinder by Cyrus the Great",
        "region_id": "WEST",
        "sub_region": "페르시아",
        "category_id": "POLITICS",
        "importance": "A",
        "year_start": -559,
        "year_end": -530,
        "date_precision": "exact",
        "summary": "키루스 2세가 메디아, 리디아, 바빌론을 정복해 아케메네스 왕조 페르시아를 세우고, 바빌론 점토 원통에 피정복민의 종교 자유와 유대인 해방을 선언함.",
        "historical_significance": "인류 최초의 인권선언문으로 평가받는 다문화 관용주의 제국 통치 모델의 수립.",
        "cause": "신바빌로니아 내부의 나보니두스 왕에 대한 반발과 키루스의 군사적 통합.",
        "consequence": "바빌론에 억류되었던 유대인의 예루살렘 귀환 및 제2성전 재건 허용.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "키루스 2세 (키루스 대제)", "role_title": "페르시아 제국 대왕"}],
        "related_events": [
            {"target_event_id": "near-east-persia-darius-persepolis-royal-road", "relation_type": "CAUSES"}
        ],
        "sources": [{"title": "The Cyrus Cylinder and Ancient Persia (John Curtis)"}]
    },
    {
        "id": "near-east-persia-darius-persepolis-royal-road",
        "title": "다리우스 1세의 제국 행정망(왕의 길) 완성 및 페르세폴리스 건설",
        "title_en": "Administrative Organization, the Royal Road, and Persepolis under Darius I",
        "region_id": "WEST",
        "sub_region": "페르시아",
        "category_id": "INSTITUTION",
        "importance": "A",
        "year_start": -522,
        "year_end": -486,
        "date_precision": "exact",
        "summary": "다리우스 대제가 20개 사트라프(총독) 행정구역을 나누고 왕의 눈, 2,700km의 왕의 길 파발망, 금화 다릭 통화를 정비하며 의전 수도 페르세폴리스를 축조함.",
        "historical_significance": "고대 세계 최대 영토를 효율적으로 통치한 관료제·역참망·도로 인프라의 완성.",
        "cause": "인더스강에서 에게해에 이르는 거대 다민족 제국의 효율적 행정 통치 필요.",
        "consequence": "페르시아 전쟁의 배경 형성 및 헬레니즘·로마 도로 행정망의 모태 제공.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "다리우스 1세 (다리우스 대제)", "role_title": "페르시아 제국 샤한샤"}],
        "related_events": [
            {"target_event_id": "near-east-persia-zoroastrianism", "relation_type": "SYNCHRONOUS"}
        ],
        "sources": [{"title": "Persia: The Achaemenid Empire (Matt Waters)"}]
    },
    {
        "id": "near-east-persia-zoroastrianism",
        "title": "조로아스터교(배화교)의 국교화와 선악 이원론 사상",
        "title_en": "Rise of Zoroastrianism and Dualistic Theology in Ancient Persia",
        "region_id": "WEST",
        "sub_region": "페르시아",
        "category_id": "RELIGION",
        "importance": "A",
        "year_start": -600,
        "year_end": -500,
        "date_precision": "range",
        "summary": "선신 아후라 마즈다와 악신 앙그라 마이뉴의 대결, 최후의 심판, 천국과 지옥, 메시아 강림을 설파한 조로아스터교가 페르시아의 국교가 됨.",
        "historical_significance": "유대교 후기 사상, 기독교, 이슬람교의 종말론·구원관·선악관 형성에 심대한 영향을 미친 축의 시대 핵심 종교.",
        "cause": "예언자 자라투스트라(조로아스터)의 유일 윤리신 종교 개혁.",
        "consequence": "페르시아 제국의 도덕적 통치 정당성 부여 및 아베스타 경전 성립.",
        "confidence": "HIGH",
        "review_status": "APPROVED",
        "related_people": [{"name_ko": "자라투스트라 (조로아스터)", "role_title": "예언자·종교 창시자"}],
        "related_events": [],
        "sources": [{"title": "A History of Zoroastrianism (Mary Boyce)"}]
    }
]

def integrate_events():
    base_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    seed_path = os.path.join(base_dir, "data", "seed", "historical_events.json")

    with open(seed_path, "r", encoding="utf-8") as f:
        events = json.load(f)

    existing_ids = {e["id"] for e in events}
    added_count = 0

    for ne in ANCIENT_NEAR_EAST_EVENTS:
        if ne["id"] in existing_ids:
            for i, ev in enumerate(events):
                if ev["id"] == ne["id"]:
                    events[i] = ne
                    break
        else:
            events.append(ne)
            added_count += 1

    events.sort(key=lambda x: (x.get("year_start", 0), x.get("year_end", 0), x.get("id", "")))

    with open(seed_path, "w", encoding="utf-8") as f:
        json.dump(events, f, ensure_ascii=False, indent=2)

    print(f"✅ Successfully integrated {len(ANCIENT_NEAR_EAST_EVENTS)} Ancient Near East events (Added new: {added_count}). Total events: {len(events)}")

if __name__ == "__main__":
    integrate_events()
