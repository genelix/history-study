# -*- coding: utf-8 -*-
"""
Block 1: BC 4th Century ~ AD 1st Century (5 Centuries, 150+ events)
"""

BLOCK_1_CENTURIES = [
    # --------------------------------------------------------------------------
    # 1. BC 4th Century (BC 400 ~ BC 301)
    # --------------------------------------------------------------------------
    {
        "century_id": "bc_04th_century",
        "century_label": "기원전 4세기 (BC 400 ~ BC 301)",
        "period": {"yearStart": -400, "yearEnd": -301},
        "events": [
            # WEST
            {"id": "west-bc4-socrates-death", "title": "소크라테스의 재판과 사형", "region_id": "WEST", "category_id": "RELIGION", "importance": "A", "year_start": -399, "year_end": -399, "summary": "아테네 법정에서 청년들을 타락시켰다는 혐의로 소크라테스가 독배를 마심.", "historical_significance": "비판적 이성 철학의 상징이자 플라톤 철학의 출발점."},
            {"id": "west-bc4-plato-academy", "title": "플라톤의 아카데미아 창설", "region_id": "WEST", "category_id": "SCIENCE", "importance": "A", "year_start": -387, "year_end": -387, "summary": "아테네에 서양 최초의 고등 교육·연구 기관 아카데미아를 설립함.", "historical_significance": "서양 대학 및 아카데미 제도의 원형."},
            {"id": "west-bc4-aristotle-lyceum", "title": "아리스토텔레스의 리케이온 설립", "region_id": "WEST", "category_id": "SCIENCE", "importance": "A", "year_start": -335, "year_end": -335, "summary": "경험적 관찰과 귀납적 논리학을 연구하는 학당 리케이온을 세움.", "historical_significance": "자연과학, 논리학, 윤리학 체계의 기초 확립."},
            {"id": "west-bc4-alexander-conquests", "title": "알렉산드로스 대왕의 동방 원정", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -334, "year_end": -323, "summary": "페르시아를 정복하고 이집트와 인도 서북부까지 뻗은 제국을 건설함.", "historical_significance": "그리스와 동방 문화를 융합한 헬레니즘 시대 개막."},
            {"id": "west-bc4-samnite-wars", "title": "로마의 삼니움 전쟁", "region_id": "WEST", "category_id": "POLITICS", "importance": "B", "year_start": -343, "year_end": -301, "summary": "로마가 삼니움족을 격파하고 이탈리아 중남부의 패권을 장악함.", "historical_significance": "로마 군단병(레기온) 전술의 완성 및 이탈리아 통일의 발판."},
            {"id": "west-bc4-appian-way", "title": "아피아 가도 및 수도교 건설", "region_id": "WEST", "category_id": "INSTITUTION", "importance": "B", "year_start": -312, "year_end": -312, "summary": "로마 최초의 포장 군사도로와 수도교 아쿠아 아피아를 축조함.", "historical_significance": "로마 토목 공학 인프라의 효시."},
            {"id": "west-bc4-gallic-sack", "title": "갈리아족의 로마 침공 및 약탈", "region_id": "WEST", "category_id": "POLITICS", "importance": "B", "year_start": -390, "year_end": -387, "summary": "브렌누스가 이끄는 갈리아족이 알리아 전투 후 로마 시를 점령함.", "historical_significance": "로마의 방어 체제 재편과 세르비우스 성벽 강화 촉발."},
            {"id": "west-bc4-leuctra-battle", "title": "레욱트라 전투와 테베의 패권", "region_id": "WEST", "category_id": "POLITICS", "importance": "B", "year_start": -371, "year_end": -371, "summary": "에파메이논다스의 사선진 전술로 테베가 스파르타를 격파함.", "historical_significance": "스파르타 불패 신화 붕괴와 전술학의 혁신."},
            {"id": "west-bc4-pytheas-voyage", "title": "피테아스의 북유럽 탐험", "region_id": "WEST", "category_id": "SCIENCE", "importance": "C", "year_start": -325, "year_end": -320, "summary": "마살리아의 피테아스가 브리튼과 북극해 인근 툴레를 탐험함.", "historical_significance": "고대 지중해 세계 최초의 북유럽 및 조석 관측 기록."},
            {"id": "west-bc4-diogenes-cynic", "title": "디오게네스의 견유학파 철학", "region_id": "WEST", "category_id": "RELIGION", "importance": "C", "year_start": -370, "year_end": -323, "summary": "관습과 세속적 부를 거부하고 자연에 따른 무소유를 실천함.", "historical_significance": "헬레니즘 개인주의 윤리학과 스토아 철학의 선구."},

            # CHINA
            {"id": "china-bc4-shang-yang", "title": "진나라 상앙의 변법 개혁", "region_id": "CHINA", "category_id": "INSTITUTION", "importance": "A", "year_start": -356, "year_end": -338, "summary": "군공수작제, 군현제, 십오제를 통해 철저한 법가적 부국강병 추진.", "historical_significance": "진나라가 천하 통일의 기반을 구축한 결정적 개혁."},
            {"id": "china-bc4-mencius", "title": "맹자의 왕도정치와 성선설", "region_id": "CHINA", "category_id": "RELIGION", "importance": "A", "year_start": -372, "year_end": -301, "summary": "인의(仁義)에 기초한 왕도정치와 민본주의 역성혁명론을 주장함.", "historical_significance": "동아시아 유교 정치사상의 기본 규범 정립."},
            {"id": "china-bc4-zhuangzi", "title": "장자의 도가 철학과 제물론", "region_id": "CHINA", "category_id": "RELIGION", "importance": "A", "year_start": -369, "year_end": -301, "summary": "만물의 평등과 절대적 자유(소요유)를 역설한 도가 철학 집대성.", "historical_significance": "동양 예술론과 문학, 선불교에 지대한 영향."},
            {"id": "china-bc4-jixia-academy", "title": "제나라 직하학궁 번영", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "A", "year_start": -360, "year_end": -301, "summary": "임치에 제자백가 학자들을 모아 자유로운 학술 토론을 지원함.", "historical_significance": "동양 최초의 국립 종합 학술원으로서 백가쟁명 주도."},
            {"id": "china-bc4-sun-bin", "title": "손빈의 마릉 전투와 손빈병법", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "B", "year_start": -341, "year_end": -341, "summary": "감조지계 전술로 위나라 군대를 섬멸하고 병법 체계를 발전시킴.", "historical_significance": "집단 석궁 운용과 기동전술의 획기적 발전."},
            {"id": "china-bc4-qu-yuan", "title": "굴원의 초사 문학과 이소", "region_id": "CHINA", "category_id": "ART_CULTURE", "importance": "B", "year_start": -340, "year_end": -301, "summary": "초나라 시인 굴원이 나라를 걱정하며 장편 서정시 이소경을 지음.", "historical_significance": "중국 남방 낭만주의 문학의 최고봉."},
            {"id": "china-bc4-wuling-king", "title": "조나라 무령왕의 호복기사", "region_id": "CHINA", "category_id": "INSTITUTION", "importance": "B", "year_start": -307, "year_end": -307, "summary": "유목민의 복장과 궁기병 전술을 중원에 최초로 도입함.", "historical_significance": "동아시아 기병 전술의 혁신과 전차의 퇴조."},
            {"id": "china-bc4-su-qin-zhang-yi", "title": "합종연횡 외교술의 대결", "region_id": "CHINA", "category_id": "POLITICS", "importance": "B", "year_start": -330, "year_end": -310, "summary": "소진의 6국 합종책과 장의의 연횡책이 펼쳐진 치열한 외교전.", "historical_significance": "세력균형과 다자외교의 효시."},
            {"id": "china-bc4-iron-plow", "title": "철제 보습과 우경 농업의 보급", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "C", "year_start": -380, "year_end": -301, "summary": "소 쟁기질과 단단한 철제 농기구로 토지 생산성이 급증함.", "historical_significance": "대규모 인구 증가와 도시 경제 발달 촉진."},
            {"id": "china-bc4-seven-powers", "title": "전국 칠웅의 총력전 체제", "region_id": "CHINA", "category_id": "POLITICS", "importance": "C", "year_start": -350, "year_end": -301, "summary": "진, 초, 제, 연, 조, 위, 한의 상호 침략전이 전면화됨.", "historical_significance": "귀족 사회에서 관료제 국가로의 완전한 이행."},

            # KOREA
            {"id": "korea-bc4-slender-dagger", "title": "한국식 세형동검 문화의 확립", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "A", "year_start": -400, "year_end": -301, "summary": "비파형동검을 개량하여 한반도 고유의 독창적 세형동검을 주조함.", "historical_significance": "독자적인 한반도 청동기 금속 공학의 절정."},
            {"id": "korea-bc4-yan-rivalry", "title": "고조선과 연나라의 왕호 칭당 및 대립", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -350, "year_end": -301, "summary": "고조선 후가 왕을 칭하며 연나라와 요동에서 대등하게 대립함.", "historical_significance": "고조선이 만주-한반도 일대 강력한 왕국임을 보여주는 문헌 기록."},
            {"id": "korea-bc4-danyu-mirror", "title": "국보 다뉴세문경(정문경) 주조", "region_id": "KOREA", "category_id": "ART_CULTURE", "importance": "B", "year_start": -380, "year_end": -301, "summary": "0.3mm 간격의 초정밀 기하학 문양을 새긴 청동 거울 제작.", "historical_significance": "고대 동아시아 최고의 청동 주조 정밀 기술 입증."},
            {"id": "korea-bc4-early-iron", "title": "단조 철기 농기구의 초기 유입", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "B", "year_start": -400, "year_end": -301, "summary": "손칼, 괭이 등 철제 도구가 보급되며 생산력이 향상됨.", "historical_significance": "철기 시대로의 진입과 읍락의 정치적 통합 촉진."},
            {"id": "korea-bc4-songgukri-farming", "title": "송국리형 농경 취락과 벼농사", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "B", "year_start": -400, "year_end": -301, "summary": "원형 주거지와 탄화미, 반달돌칼을 사용하는 대규모 농경 마을 번영.", "historical_significance": "한반도 수전(논농사) 농경 사회의 완전한 정착."},
            {"id": "korea-bc4-dolmen-peak", "title": "남방식 바둑판식 고인돌 축조", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "B", "year_start": -400, "year_end": -301, "summary": "호남·영남 해안가에 수십 톤의 상석을 얹은 고인돌 집중 축조.", "historical_significance": "수백 명을 동원할 수 있는 족장 사회의 권력 가시화."},
            {"id": "korea-bc4-ritual-bells", "title": "청동 팔주령·간두령과 제천 의례", "region_id": "KOREA", "category_id": "RELIGION", "importance": "C", "year_start": -380, "year_end": -301, "summary": "제의용 청동 방울을 통해 군장의 제정일치 종교 권위 행사.", "historical_significance": "단군왕검 샤머니즘 제의의 고고학적 실증."},
            {"id": "korea-bc4-pottery-stripes", "title": "점토대토기 문화의 확산", "region_id": "KOREA", "category_id": "ART_CULTURE", "importance": "C", "year_start": -400, "year_end": -301, "summary": "원형 덧띠를 아가리에 두른 토기가 한반도 중남부로 확산.", "historical_significance": "초기 철기시대 진입의 표지 유물."},
            {"id": "korea-bc4-liaodong-trade", "title": "고조선 요동-서해 해상 교역망", "region_id": "KOREA", "category_id": "ECONOMY", "importance": "C", "year_start": -370, "year_end": -301, "summary": "요동반도와 대동강, 서해안을 잇는 무역로로 모피, 소금, 청동 교환.", "historical_significance": "중계 무역을 통한 고조선의 경제적 성장."},
            {"id": "korea-bc4-palisade-town", "title": "환호와 목책 방어 취락 증대", "region_id": "KOREA", "category_id": "POLITICS", "importance": "C", "year_start": -390, "year_end": -301, "summary": "취락 주위에 도랑과 나무 울타리를 둘러 집단 간 침입 대비.", "historical_significance": "군사적 성채 취락의 발달과 성곽 축조의 원형."}
        ]
    },

    # --------------------------------------------------------------------------
    # 2. BC 3rd Century (BC 300 ~ BC 201)
    # --------------------------------------------------------------------------
    {
        "century_id": "bc_03th_century",
        "century_label": "기원전 3세기 (BC 300 ~ BC 201)",
        "period": {"yearStart": -300, "yearEnd": -201},
        "events": [
            # WEST
            {"id": "west-bc3-punic-war-1", "title": "제1차 포에니 전쟁", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -264, "year_end": -241, "summary": "시칠리아 주도권을 두고 로마와 카르타고가 격돌하여 로마가 최초의 속주를 획득함.", "historical_significance": "로마가 육상 국가에서 지중해 해상 강국으로 도약."},
            {"id": "west-bc3-hannibal-punic-2", "title": "제2차 포에니 전쟁과 한니발의 알프스 횡단", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -218, "year_end": -201, "summary": "한니발이 알프스를 넘어 칸나에에서 로마군을 전멸시켰으나 스키피오가 자마에서 승리함.", "historical_significance": "서지중해의 완전한 패권을 로마가 장악."},
            {"id": "west-bc3-archimedes", "title": "아르키메데스의 부력과 역학 원리 발견", "region_id": "WEST", "category_id": "SCIENCE", "importance": "A", "year_start": -287, "year_end": -212, "summary": "시라쿠사의 아르키메데스가 부력, 지렛대, 원주율 계산 등 수학·물리학을 혁신함.", "historical_significance": "고대 역학 및 수학의 최고봉이자 공학의 선구."},
            {"id": "west-bc3-alexandria-library", "title": "알렉산드리아 도서관 설립", "region_id": "WEST", "category_id": "SCIENCE", "importance": "A", "year_start": -295, "year_end": -280, "summary": "프톨레마이오스 왕조가 알렉산드리아에 수십만 권의 두루마리를 수집한 연구소 건립.", "historical_significance": "고대 세계 최대의 학문과 지식 연구 거점."},
            {"id": "west-bc3-eratosthenes", "title": "에라토스테네스의 지구 둘레 측정", "region_id": "WEST", "category_id": "SCIENCE", "importance": "A", "year_start": -240, "year_end": -240, "summary": "시에네와 알렉산드리아의 하짓날 그림자 각도를 이용해 지구 둘레를 오차 2% 이내로 측정.", "historical_significance": "인류 최초의 과학적 지구 크기 계산."},
            {"id": "west-bc3-euclid-elements", "title": "유클리드의 기하학 원론 편찬", "region_id": "WEST", "category_id": "SCIENCE", "importance": "A", "year_start": -300, "year_end": -275, "summary": "공리와 정리를 바탕으로 유클리드 기하학 체계를 완성함.", "historical_significance": "2천 년간 서양 수학 교육과 논리적 사고의 표준 교과서."},
            {"id": "west-bc3-colossus-rhodes", "title": "로도스의 거상 완성", "region_id": "WEST", "category_id": "ART_CULTURE", "importance": "B", "year_start": -280, "year_end": -280, "summary": "로도스섬 입구에 세워진 33m 높이의 태양신 헬리오스 청동 거상.", "historical_significance": "헬레니즘 청동 조각 기술의 기념비적 걸작."},
            {"id": "west-bc3-stoicism-zeno", "title": "제논의 스토아 철학 창시", "region_id": "WEST", "category_id": "RELIGION", "importance": "B", "year_start": -300, "year_end": -260, "summary": "아테네 채색 주랑에서 이성(로고스)과 금욕, 평정심(아파테이아)을 가르침.", "historical_significance": "로마 제국 지식인들의 핵심 통치·윤리 철학으로 발전."},
            {"id": "west-bc3-epicureanism", "title": "에피쿠로스의 쾌락주의 철학", "region_id": "WEST", "category_id": "RELIGION", "importance": "B", "year_start": -300, "year_end": -270, "summary": "마음의 동요가 없는 정신적 평정(아타락시아)과 원자론적 자연관 제시.", "historical_significance": "근대 유물론과 자유주의 철학의 원류."},
            {"id": "west-bc3-scipio-africanus", "title": "스키피오 아프리카누스의 전술 혁신", "region_id": "WEST", "category_id": "POLITICS", "importance": "C", "year_start": -202, "year_end": -202, "summary": "자마 전투에서 한니발의 전투 코끼리를 무력화하고 배후 기병 기습으로 카르타고 굴복.", "historical_significance": "로마 지휘관의 지략과 전술적 유연성을 입증."},

            # CHINA
            {"id": "china-bc3-qin-unification", "title": "진시황의 중국 천하 통일", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -221, "year_end": -221, "summary": "진나라 영정이 6국을 모두 멸망시키고 최초의 중앙집권 통일 황제국을 세움.", "historical_significance": "2천 년간 이어질 중국 제국 통치 구조의 기틀 확립."},
            {"id": "china-bc3-standardization", "title": "도량형·문자·화폐·차궤의 표준화", "region_id": "CHINA", "category_id": "INSTITUTION", "importance": "A", "year_start": -221, "year_end": -210, "summary": "소전체 문자, 반량전, 통일 도량형을 전국에 강제하여 국가 단일화 완성.", "historical_significance": "동일한 문화와 경제권을 형성하여 중국의 단일 정체성 형성."},
            {"id": "china-bc3-great-wall", "title": "만리장성 연결 축조", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -215, "year_end": -210, "summary": "몽염 장군을 파견해 흉노를 격퇴하고 기존 전국 6국의 성벽을 연결하여 거대 장성을 완공.", "historical_significance": "농경 문명과 북방 유목 문명의 경계선을 확정."},
            {"id": "china-bc3-burning-books", "title": "분서갱유(焚書坑儒)", "region_id": "CHINA", "category_id": "ART_CULTURE", "importance": "A", "year_start": -213, "year_end": -212, "summary": "이사(李斯)의 건의로 민간의 사상 서적을 불태우고 비판 유학자들을 생매장함.", "historical_significance": "극단적 사상 통제와 법가 독재의 상징적 사건."},
            {"id": "china-bc3-chen-sheng-wu-guang", "title": "진승·오광의 난", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -209, "year_end": -208, "summary": "'왕후장상의 씨가 따로 있는가'를 외치며 일어난 중국 최초의 대규모 농민 봉기.", "historical_significance": "진나라 붕괴의 도화선이자 신분 해방 의식의 효시."},
            {"id": "china-bc3-chu-han-contention", "title": "초한전쟁과 한나라 건국", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -206, "year_end": -202, "summary": "항우와 유방의 패권 쟁탈전 끝에 해하 전투에서 유방이 승리하여 한나라를 건국함.", "historical_significance": "400년 한나라 번영과 '한족(漢族)' 문화권 형성의 출발점."},
            {"id": "china-bc3-xunzi", "title": "순자의 성악설과 예치 사상", "region_id": "CHINA", "category_id": "RELIGION", "importance": "B", "year_start": -298, "year_end": -238, "summary": "인간의 본성은 악하므로 인위적인 배움과 예(禮)로써 교화해야 한다고 주장.", "historical_significance": "이사, 한비자 등 법가 사상가들을 배출한 현실주의 유학."},
            {"id": "china-bc3-han-feizi", "title": "한비자의 법가 사상 집대성", "region_id": "CHINA", "category_id": "INSTITUTION", "importance": "B", "year_start": -280, "year_end": -233, "summary": "법(法), 술(術), 세(勢)를 결합하여 군주 전제 통치의 이론을 완성함.", "historical_significance": "진시황의 통치 철학이자 중국 제국 통치술의 뼈대."},
            {"id": "china-bc3-dujiangyan", "title": "이빙의 도강언 수리 시설", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "B", "year_start": -256, "year_end": -256, "summary": "촉나라 민강에 댐 없이 물길을 나누는 자연 친화적 수리시설 축조.", "historical_significance": "사천 분지를 '천부지국(풍요의 땅)'으로 탈바꿈시킴."},
            {"id": "china-bc3-terracotta", "title": "진시황릉 병마용갱 조성", "region_id": "CHINA", "category_id": "ART_CULTURE", "importance": "C", "year_start": -246, "year_end": -208, "summary": "실물 크기의 정교한 도용 군단 수천 점을 지하 궁전에 매장.", "historical_significance": "진나라의 군사 편제와 놀라운 사실주의 조각 예술 증명."},

            # KOREA
            {"id": "korea-bc3-yan-invasion", "title": "연나라 진개의 침략과 만번한 경계", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -280, "year_end": -280, "summary": "연나라 장수 진개가 고조선 서방 2천여 리를 침략하여 만번한을 경계로 삼음.", "historical_significance": "고조선의 중심지가 요하 유역에서 평양 대동강 유역으로 이동하는 계기."},
            {"id": "korea-bc3-buwang-junwang", "title": "고조선 부왕·준왕의 왕권 강화", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -250, "year_end": -201, "summary": "부왕과 그의 아들 준왕으로 이어지는 확고한 왕위 부자상속제와 관직 체계 확립.", "historical_significance": "고조선이 중앙집권적 고대 군주국가로 체제를 정비했음을 입증."},
            {"id": "korea-bc3-iron-expansion", "title": "철기 농기구의 전국적 보급과 대량 생산", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "B", "year_start": -250, "year_end": -201, "summary": "주조 철부(쇠도끼), 철겸(낫), 괭이 등이 대량 생산되어 농업 생산력 비약.", "historical_significance": "청동기가 제기(祭器)로 물러나고 철기가 실용 도구로 완전 정착."},
            {"id": "korea-bc3-jin-state", "title": "한반도 남부 진국(辰國)의 대두", "region_id": "KOREA", "category_id": "POLITICS", "importance": "B", "year_start": -250, "year_end": -201, "summary": "한반도 남부 지역에 삼한의 모태가 되는 정치 연맹체 진국이 출현함.", "historical_significance": "고조선과 함께 한반도 남북의 양대 정치 축 형성."},
            {"id": "korea-bc3-refugees", "title": "중국 전란민의 고조선 대규모 망명 유입", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "B", "year_start": -221, "year_end": -201, "summary": "진나라의 통일 전쟁과 초한전쟁의 전란을 피해 연·제 유민들이 고조선 서부로 망명.", "historical_significance": "선진 철기 기술과 제련술이 고조선에 급속도로 유입되는 계기."},
            {"id": "korea-bc3-eight-prohibitions", "title": "고조선 범금 8조의 사유재산·신분 질서", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "B", "year_start": -250, "year_end": -201, "summary": "살인, 상해, 절도 등을 처벌하는 8조의 법을 통해 생명·사유재산·노비 신분 보장.", "historical_significance": "고조선 사회의 성숙한 법률과 계급 사회 구조를 반영."},
            {"id": "korea-bc3-black-pottery", "title": "흑색마제토기(검은간토기)의 성행", "region_id": "KOREA", "category_id": "ART_CULTURE", "importance": "C", "year_start": -300, "year_end": -201, "summary": "표면을 곱게 문질러 광택을 낸 정교한 흑색 토기가 지배층 무덤에 부장됨.", "historical_significance": "고급 토기 제작 기술과 지배층의 미적 취향 반영."},
            {"id": "korea-bc3-mould-cast", "title": "평양·영암 등지 활석제 거푸집 주조", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "C", "year_start": -280, "year_end": -201, "summary": "세형동검, 동과(창)를 정밀하게 대량 생산하는 활석 거푸집 공방 운영.", "historical_significance": "전문 장인 집단의 존재와 독자 생산 체계 완비."},
            {"id": "korea-bc3-wooden-tomb", "title": "목관묘(널무덤)의 보급", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "C", "year_start": -250, "year_end": -201, "summary": "고인돌 대신 나무 널을 땅에 묻는 널무덤이 주요 묘제로 확산됨.", "historical_significance": "철기 문화의 보급과 묘제 양식의 일대 전환."},
            {"id": "korea-bc3-furnace", "title": "원초적 제철로와 단야구 발전", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "C", "year_start": -230, "year_end": -201, "summary": "사철과 철광석을 제련하여 철을 추출하는 초기 용해로 가동.", "historical_significance": "철기 수입국에서 자체 제철 생산국으로의 진화 시작."}
        ]
    },

    # --------------------------------------------------------------------------
    # 3. BC 2nd Century (BC 200 ~ BC 101)
    # --------------------------------------------------------------------------
    {
        "century_id": "bc_02th_century",
        "century_label": "기원전 2세기 (BC 200 ~ BC 101)",
        "period": {"yearStart": -200, "yearEnd": -101},
        "events": [
            # WEST
            {"id": "west-bc2-carthage-destruction", "title": "제3차 포에니 전쟁과 카르타고 파괴", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -149, "year_end": -146, "summary": "로마가 카르타고를 완전히 포위하여 함락하고 도시를 철저히 파괴함.", "historical_significance": "서지중해의 라이벌 카르타고 소멸 및 아프리카 속주 설치."},
            {"id": "west-bc2-corinth-conquest", "title": "로마의 코린토스 파괴와 그리스 정복", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -146, "year_end": -146, "summary": "로마군이 마케도니아와 아카이아 동맹을 제압하고 코린토스를 파괴함.", "historical_significance": "헬레니즘 그리스 세계 전체가 로마의 영토로 편입."},
            {"id": "west-bc2-gracchi-reforms", "title": "그라쿠스 형제의 토지 개혁 운동", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -133, "year_end": -121, "summary": "호민관 티베리우스와 가이우스 그라쿠스가 자영농 육성을 위한 농지법을 추진하다 원로원에 암살당함.", "historical_significance": "로마 공화정 말기 내란의 세기(벌족파 vs 평민파) 개막."},
            {"id": "west-bc2-marian-reforms", "title": "가이우스 마리우스의 군제 개혁", "region_id": "WEST", "category_id": "INSTITUTION", "importance": "A", "year_start": -107, "year_end": -107, "summary": "무산자 시민을 모병하여 국가가 무장을 지급하는 직업군인제와 코호트 편제 도입.", "historical_significance": "로마 군대의 사병화와 장군들의 군사 독재 발판 마련."},
            {"id": "west-bc2-polybius-history", "title": "폴리비오스의 역사 저술과 혼합정체론", "region_id": "WEST", "category_id": "SCIENCE", "importance": "B", "year_start": -150, "year_end": -120, "summary": "그리스 역사가 폴리비오스가 로마가 53년 만에 지중해를 제패한 원인을 혼합정체(집정관·원로원·민회)로 설명.", "historical_significance": "서양 헌정주의와 권력 분립 이론의 선구."},
            {"id": "west-bc2-hipparchus", "title": "히파르코스의 춘분점 세차운동 발견 및 별자리 지도", "region_id": "WEST", "category_id": "SCIENCE", "importance": "B", "year_start": -147, "year_end": -127, "summary": "천문학자 히파르코스가 춘분점의 세차운동을 발견하고 850개 항성의 등급을 분류.", "historical_significance": "고대 정밀 천문학 및 삼각법의 창시."},
            {"id": "west-bc2-maccabean-revolt", "title": "유대 마카베오 봉기와 하스몬 왕조 수립", "region_id": "WEST", "category_id": "RELIGION", "importance": "B", "year_start": -167, "year_end": -140, "summary": "셀레우코스 왕조의 헬레니즘 강요에 맞서 유다 마카베오가 성전을 탈환하고 독립 왕국 건국.", "historical_significance": "유대교 성전 정결 기념일 하누카(Hanukkah)의 기원."},
            {"id": "west-bc2-venus-de-milo", "title": "밀로의 비너스 조각상 제작", "region_id": "WEST", "category_id": "ART_CULTURE", "importance": "B", "year_start": -130, "year_end": -100, "summary": "에게해 밀로스섬에서 발견된 고전미와 헬레니즘 관능미가 결합된 대리석 아프로디테상.", "historical_significance": "서양 고전 미술의 황금비율을 상징하는 걸작."},
            {"id": "west-bc2-pergamon-library", "title": "페르가몬 왕국의 양피지(파치먼트) 발전", "region_id": "WEST", "category_id": "SCIENCE", "importance": "C", "year_start": -180, "year_end": -150, "summary": "이집트의 파피루스 수출 금지에 맞서 동물의 가죽을 가공한 양피지 도서 제작 기술 고도화.", "historical_significance": "책(코덱스) 형태의 발전과 지식 보존의 획기적 기여."},
            {"id": "west-bc2-cato-elder", "title": "대 카토의 전통 가치 수호와 '카르타고 멸망론'", "region_id": "WEST", "category_id": "POLITICS", "importance": "C", "year_start": -184, "year_end": -149, "summary": "엄격한 로마식 농경 도덕을 강조하며 모든 연설을 '카르타고는 파괴되어야 한다'로 끝맺음.", "historical_significance": "로마 보수주의와 라틴어 산문 문학의 창시자."},

            # CHINA
            {"id": "china-bc2-han-wudi", "title": "한무제의 통치와 대제국 전성기", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -141, "year_end": -87, "summary": "군현제 전국 강화, 흉노 정벌, 남월과 고조선 정복을 통해 한나라 영토를 극대화함.", "historical_significance": "동아시아 중화 제국의 표준 영토와 통치 시스템 완성."},
            {"id": "china-bc2-silk-road-zhang-qian", "title": "장건의 서역 개척과 실크로드 개통", "region_id": "CHINA", "category_id": "ECONOMY", "importance": "A", "year_start": -138, "year_end": -126, "summary": "한무제의 명으로 대월지를 찾아 서역을 탐험하여 중앙아시아와 지중해를 잇는 비단길 개척.", "historical_significance": "동서 유라시아 문명 교류의 대동맥 형성."},
            {"id": "china-bc2-sima-qian-shiji", "title": "사마천의 『사기(史記)』 저술", "region_id": "CHINA", "category_id": "ART_CULTURE", "importance": "A", "year_start": -109, "year_end": -91, "summary": "궁형의 치욕을 견디며 황제부터 서민까지 3천 년 역사를 기전체로 서술한 역사서 완성.", "historical_significance": "동양 역사학의 모범이자 불멸의 문학 걸작."},
            {"id": "china-bc2-confucian-orthodoxy", "title": "동중서의 건의와 유교의 국교화", "region_id": "CHINA", "category_id": "RELIGION", "importance": "A", "year_start": -134, "year_end": -134, "summary": "백가 사상을 배척하고 오경박사를 설치하여 유학을 국가 통치의 유일한 이념으로 공인.", "historical_significance": "2천 년간 동아시아 관료제와 과거 시험의 핵심 철학 확립."},
            {"id": "china-bc2-salt-iron-monopoly", "title": "소금·철·술의 국가 전매제(전매관) 실시", "region_id": "CHINA", "category_id": "ECONOMY", "importance": "B", "year_start": -119, "year_end": -115, "summary": "흉노 정벌로 고갈된 국가 재정을 확충하기 위해 상홍양의 주도로 염철 전매와 균수법·평준법 시행.", "historical_significance": "국가 주도 통제 경제 정책의 효시."},
            {"id": "china-bc2-rebellion-seven-states", "title": "오·초 칠국의 난 진압과 제후국 억압", "region_id": "CHINA", "category_id": "POLITICS", "importance": "B", "year_start": -154, "year_end": -154, "summary": "한경제 시기 주아부가 오왕 유비 등 제후왕들의 반란을 3개월 만에 평정함.", "historical_significance": "군국제의 제후국 세력을 무력화하고 완전한 군현제 일원화 달성."},
            {"id": "china-bc2-xiongnu-expedition", "title": "위청·곽거병의 흉노 대토벌과 하서주랑 장악", "region_id": "CHINA", "category_id": "POLITICS", "importance": "B", "year_start": -129, "year_end": -119, "summary": "기병 군단으로 막북 전투에서 흉노 선우를 격파하고 하서 4군(무위·장액·주천·돈황)을 설치.", "historical_significance": "서역 교역로의 안전 확보와 흉노의 분열 촉발."},
            {"id": "china-bc2-taichu-calendar", "title": "태초력(太初曆) 제정과 천문 역법 개혁", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "C", "year_start": -104, "year_end": -104, "summary": "사마천, 낙하홍 등이 1년을 365.2502일로 계산한 중국 최초의 완전한 역법 반포.", "historical_significance": "동양 음양력 체계의 기준 확립."},
            {"id": "china-bc2-huainanzi", "title": "회남자(淮南子) 편찬과 백과사전적 사상 융합", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "C", "year_start": -139, "year_end": -139, "summary": "회남왕 유안이 빈객들을 모아 도가, 유가, 음양가, 천문지리를 융합한 저작 편찬.", "historical_significance": "한대 초기 황로사상과 자연학의 집대성."},
            {"id": "china-bc2-nanling-conquest", "title": "남월(南越) 정복과 9군 설치", "region_id": "CHINA", "category_id": "POLITICS", "importance": "C", "year_start": -111, "year_end": -111, "summary": "광둥과 베트남 북부의 남월국을 멸망시키고 남해군·교지군 등을 설치.", "historical_significance": "중국 남부 해양 교역로 장악."},

            # KOREA
            {"id": "korea-bc2-wiman-joseon", "title": "위만의 고조선 집권과 위만조선 성립", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -194, "year_end": -194, "summary": "연나라에서 망명한 위만이 상투를 틀고 조선인 복장으로 준왕을 몰아내고 왕검성에 집권.", "historical_significance": "철기 문화를 기반으로 한 고조선의 비약적 국력 신장."},
            {"id": "korea-bc2-gojoseon-han-war", "title": "고조선-한나라 전쟁과 왕검성 결사항전", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -109, "year_end": -108, "summary": "우거왕이 한무제의 5만 육해군을 맞아 1년간 왕검성에서 결사 항전함.", "historical_significance": "고대 동북아의 패권을 두고 벌어진 최고 수준의 국제 대전쟁."},
            {"id": "korea-bc2-fall-of-gojoseon", "title": "고조선 멸망과 한사군 설치", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -108, "year_end": -108, "summary": "지배층 내부 분열로 왕검성이 함락되고 낙랑, 임둔, 현도, 진번 4군이 설치됨.", "historical_significance": "고조선 해체 후 부여, 고구려, 옥저, 동예, 삼한의 여러 소국으로 분화 발전."},
            {"id": "korea-bc2-transit-trade", "title": "위만조선의 중계무역 독점", "region_id": "KOREA", "category_id": "ECONOMY", "importance": "B", "year_start": -150, "year_end": -109, "summary": "한반도 남부 진국과 중국 한나라 사이의 무역을 독점하여 막대한 경제적 부 축적.", "historical_significance": "한무제가 고조선을 침공하게 된 핵심 경제적 원인."},
            {"id": "korea-bc2-iron-weapons-mass", "title": "철제 장검·투구·갑옷의 보급", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "B", "year_start": -150, "year_end": -101, "summary": "단련강 기술로 제작된 긴 철검과 철제 창, 판갑이 군대에 광범위하게 보급됨.", "historical_significance": "고조선군의 막강한 군사력과 한나라 침략군 격퇴의 무기적 기반."},
            {"id": "korea-bc2-samhan-chiefdoms", "title": "삼한(마한·진한·변한) 78개 소국의 형성", "region_id": "KOREA", "category_id": "POLITICS", "importance": "B", "year_start": -150, "year_end": -101, "summary": "준왕의 남천 이후 한반도 중남부에 신지, 읍차 등 군장이 다스리는 연맹 소국들이 분립.", "historical_significance": "백제, 신라, 가야로 발전하는 모태."},
            {"id": "korea-bc2-sodo-heaven-lord", "title": "삼한의 소도(蘇塗)와 천군(天君) 신앙", "region_id": "KOREA", "category_id": "RELIGION", "importance": "B", "year_start": -150, "year_end": -101, "summary": "정치 군장과 분리된 종교 지도자 천군이 신성 구역 소도에서 방울과 북을 치며 제사.", "historical_significance": "제정분리 사회로의 진화와 솟대 신앙의 기원."},
            {"id": "korea-bc2-iron-ingot-currency", "title": "변한·진한의 덩이쇠(철정) 화폐 사용", "region_id": "KOREA", "category_id": "ECONOMY", "importance": "C", "year_start": -120, "year_end": -101, "summary": "낙동강 유역의 풍부한 철을 일정한 규격의 덩이쇠로 만들어 화폐 및 무역 교환 매개물로 사용.", "historical_significance": "낙랑, 대방, 왜를 잇는 국제 철 무역망 가동."},
            {"id": "korea-bc2-daho-ri-brush", "title": "창원 다호리 유적의 붓과 문자 사용", "region_id": "KOREA", "category_id": "ART_CULTURE", "importance": "C", "year_start": -100, "year_end": -100, "summary": "다호리 목관묘에서 출토된 옻칠 붓 5자루와 중국 한나라 오수전, 철기 유물.", "historical_significance": "기원전 1~2세기 한반도 남부에서 한자를 이용한 문서 행정이 시작되었음을 실증."},
            {"id": "korea-bc2-goguryeo-hyeon", "title": "현도군 공격과 고구려 초기 나부 세력 성장", "region_id": "KOREA", "category_id": "POLITICS", "importance": "C", "year_start": -107, "year_end": -101, "summary": "압록강 유역의 토착 세력들이 한나라 현도군을 공격하여 치소를 서쪽으로 밀어냄.", "historical_significance": "고구려 건국 주도 세력의 급속한 성장."}
        ]
    },

    # --------------------------------------------------------------------------
    # 4. BC 1st Century (BC 100 ~ BC 1)
    # --------------------------------------------------------------------------
    {
        "century_id": "bc_01th_century",
        "century_label": "기원전 1세기 (BC 100 ~ BC 1)",
        "period": {"yearStart": -100, "yearEnd": -1},
        "events": [
            # WEST
            {"id": "west-bc1-caesar-gaul", "title": "율리우스 카이사르의 갈리아 원정", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -58, "year_end": -50, "summary": "카이사르가 갈리아 전역을 정복하고 알레시아 공방전에서 베르킨게토리크스를 굴복시킴.", "historical_significance": "프랑스·서유럽이 로마 문명권에 완전 편입되는 계기."},
            {"id": "west-bc1-rubicon-civil-war", "title": "카이사르의 루비콘강 도하와 로마 내전", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -49, "year_end": -45, "summary": "'주사위는 던져졌다'를 외치며 루비콘강을 건너 폼페이우스와 원로원파를 파르살로스에서 격파.", "historical_significance": "500년 로마 공화정의 종말과 1인 독재관 체제 수립."},
            {"id": "west-bc1-ides-of-march", "title": "카이사르 암살 (3월 15일의 변)", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -44, "year_end": -44, "summary": "브루투스와 카시우스 등 공화파 원로원 의원들이 폼페이우스 극장에서 카이사르를 암살함.", "historical_significance": "공화정 복고 실패와 옥타비아누스·안토니우스의 후계 내전 촉발."},
            {"id": "west-bc1-actium-battle", "title": "악티움 해전과 로마 제정 성립", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": -31, "year_end": -27, "summary": "옥타비아누스가 안토니우스와 클레오파트라 연합 함대를 격파하고 아우구스투스 황제로 등극.", "historical_significance": "로마 제국(팍스 로마나)의 공식 출범."},
            {"id": "west-bc1-julian-calendar", "title": "율리우스력(태양력) 도입", "region_id": "WEST", "category_id": "SCIENCE", "importance": "A", "year_start": -45, "year_end": -45, "summary": "알렉산드리아 천문학자 소시게네스의 자문을 받아 1년을 365.25일로 정한 태양력 반포.", "historical_significance": "현대 그레고리력의 모태가 된 서양 표준 달력."},
            {"id": "west-bc1-cicero-eloquence", "title": "키케로의 수사학·철학 저술과 공화정 수호", "region_id": "WEST", "category_id": "ART_CULTURE", "importance": "B", "year_start": -70, "year_end": -43, "summary": "카틸리나 탄핵 등 명연설과 『의무론』, 『국가론』을 통해 라틴 문학의 황금기를 엶.", "historical_significance": "서양 인문주의와 자연법 사상의 원천."},
            {"id": "west-bc1-spartacus-revolt", "title": "스파르타쿠스 검투사 노예 봉기", "region_id": "WEST", "category_id": "POLITICS", "importance": "B", "year_start": -73, "year_end": -71, "summary": "카푸아 검투사 스파르타쿠스가 이끄는 10만 노예군이 로마 군단에 맞서 이탈리아를 뒤흔듦.", "historical_significance": "고대 노예제 사회의 구조적 모순을 폭로한 자유 투쟁의 상징."},
            {"id": "west-bc1-virgil-aeneid", "title": "베르길리우스의 서사시 『아이네이스』", "region_id": "WEST", "category_id": "ART_CULTURE", "importance": "B", "year_start": -29, "year_end": -19, "summary": "트로이 영웅 아이네아스가 이탈리아로 건너와 로마를 건국하는 로마의 민족 대서사시.", "historical_significance": "아우구스투스 황제 통치의 정당성을 부여한 라틴 문학 최고 걸작."},
            {"id": "west-bc1-vitruvius-architecture", "title": "비트루비우스의 『건축십서(De Architectura)』", "region_id": "WEST", "category_id": "SCIENCE", "importance": "C", "year_start": -30, "year_end": -20, "summary": "건축의 3대 요소로 구조적 안정(Firmitas), 기능성(Utilitas), 미(Venustas)를 제시.", "historical_significance": "르네상스 건축(레오나르도 다 빈치의 비트루비우스 인간)의 핵심 교본."},
            {"id": "west-bc1-lucretius-nature", "title": "루크레티우스의 『사물의 본성에 관하여』", "region_id": "WEST", "category_id": "SCIENCE", "importance": "C", "year_start": -60, "year_end": -55, "summary": "신화적 공포를 배격하고 데모크리토스와 에피쿠로스의 고대 원자론을 시적 언어로 해설.", "historical_significance": "근대 과학 혁명기 원자론 부활의 불씨."},

            # CHINA
            {"id": "china-bc1-salt-iron-debate", "title": "염철회의(鹽鐵會議)와 염철론 편찬", "region_id": "CHINA", "category_id": "INSTITUTION", "importance": "A", "year_start": -81, "year_end": -81, "summary": "한소제 시기 관료파(상홍양)와 민간 유학자들이 국가 전매제와 시장 경제를 두고 대토론.", "historical_significance": "국가 개입주의와 유교적 자유방임주의 간의 동양 최초 경제 정책 논쟁."},
            {"id": "china-bc1-zhaodi-xuandi-renaissance", "title": "소제·선제의 소선중흥(昭宣中興)", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -87, "year_end": -49, "summary": "곽광의 보필과 선제의 유법양용(儒法兩用) 통치로 한무제 시기 피폐해진 민생을 회복함.", "historical_significance": "한나라의 정치·사회적 안정과 태평성대 구가."},
            {"id": "china-bc1-western-regions-protectorate", "title": "서역도호부(西域都護府) 설치", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -60, "year_end": -60, "summary": "한선제가 정길을 초대 서역도호로 임명하여 타림 분지 36개 도시국가를 직접 관할.", "historical_significance": "신장(서역) 지역이 중국 제국의 행정 통제 하에 편입된 기원."},
            {"id": "china-bc1-xiongnu-submission", "title": "흉노 호한야 선우의 한나라 입조와 화친", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": -51, "year_end": -33, "summary": "흉노의 호한야 선우가 장안을 방문해 한나라에 칭신하고 왕소군과의 화번공주 혼인 성사.", "historical_significance": "한-흉노 150년 전쟁 종식과 장기 평화 구축."},
            {"id": "china-bc1-wang-mang-rise", "title": "왕망의 권력 장악과 신(新) 왕조 준비", "region_id": "CHINA", "category_id": "POLITICS", "importance": "B", "year_start": -8, "year_end": -1, "summary": "외척 왕망이 유교적 성인 행세를 하며 대사마에 오르고 왕실을 찬탈할 기반 구축.", "historical_significance": "전한 말기 호족 발흥과 왕조 교체의 서막."},
            {"id": "china-bc1-sima-xiangru-fu", "title": "사마상여의 한부(漢賦) 문학 절정", "region_id": "CHINA", "category_id": "ART_CULTURE", "importance": "B", "year_start": -70, "year_end": -40, "summary": "자허부, 상림부 등 제국의 웅장함과 황제의 권위를 화려한 수사로 노래한 산문시 발전.", "historical_significance": "한대 고전문학의 대표 장르 확립."},
            {"id": "china-bc1-jiuzhang-suanshu", "title": "『구장산술(九章算術)』 기초 형성", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "B", "year_start": -100, "year_end": -1, "summary": "분수 계산, 연립방정식(방정론), 피타고라스 정리(구고현), 면적·부피 계산법 집대성.", "historical_significance": "동양 수학의 체계적 기틀을 세운 불후의 고전."},
            {"id": "china-bc1-shiyuan-reign", "title": "한대 호족(豪族) 세력의 대토지 겸병 심화", "region_id": "CHINA", "category_id": "INSTITUTION", "importance": "C", "year_start": -80, "year_end": -1, "summary": "지방 유력 가문들이 장원을 형성하고 농민을 소작농·노비로 전락시킴.", "historical_significance": "후한 및 위진남북조 시대를 지배할 호족 계층의 태동."},
            {"id": "china-bc1-liu-xiang-bibliography", "title": "유향의 『별록』과 황실 장서 분류", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "C", "year_start": -26, "year_end": -10, "summary": "황실 도서관의 경서, 제자백가 서적을 교정하고 중국 최초의 도서 분류 목록 편찬.", "historical_significance": "동양 서지학과 도서관학의 효시."},
            {"id": "china-bc1-silk-monopoly-trade", "title": "비단·칠기 공방의 관영 생산 체제", "region_id": "CHINA", "category_id": "ECONOMY", "importance": "C", "year_start": -50, "year_end": -1, "summary": "장안과 낙양의 관영 공방에서 최고급 견직물과 정교한 칠기를 제작해 서역에 수출.", "historical_significance": "실크로드를 통한 글로벌 사치품 교역의 주도권 확보."},

            # KOREA
            {"id": "korea-bc1-silla-founding", "title": "신라 건국 (박혁거세의 서라벌 건국)", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -57, "year_end": -57, "summary": "경주 분지 6촌 촌장들의 추대로 박혁거세가 거서간으로 즉위하여 사로국(신라)을 개창함.", "historical_significance": "천년 왕조 신라의 출발점이자 삼국시대의 서막."},
            {"id": "korea-bc1-goguryeo-founding", "title": "고구려 건국 (동명성왕 주몽)", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -37, "year_end": -37, "summary": "부여에서 남하한 주몽이 졸본에 도읍을 정하고 압록강 지류 일대를 통합하여 고구려를 건국.", "historical_significance": "동북아의 패자로 군림할 강력한 기마 군사 국가의 출범."},
            {"id": "korea-bc1-baekje-founding", "title": "백제 건국 (온조왕의 위례성 건국)", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -18, "year_end": -18, "summary": "주몽의 아들 온조가 남하하여 한강 유역 한남 위례성에 도읍하고 십제(백제)를 건국함.", "historical_significance": "비옥한 한강 유역을 장악한 해상 해양 강국의 태동."},
            {"id": "korea-bc1-buyeo-confederacy", "title": "부여 5가(마가·우가·저가·구가) 연맹 왕국의 발전", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": -100, "year_end": -1, "summary": "송화강 유역의 평야 지대에서 가축 이름을 딴 4출도를 다스리는 5부족 연맹체 부여 번영.", "historical_significance": "고구려와 백제의 지배층이 모두 부여 계통임을 표방한 한민족 고대사의 주요 뿌리."},
            {"id": "korea-bc1-dongye-cheongun", "title": "동예의 무천(舞天)과 책화(責禍) 풍습", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "B", "year_start": -100, "year_end": -1, "summary": "10월 제천 행사 무천을 열고, 다른 부족의 경계를 침범하면 노비나 소·말로 변상하는 책화 엄수.", "historical_significance": "초기 읍락 사회의 독자적 경계 질서와 제천 의례 증명."},
            {"id": "korea-bc1-okjeo-minmyeoneuri", "title": "옥저의 민며느리제와 골장제(가족공동묘)", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "B", "year_start": -100, "year_end": -1, "summary": "어린 신부를 미리 데려와 키운 후 혼인시키는 매매혼 풍습과 거대한 목곽에 뼈를 모으는 골장제.", "historical_significance": "함경도 동해안 초기 부족 국가의 독특한 가족·사회 구조."},
            {"id": "korea-bc1-iron-armors-weapons", "title": "고구려·신라 초기 비늘갑옷(찰갑)과 철제 무기", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "B", "year_start": -50, "year_end": -1, "summary": "작은 철판을 가죽 끈으로 엮은 찰갑과 강력한 복합궁(맥궁)을 장비한 기병 양성.", "historical_significance": "주변 읍락 정복과 고대 국가 성장의 군사적 원동력."},
            {"id": "korea-bc1-lelang-trade", "title": "낙랑군과의 교역 및 칠기·옥기 문화 유입", "region_id": "KOREA", "category_id": "ECONOMY", "importance": "C", "year_start": -100, "year_end": -1, "summary": "평양의 낙랑군을 매개로 한나라의 칠기, 거울, 비단과 삼한의 철, 곡물 교환.", "historical_significance": "선진 문화 수용과 토착 지배층의 위세품 축적."},
            {"id": "korea-bc1-stone-mound-tomb", "title": "고구려 적석총(돌무지무덤)의 축조", "region_id": "KOREA", "category_id": "ART_CULTURE", "importance": "C", "year_start": -37, "year_end": -1, "summary": "압록강과 독로강 유역에 강돌을 계단식으로 쌓아 올린 웅장한 지배자 무덤 축조.", "historical_significance": "고구려 초기 지배 권력의 성장과 독자적 석조 건축 기술."},
            {"id": "korea-bc1-eupcha-sinji", "title": "삼한 지배층의 신지·견지·읍차 칭호 분화", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "C", "year_start": -50, "year_end": -1, "summary": "세력 크기에 따라 군장들의 칭호가 차등화되며 계층화 진전.", "historical_significance": "소국 연맹에서 연맹 왕국으로 발전하는 중간 단계."}
        ]
    },

    # --------------------------------------------------------------------------
    # 5. AD 1st Century (AD 1 ~ AD 100)
    # --------------------------------------------------------------------------
    {
        "century_id": "ce_01th_century",
        "century_label": "서기 1세기 (AD 1 ~ AD 100)",
        "period": {"yearStart": 1, "yearEnd": 100},
        "events": [
            # WEST
            {"id": "west-ce1-jesus-crucifixion", "title": "예수 그리스도의 사역과 기독교의 탄생", "region_id": "WEST", "category_id": "RELIGION", "importance": "A", "year_start": 30, "year_end": 33, "summary": "예수가 하나님 나라와 사랑의 복음을 전파하고 십자가에 처형된 후 사도들을 통해 기독교가 전파됨.", "historical_significance": "서구 문명과 세계 윤리관을 근본적으로 뒤바꾼 기독교의 시작."},
            {"id": "west-ce1-paul-missionary", "title": "사도 바울의 지중해 선교 여행", "region_id": "WEST", "category_id": "RELIGION", "importance": "A", "year_start": 46, "year_end": 64, "summary": "바울이 소아시아, 그리스, 로마를 순회하며 이방인에게 기독교를 전파하고 서신서(바울 서신)를 작성.", "historical_significance": "유대교 분파를 넘어 보편적 세계 종교로 기독교를 확립."},
            {"id": "west-ce1-vesuvius-pompeii", "title": "베수비오 화산 폭발과 폼페이의 파멸", "region_id": "WEST", "category_id": "CLIMATE_ENVIRONMENT", "importance": "A", "year_start": 79, "year_end": 79, "summary": "베수비오 화산이 대폭발하여 나폴리만의 번영하던 로마 도시 폼페이와 헤르쿨라네움이 화산재에 매몰됨.", "historical_significance": "로마 제국의 일상생활, 벽화, 건축 유적이 생생하게 보존된 고고학의 보물창고."},
            {"id": "west-ce1-colosseum-built", "title": "로마 콜로세움(플라비우스 원형극장) 완공", "region_id": "WEST", "category_id": "ART_CULTURE", "importance": "A", "year_start": 70, "year_end": 80, "summary": "베스파시아누스 황제가 착공하고 티투스 황제가 완공한 5만 명 수용 규모의 거대 원형경기장.", "historical_significance": "로마 콘크리트 아치 공학의 최고 걸작이자 제국의 위용 과시."},
            {"id": "west-ce1-teutoburg-forest", "title": "토이토부르크 숲 전투 (바루스 패전)", "region_id": "WEST", "category_id": "POLITICS", "importance": "A", "year_start": 9, "year_end": 9, "summary": "아르미니우스가 이끄는 게르만 연합군이 바루스의 로마 3개 군단을 숲속에서 전멸시킴.", "historical_significance": "로마의 엘베강 진출 좌절 및 라인강을 로마-게르마니아의 영구 국경선으로 확정."},
            {"id": "west-ce1-claudius-britain", "title": "클라우디우스 황제의 브리타니아 정복", "region_id": "WEST", "category_id": "POLITICS", "importance": "B", "year_start": 43, "year_end": 43, "summary": "로마군이 브리튼섬을 침공하여 론디니움(런던)을 건설하고 브리타니아 속주를 설치.", "historical_significance": "영국 브리튼 지역이 로마 문명권에 편입."},
            {"id": "west-ce1-jerusalem-siege", "title": "제1차 유대-로마 전쟁과 예루살렘 성전 파괴", "region_id": "WEST", "category_id": "POLITICS", "importance": "B", "year_start": 66, "year_end": 70, "summary": "티투스 장군이 예루살렘을 함락하고 제2성전을 철저히 파괴함(통곡의 벽만 잔존).", "historical_significance": "유대인들의 2천 년 디아스포라(이산)와 랍비 유대교 전환."},
            {"id": "west-ce1-nero-fire-persecution", "title": "로마 대화재와 네로 황제의 최초 기독교 박해", "region_id": "WEST", "category_id": "POLITICS", "importance": "B", "year_start": 64, "year_end": 64, "summary": "로마 시가지에 대화재가 발생하자 네로가 기독교인들에게 방화 혐의를 씌워 베드로, 바울을 순교시킴.", "historical_significance": "로마 제국의 조직적 기독교 박해의 시작."},
            {"id": "west-ce1-pliny-elder", "title": "대 플리니우스의 『박물지(Naturalis Historia)』 편찬", "region_id": "WEST", "category_id": "SCIENCE", "importance": "C", "year_start": 77, "year_end": 77, "summary": "천문, 지리, 동물, 식물, 광물, 의학을 망라한 37권의 서양 최초 백과사전.", "historical_significance": "중세와 르네상스 자연과학의 핵심 표준 레퍼런스."},
            {"id": "west-ce1-seneca-stoic", "title": "세네카의 스토아 철학과 도덕 서간", "region_id": "WEST", "category_id": "RELIGION", "importance": "C", "year_start": 40, "year_end": 65, "summary": "네로의 스승이자 정치가인 세네카가 『인생의 짧음에 관하여』 등 후기 스토아 철학 저술.", "historical_significance": "인간의 도덕적 품격과 운명에 대한 담담한 수용 강조."},

            # CHINA
            {"id": "china-ce1-wang-mang-xin", "title": "왕망의 신(新) 왕조 건국과 왕전문 개혁", "region_id": "CHINA", "category_id": "INSTITUTION", "importance": "A", "year_start": 9, "year_end": 23, "summary": "주례(周禮)를 모방하여 토지 국유화(왕전제), 노비 매매 금지, 오균육관제를 추진했으나 대혼란 초래.", "historical_significance": "이상주의적 복고 개혁의 실패와 농민 봉기(적미·녹림의 난)."},
            {"id": "china-ce1-eastern-han-founding", "title": "광무제 유수의 후한(後漢) 건국과 광무중흥", "region_id": "CHINA", "category_id": "POLITICS", "importance": "A", "year_start": 25, "year_end": 57, "summary": "한나라 종실 유수가 낙양에 도읍하고 군웅들을 평정하여 한 왕조를 재건함.", "historical_significance": "후한 200년 번영의 개막과 유학 중심 통치 질서 정착."},
            {"id": "china-ce1-cai-lun-paper", "title": "채륜의 실용 제지술 완성 및 보급", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "A", "year_start": 105, "year_end": 105, "summary": "나무껍질, 마, 넝마, 어망을 이용해 가볍고 질긴 '채후지(蔡侯紙)'를 제조하여 대량 생산 성공.", "historical_significance": "세계 문자 문명과 지식 전파에 가장 위대한 혁신."},
            {"id": "china-ce1-buddhism-white-horse", "title": "명제의 백마사 창건과 불교 공식 전래", "region_id": "CHINA", "category_id": "RELIGION", "importance": "A", "year_start": 67, "year_end": 68, "summary": "한명제가 금인(金人) 꿈을 꾼 후 서역에서 가섭마등, 축법란을 모셔와 낙양에 최초의 사찰 백마사 건립.", "historical_significance": "불교가 중국 문화와 사상계에 공식적으로 뿌리내린 출발점."},
            {"id": "china-ce1-ban-gu-hanshu", "title": "반고의 『한서(漢書)』 편찬", "region_id": "CHINA", "category_id": "ART_CULTURE", "importance": "B", "year_start": 80, "year_end": 92, "summary": "서한 230년의 역사를 단대사(斷代史) 기전체 형식으로 정리한 정사(正史) 완성.", "historical_significance": "이후 역대 중국 왕조 정사 편찬의 절대적 표준 확립."},
            {"id": "china-ce1-ban-chao-silk-road", "title": "반초의 서역 36국 평정과 실크로드 재장악", "region_id": "CHINA", "category_id": "POLITICS", "importance": "B", "year_start": 73, "year_end": 97, "summary": "불입호혈 부득호자(호랑이 굴에 들어가지 않고 어찌 호랑이를 잡으랴)의 기개로 서역 50여 국 복속.", "historical_significance": "동서 무역로의 안전 확보 및 로마 제국과의 간접 접촉."},
            {"id": "china-ce1-wang-chong-lunheng", "title": "왕충의 『논형(論衡)』과 유물론적 회의주의", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "B", "year_start": 86, "year_end": 86, "summary": "당시 성행하던 참위설(도참)과 천인감응설을 비판하고 자연의 자발성과 경험적 사실을 옹호.", "historical_significance": "고대 동양의 독보적인 합리주의·무신론 철학."},
            {"id": "china-ce1-gan-ying-rome-mission", "title": "감영의 대진국(로마 제국) 파견 사절단", "region_id": "CHINA", "category_id": "POLITICS", "importance": "C", "year_start": 97, "year_end": 97, "summary": "반초의 부하 감영이 로마 제국(대진국)을 향해 페르시아만 해안까지 도달함.", "historical_significance": "고대 중국인이 지중해 세계에 가장 근접했던 공식 외교 탐험."},
            {"id": "china-ce1-ming-zhang-reign", "title": "명제·장제의 명장지치(明章之治)", "region_id": "CHINA", "category_id": "POLITICS", "importance": "C", "year_start": 57, "year_end": 88, "summary": "부세를 감면하고 형벌을 완화하며 태학을 장려하여 후한의 황금기 구가.", "historical_significance": "유교적 덕치주의의 모범적 통치기."},
            {"id": "china-ce1-iron-casting-hydraulic", "title": "두시의 수력 풀무(수배) 발명과 주철 혁신", "region_id": "CHINA", "category_id": "SCIENCE", "importance": "C", "year_start": 31, "year_end": 31, "summary": "남양태수 두시가 물의 힘으로 용광로에 바람을 불어넣는 수배를 만들어 철기 생산 극대화.", "historical_significance": "유럽보다 1천 년 이상 앞선 수력 야금 기술."},

            # KOREA
            {"id": "korea-ce1-taejo-goguryeo", "title": "고구려 태조대왕의 중앙집권적 영토 확장", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": 53, "year_end": 100, "summary": "계루부 고씨의 왕위 세습권을 확립하고 옥저, 동예를 복속하며 현도군·요동군을 공격.", "historical_significance": "5부 연맹체 고구려가 확고한 중앙집권 고대 왕국으로 도약."},
            {"id": "korea-ce1-baekje-daroo-expansion", "title": "백제 다루왕·기루왕의 영토 확장과 마한 압박", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": 28, "year_end": 100, "summary": "한강 유역에서 충청도 일대로 세력을 확장하며 마한 연맹체들을 복속시키기 시작.", "historical_significance": "백제가 한반도 중부의 패권 국가로 성장하는 기반 마련."},
            {"id": "korea-ce1-silla-talhae-yuri", "title": "신라 유리이사금의 6부 개편과 가배(추석) 풍습", "region_id": "KOREA", "category_id": "INSTITUTION", "importance": "A", "year_start": 24, "year_end": 57, "summary": "6촌을 6부로 개편하고 관등(17관등 기초)을 제정하였으며 두레 길쌈 놀이인 가배(추석) 장려.", "historical_significance": "신라의 국가 제도 정비와 민족 명절 한가위의 기원."},
            {"id": "korea-ce1-gaya-founding-suro", "title": "금관가야 건국 (김수로왕과 허황옥)", "region_id": "KOREA", "category_id": "POLITICS", "importance": "A", "year_start": 42, "year_end": 42, "summary": "김해 구지봉 설화와 함께 김수로왕이 가락국(금관가야)을 건국하고 인도 아유타국 공주 허황옥과 혼인.", "historical_significance": "가야 연맹의 맹주국 탄생과 고대 국제 해상 교역망 구축."},
            {"id": "korea-ce1-goguryeo-yurimyeong", "title": "고구려 유리명왕의 국내성(국내위나암성) 천도", "region_id": "KOREA", "category_id": "POLITICS", "importance": "B", "year_start": 3, "year_end": 3, "summary": "졸본에서 방어와 농경에 유리한 압록강변 국내성(통구 평야)으로 도읍을 옮김.", "historical_significance": "이후 400년간 고구려 제국의 심장부가 된 국내성 시대 개막."},
            {"id": "korea-ce1-silla-seok-clan", "title": "석탈해의 즉위와 박·석·김 3성 교립 체제", "region_id": "KOREA", "category_id": "POLITICS", "importance": "B", "year_start": 57, "year_end": 80, "summary": "용성국 출신 석탈해가 이사금으로 즉위하고 김알지 설화가 나타나며 3성 교립 왕권 형성.", "historical_significance": "신라 초기 연맹체 왕권의 다원적 발전 특성."},
            {"id": "korea-ce1-iron-export-gaya", "title": "가야·변한의 철 생산과 왜·낙랑 수출", "region_id": "KOREA", "category_id": "ECONOMY", "importance": "B", "year_start": 50, "year_end": 100, "summary": "김해·창원 일대 풍부한 철광석으로 덩이쇠를 대량 제련하여 낙랑과 왜에 수출.", "historical_significance": "고대 동아시아 철의 제국으로서 가야의 경제적 번영."},
            {"id": "korea-ce1-lelang-han-conflict", "title": "고구려의 낙랑군 살수(청천강) 방어선 침공", "region_id": "KOREA", "category_id": "POLITICS", "importance": "C", "year_start": 32, "year_end": 44, "summary": "호동왕자와 낙랑공주 설화의 배경 속에서 고구려가 낙랑군을 압박하여 살수 이북 통제.", "historical_significance": "한사군 축출을 향한 고구려의 끈질긴 남진 투쟁."},
            {"id": "korea-ce1-ondol-heating", "title": "고구려·백제 전통 온돌(구들) 난방의 발전", "region_id": "KOREA", "category_id": "SCIENCE", "importance": "C", "year_start": 1, "year_end": 100, "summary": "방바닥 아래 고래를 켜고 아궁이 불길로 바닥 전체를 데우는 쪽구들 난방 기술 발전.", "historical_significance": "한민족 고유의 독창적 주거 난방 문화 정착."},
            {"id": "korea-ce1-pottery-wheel", "title": "물레를 이용한 회청색 경질토기의 등장", "region_id": "KOREA", "category_id": "ART_CULTURE", "importance": "C", "year_start": 50, "year_end": 100, "summary": "회전 물레와 1000도 이상의 가마를 이용해 단단한 경질 도질토기 생산 시작.", "historical_significance": "토기 제작 기술의 획기적 도약과 삼국 토기 문화의 모태."}
        ]
    }
]

print("Block 1 Ready: 5 Centuries (BC 4C to AD 1C)")
