-- ChronoScope Seed Data SQL
BEGIN;

INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('gojoseon-founding', '고조선 성립 및 청동기 문화', 'Establishment of Gojoseon & Bronze Age', 'KOREA', '고조선', 'POLITICS', 'A', -2333, -108, 'approximate', '한반도 및 요동 일대에 성립된 한민족 최초의 고대 국가이자 청동기·철기 문화의 중심.', '동북아시아 독자적 청동기 문화(비파형동검, 탁자식 고인돌)를 발전시키며 고대 국가 체제로 성장함.', '신석기 농경 발달과 청동기 무기 보급으로 족장 사회 형성 및 연맹 왕국 발전.', '위만조선으로 이어져 한나라와 대립하다 기원전 108년 멸망 후 여러 소국(부여, 고구려, 옥저, 동예, 삼한)으로 분화.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('china-spring-autumn-warring', '춘추전국시대 및 제자백가 사상', 'Spring and Autumn & Warring States Period', 'CHINA', '중원', 'RELIGION', 'A', -770, -221, 'exact', '주나라 왕실이 쇠퇴하고 제후국들이 패권을 다투며 유학·도가·법가 등 제자백가 사상이 만개한 격변기.', '동아시아 사상과 국가 통치 철학(유가, 법가)의 기틀이 확립되었으며 철기 보급으로 농업과 군사가 비약적으로 발전.', '견융족 침입으로 주나라의 동천 이후 제후국 간 권력 투쟁 격화.', '진(秦)나라에 의한 최초의 중국 천하 통일로 이어짐.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('athens-democracy-philosophy', '그리스 아테네 민주정과 고전 철학', 'Athenian Democracy & Classical Philosophy', 'WEST', '그리스', 'POLITICS', 'A', -508, -322, 'exact', '클레이스테네스의 개혁으로 직접 민주주의가 수립되고, 소크라테스·플라톤·아리스토텔레스로 이어지는 서양 철학의 기초가 확립됨.', '서구 민주주의 정치 제도와 이성적 철학 탐구의 모태.', '솔론, 클레이스테네스 등의 개혁과 페르시아 전쟁 승리로 인한 시민 발언권 증대.', '펠로폰네소스 전쟁으로 쇠퇴 후 마케도니아 알렉산드로스 제국으로 흡수.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('alexander-hellenism', '알렉산드로스 제국과 헬레니즘 문화', 'Alexander''s Empire & Hellenism', 'WEST', '지중해/오리엔트', 'ART_CULTURE', 'A', -336, -323, 'exact', '알렉산드로스 대왕의 동방 원정으로 그리스 문화와 오리엔트 문화가 융합되어 헬레니즘 세계가 형성됨.', '동서 문화 교류를 촉진하고 이후 로마 문화와 간다라 불교 미술에 지대한 영향을 미침.', '마케도니아의 그리스 통일과 페르시아 정복 야망.', '알렉산드로스 사후 제국 분열 및 간다라 미술(동서 융합) 태동.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('qin-unification', '진시황의 중국 통일 및 군현제 확립', 'Qin Unification & Centralization', 'CHINA', '진(秦)', 'POLITICS', 'A', -221, -206, 'exact', '진나라 시황제가 전국 7웅을 병합하여 최초의 중앙집권적 통일 제국을 건립하고 도량형, 문자, 화폐를 통일함.', '봉건제를 폐지하고 군현제를 도입하여 이후 2천 년간 이어질 중국 제국 통치 시스템의 원형 구축.', '상앙의 변법을 통한 법가적 부국강병과 강력한 군사력.', '과도한 토목공사(만리장성, 아방궁)와 가혹한 형벌로 시황제 사후 15년 만에 멸망하고 한나라로 교체.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('roman-empire-pax-romana', '로마 제정 성립 및 팍스 로마나', 'Pax Romana & Rise of the Roman Empire', 'WEST', '로마', 'POLITICS', 'A', -27, 180, 'exact', '아우구스투스의 제정 수립 이후 지중해 전역에 걸친 약 200년간의 로마 평화기와 도로망·법률 번영.', '로마법, 건축 토목 기술, 도로망을 통해 서구 문명의 법적·공학적 기반 마련.', '카이사르 암살 후 삼두정치 종식과 옥타비아누스의 권력 장악.', '군인 황제 시대의 혼란과 3세기 위기로 이어짐.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('roman-warm-period', '로마 온난기 (Roman Warm Period)', 'Roman Warm Period', 'CLIMATE', '유럽 및 북반구', 'CLIMATE_ENVIRONMENT', 'B', -250, 400, 'approximate', '지중해와 유럽, 아시아 일대에 걸쳐 온화하고 강우량이 풍부했던 시기로, 농업 생산성과 문명 팽창을 뒷받침함.', '로마 제국과 동한(東漢)의 번영을 가능하게 했던 핵심적 자연환경 요인.', '태양 복사 활동의 극대화와 화산 활동 감소.', '5세기 이후 한랭기 도래로 유목민족 이동(게르만/훈족) 및 제국 붕괴에 영향.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('han-dynasty-flourishing', '한나라의 번영과 비단길(실크로드) 개척', 'Han Dynasty & The Silk Road', 'CHINA', '한(漢)', 'POLITICS', 'A', -202, 220, 'exact', '한무제의 영토 확장과 장건의 서역 파견으로 유라시아 대륙을 잇는 비단길(실크로드)이 개척되고 유교가 국교화됨.', '동서 문명 교류의 대동맥 형성 및 중국 ''한족(漢族)'' 정체성과 한자 문화권 확립.', '초한전쟁 승리와 유방의 건국, 경제적 안정(문경의 치).', '종이 발명, 불교 전래 등으로 문화적 융성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('paper-invention-cailun', '채륜의 제지술 개량 및 보급', 'Invention of Paper by Cai Lun', 'CHINA', '후한', 'SCIENCE', 'A', 105, 105, 'exact', '후한의 채륜이 식물 섬유를 이용해 실용적인 종이를 제조하는 제지술을 완성하여 지식 전파의 혁명을 촉발함.', '죽간과 양피지를 대체하여 문자와 학문의 보급을 극대화했으며, 탈라스 전투를 거쳐 아랍과 유럽으로 전파됨.', '기록 매체(비단, 죽간)의 비효율성과 행정 문서 수요 폭증.', '한반도, 일본, 이슬람, 유럽으로 전파되어 세계 문자 문명의 도약.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('three-kingdoms-korea-flourishing', '삼국시대의 정립과 영토 확장 (광개토대왕)', 'Three Kingdoms of Korea & King Gwanggaeto', 'KOREA', '고구려/백제/신라', 'POLITICS', 'A', 391, 412, 'exact', '고구려 광개토대왕의 대규모 정복 활동으로 만주와 한반도 중북부를 아우르는 대제국을 건설하고 독자 연호(영락)를 사용함.', '동북아의 강국으로서 고구려의 위상을 확립하고 백제, 신라와의 삼국 경쟁을 가속화함.', '소수림왕의 율령 반포, 불교 공인, 태학 설립 등 체제 정비 완료.', '장수왕의 평양 천도와 백제 한성 함락, 남진 정책으로 이어짐.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('fall-of-western-roman-empire', '서로마 제국 멸망과 중세 유럽의 시작', 'Fall of the Western Roman Empire', 'WEST', '서유럽', 'POLITICS', 'A', 476, 476, 'exact', '게르만 용병대장 오도아케르에 의해 서로마 황제 로물루스 아우구스툴루스가 폐위되며 고대가 끝나고 중세 봉건제가 태동함.', '고대 지중해 통합 세계의 해체와 서유럽 게르만 왕국들의 난립, 기독교 중심의 중세 사회 시작.', '훈족의 침입, 게르만족의 대이동, 경제 파탄과 황제권 약화.', '프랑크 왕국 성립, 비잔틴 제국과의 분화, 장원제와 기사 계급 형성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('islam-founding-expansion', '이슬람교 창시와 칼리프 제국의 급속 팽창', 'Rise of Islam & Umayyad/Abbasid Caliphate', 'WEST', '아라비아/중동/북아프리카', 'RELIGION', 'A', 610, 750, 'exact', '예언자 무함마드가 이슬람교를 창시한 후, 아라비아 반도를 통일하고 페르시아와 비잔틴 영토를 정복하여 대제국을 건설함.', '지중해 세계의 판도를 영구히 바꾸고 과학·철학을 융합하여 이슬람 황금기를 개막함.', '메카 상업 귀족의 부패와 유일신 신앙의 결집력.', '스페인에서 중앙아시아에 이르는 거대 이슬람 문화권 형성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('tang-dynasty-founding', '당나라 건국과 율령 체제 완성', 'Tang Dynasty & East Asian Legal System', 'CHINA', '당(唐)', 'INSTITUTION', 'A', 618, 907, 'exact', '당태종과 당고종에 걸쳐 3성 6부제, 균전제, 조용조, 과거제를 정비하여 동아시아 율령 문화의 표준을 완성함.', '신라, 발해, 일본에 율령과 유교 정치 시스템을 전파하여 동아시아 문화권(한자·유교·불교·율령)을 통합.', '수나라의 무리한 고구려 원정 실패와 농민 반란 후 이연·이세민의 건국.', '국제도시 장안 번영, 안사의 난 이후 절도사 난립으로 쇠퇴.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('silla-unification-korea', '신라의 삼국통일과 남북국 시대', 'Unified Silla & Balhae (North-South States)', 'KOREA', '신라/발해', 'POLITICS', 'A', 668, 698, 'exact', '신라가 백제와 고구려를 병합하고 나당전쟁에서 승리하여 대동강 이남을 통일하고, 북쪽에는 대조영이 발해를 건국함.', '한민족의 단일 문화적 정체성이 태동하고 불국사·석굴암 등 불교 예술이 극치에 달함.', '김춘추-김유신의 나당동맹 결성과 당나라 군대의 축출.', '신라 황금기 및 불국사·석굴암 조성, 발해의 해동성국 번영.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('woodblock-printing-dharani', '무구정광대다라니경과 목판 인쇄술', 'Mugu Jeonggwang Dharani Sutra & Woodblock Printing', 'KOREA', '통일신라', 'SCIENCE', 'B', 751, 751, 'approximate', '경주 불국사 석가탑에서 발견된 현존 세계 최고(最古)의 목판 인쇄물로 뛰어난 인쇄 기술과 종이 품질을 입증함.', '동아시아 목판 인쇄 기술의 높은 수준과 한지의 내구성을 증명하는 유네스코 기록유산급 가치.', '불교 경전 보급과 공덕 축적을 위한 인쇄 기술 발전.', '고려 대장경 조판으로 이어지는 인쇄 문화의 원류.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('goryeo-founding-metal-type', '고려 건국과 세계 최초 금속활자 발명', 'Goryeo Dynasty & Invention of Movable Metal Type', 'KOREA', '고려', 'SCIENCE', 'A', 918, 1234, 'range', '왕건의 고려 건국(918) 이후 1234년 이전 『상정고금예문』을 인쇄하며 서양보다 200여 년 앞서 금속활자를 발명함.', '지식의 대량 복제와 보존에서 인류 역사상 획기적인 기술적 도약을 이룩함.', '전란으로 소실된 서적 복구 필요성과 우수한 청동 주조 기술.', '현존 최고 금속활자본 『직지심체요절』(1377) 간행.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('song-dynasty-inventions', '송나라 3대 발명 (화약, 나침반, 활판인쇄) 및 성리학 태동', 'Song Dynasty Tech (Gunpowder, Compass) & Neo-Confucianism', 'CHINA', '송(宋)', 'SCIENCE', 'A', 960, 1279, 'exact', '송나라의 경제적·학문적 번영 속에서 화약, 나침반, 교초(지폐)가 실용화되고 주희에 의해 성리학이 집대성됨.', '화약과 나침반은 아랍을 거쳐 서유럽에 전파되어 대항해시대와 근대 군사 혁명의 원동력이 됨.', '문치주의 정책과 상업·해상 무역의 팽창.', '몽골 제국의 침략으로 멸망하나 기술은 세계로 확산.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('crusades-europe', '십자군 전쟁과 지중해 교역 활성화', 'The Crusades & Mediterranean Trade', 'WEST', '서유럽/레반트', 'POLITICS', 'A', 1096, 1291, 'exact', '성지 탈환을 명분으로 일어난 서유럽 기독교 국가들의 200년에 걸친 원정으로 봉건 귀족이 몰락하고 도시와 상업이 부흥함.', '교황권 약화, 왕권 강화, 이슬람과의 접촉을 통한 고전 그리스 학문 및 아랍 과학의 서유럽 역수입.', '셀주크 튀르크의 비잔틴 압박과 교황 우르바누스 2세의 클레르몽 공의회 호소.', '이탈리아 해상도시(베네치아, 제노바) 번영과 르네상스의 토양 형성.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('mongol-empire-expansion', '몽골 제국의 유라시아 통합과 팍스 몽골리카', 'Mongol Empire & Pax Mongolica', 'CHINA', '몽골/원/유라시아', 'POLITICS', 'A', 1206, 1368, 'exact', '칭기즈칸과 후계자들이 중국, 중앙아시아, 러시아, 중동을 아우르는 인류 역사상 최대의 연속 육상 제국을 건설함.', '역참망(얌)을 통해 동서양 교역로를 안전하게 연결하고 기술·종교·사상의 대교류를 촉진.', '유목 기마 군단의 탁월한 기동력과 능력 중심 군사 조직.', '흑사병의 대륙 간 확산 및 각 지역 민족주의/새 왕조(명, 오스만, 모스크바 대공국) 태동.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('little-ice-age-start', '14세기 소빙기 시작과 기후 한랭화', 'Beginning of the Little Ice Age', 'CLIMATE', '지구 전역', 'CLIMATE_ENVIRONMENT', 'B', 1300, 1850, 'approximate', '지구 평균 기온이 하락하여 대흉작, 기근, 빙하 확장이 빈번하게 발생했던 장기 기후 한랭기.', '농업 생산성 급감으로 사회 불안, 흑사병 취약성 증가, 명나라 멸망 및 조선 경신대기근의 배경이 됨.', '태양 흑점 극소기(마운더 극소기 등)와 대규모 화산 폭발 에어로졸.', '식량 위기, 사회적 반란, 왕조 교체의 기폭제 역할.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('black-death-pandemic', '유라시아 흑사병 대유행', 'The Black Death Pandemic', 'WEST', '유럽/중동/중국', 'CLIMATE_ENVIRONMENT', 'A', 1346, 1353, 'exact', '페스트균에 의한 팬데믹으로 유럽 인구의 30~50%가 사망하며 중세 사회 구조를 근본적으로 뒤흔듦.', '노동력 부족으로 농노제가 붕괴하고 임금이 상승하였으며, 교회의 권위가 실추되어 르네상스와 종교개혁의 도화선이 됨.', '몽골 교역로를 통한 페스트균 전파와 14세기 대기근으로 인한 면역력 약화.', '장원제 붕괴, 봉건 영주 쇠퇴, 인본주의적 사고 확산.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('joseon-founding', '조선 건국과 성리학적 통치 질서 확립', 'Founding of Joseon Dynasty', 'KOREA', '조선', 'POLITICS', 'A', 1392, 1392, 'exact', '이성계와 신진사대부(정도전 등)가 고려를 무너뜨리고 유교(성리학)를 국교로 삼는 새로운 왕조를 개창함.', '500년 유교 문치주의 국가 체제 구축과 한양 천도 및 경복궁 창건.', '위화도 회군과 과전법 실시로 신흥 무인 세력과 신진사대부의 결합.', '조선왕조 500년 지속 및 세종대왕의 문화적 융성으로 연결.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('ming-dynasty-founding', '명나라 건국과 정화의 대원정', 'Founding of Ming Dynasty & Zheng He''s Voyages', 'CHINA', '명(明)', 'POLITICS', 'A', 1368, 1433, 'range', '주원장이 몽골 원나라를 북쪽으로 축출하고 한족 제국을 부활시켰으며, 영락제 시기 정화의 거대 함대가 인도양과 아프리카까지 원정함.', '동남아시아 및 인도양에 대한 조공 무역망을 구축하고 동아시아 질서를 재편.', '홍건적의 난과 원나라 내부 분열.', '정화 사후 해금령(海禁令)으로 해양 진출 중단, 이후 서양의 대항해시대와 대비됨.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('hangul-creation-sejong', '훈민정음(한글) 창제와 과학기술 진흥', 'Creation of Hunminjeongeum (Hangul) & Scientific Flourishing', 'KOREA', '조선', 'ART_CULTURE', 'A', 1443, 1446, 'exact', '세종대왕이 백성을 위해 독창적이고 과학적인 음소 문자 훈민정음을 창제하고 측우기, 자격루, 칠정산 등 과학기구를 제작함.', '문자 독점을 타파하고 민족 문화의 자주성을 확립한 인류 언어학 역사상 최고의 업적.', '한자의 어려움으로 인한 백성의 소통 단절과 농업 생산성 향상을 위한 과학 연구 필요성.', '국문 문학 발달 및 조선의 독자적 역법과 천문학 정립.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('gutenberg-printing-press', '구텐베르크 활판 인쇄술 혁명', 'Gutenberg''s Movable Type Printing Revolution', 'WEST', '독일 마인츠', 'SCIENCE', 'A', 1450, 1455, 'exact', '요하네스 구텐베르크가 금속 활자와 유성 잉크, 압착 인쇄기를 결합하여 『42행 성경』을 대량 인쇄함.', '지식과 정보의 대중화를 이끌어 르네상스 확산, 종교개혁, 과학혁명의 결정적 매개체가 됨.', '서적 수요 증가와 필사본 제작의 한계.', '루터의 95개조 반박문이 전 유럽으로 수주일 만에 퍼져나갈 수 있는 인프라 구축.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('renaissance-florence', '이탈리아 르네상스와 인문주의의 개화', 'Italian Renaissance & Humanism', 'WEST', '이탈리아 피렌체', 'ART_CULTURE', 'A', 1400, 1550, 'approximate', '신 중심의 중세 세계관에서 벗어나 고대 그리스·로마의 고전을 부활시키고 인간의 이성과 예술적 잠재력을 찬양한 문화 혁신 운동.', '레오나르도 다 빈치, 미켈란젤로 등의 예술과 마키아벨리의 정치학 등 근대 서구 정신의 태동.', '비잔틴 제국 학자들의 망명, 지중해 무역으로 축적된 메디치 가문의 후원.', '알프스 이북 르네상스와 근대 과학적 사고방식의 확산.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('age-of-discovery-columbus', '대항해시대와 콜럼버스의 신대륙 도달', 'Age of Discovery & Columbian Exchange', 'WEST', '스페인/포르투갈/아메리카', 'ECONOMY', 'A', 1492, 1522, 'exact', '콜럼버스의 대서양 횡단과 마젤란 함대의 세계 일주로 지구상의 모든 대륙이 해상 무역로를 통해 직접 연결됨.', '콜럼버스 교환(작물·가축·전염병 이동)과 은(銀)의 세계적 유통으로 자본주의와 세계 경제 체제 성립.', '오스만 제국의 지중해 무역 장악으로 인한 신항로 개척 열망과 나침반·항해술 발전.', '아메리카 원주민 문명 파괴, 대서양 노예무역, 유럽 상업혁명.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('protestant-reformation-luther', '종교개혁과 95개조 반박문', 'Protestant Reformation & Martin Luther', 'WEST', '독일 비텐베르크', 'RELIGION', 'A', 1517, 1648, 'exact', '마르틴 루터의 면벌부 판매 비판으로 시작되어 교황권의 절대성을 무너뜨리고 개신교(프로테스탄트)가 분립한 종교·사회 혁명.', '개인의 신앙 자유와 성서 중심주의를 확립하고 30년 전쟁 후 베스트팔렌 조약으로 근대 주권국가 체제 출범.', '로마 가톨릭 교회의 세속화와 면벌부 강매, 활판 인쇄술을 통한 비판 확산.', '30년 전쟁(1618~1648) 및 종교 다원화, 베스트팔렌 평화조약.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('imjin-war-east-asia', '임진왜란과 동아시아 삼국의 격변', 'Imjin War & East Asian Transformation', 'KOREA', '조선/일본/명', 'POLITICS', 'A', 1592, 1598, 'exact', '도요토미 히데요시의 조선 침략으로 발발한 동아시아 국제 전쟁으로, 이순신의 해전 승리와 의병의 항전으로 격퇴함.', '조선 국토의 황폐화, 명나라의 국력 쇠퇴 및 청나라로의 왕조 교체, 일본 도쿠가와 이에야스의 에도 막부 수립을 촉발.', '일본 전국시대 통일 후 도요토미 히데요시의 대륙 정복 야망과 조총 보급.', '명·청 교체와 여진족(후금)의 대두, 일본의 도자기 전쟁(조선 도공 납치).', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('scientific-revolution-newton', '과학 혁명과 뉴턴의 프린키피아', 'Scientific Revolution & Newton''s Principia', 'WEST', '영국/유럽', 'SCIENCE', 'A', 1543, 1687, 'exact', '코페르니쿠스의 지동설, 갈릴레오의 관측을 거쳐 아이작 뉴턴이 만유인력과 고전역학 체계를 확립하여 근대 과학의 패러다임을 완성함.', '자연을 수학적 법칙으로 설명하는 기계론적 세계관을 정립하고 계몽주의와 산업혁명의 지적 기초를 마련.', '경험주의(베이컨)와 합리주의(데카르트)의 융합 및 망원경 등 정밀 관측기구 발명.', '계몽사상 확산과 기술 응용을 통한 산업혁명.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('qing-dynasty-founding', '청나라 건국과 강건성세(康乾盛世)', 'Qing Dynasty & High Qing Era', 'CHINA', '청(淸)', 'POLITICS', 'A', 1644, 1795, 'range', '만주족이 명나라를 멸망시키고 청나라를 세운 뒤, 강희제·옹정제·건륭제 3대에 걸쳐 영토를 최대치(티베트, 신장 등)로 확장하고 번영을 누림.', '오늘날 중국 영토의 기본 경계를 확립하고 팔기군 제도와 만한병용제로 다민족 제국을 안정적으로 통치.', '이자성의 난으로 명나라 자멸 후 오삼계의 투항 및 팔기군의 입관.', '19세기 아편전쟁과 서구 열강의 침략으로 쇠퇴.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('industrial-revolution-britain', '영국 산업혁명과 증기기관의 실용화', 'British Industrial Revolution & Steam Engine', 'WEST', '영국', 'SCIENCE', 'A', 1760, 1840, 'approximate', '제임스 와트의 증기기관 개량과 방적기 발명으로 인류의 생산 방식이 가내수공업에서 기계제 공장으로 전환된 경제·사회적 대격변.', '자본주의와 도시화, 노동계급의 형성을 낳았으며 현대 산업 문명과 글로벌 경제 구조의 출발점.', '영국의 풍부한 석탄/철광석, 식민지 무역을 통한 자본 축적, 안정된 정치 제도(명예혁명).', '철도망 부설, 세계 시장 통합, 환경오염 및 자본주의-사회주의 이념 대립.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('french-revolution', '프랑스 대혁명과 인권 선언', 'French Revolution & Declaration of Rights of Man', 'WEST', '프랑스 파리', 'POLITICS', 'A', 1789, 1799, 'exact', '바스티유 감옥 습격으로 시작되어 절대왕정과 봉건적 신분제를 타파하고 자유·평등·우애의 이념과 근대 시민사회를 선포함.', '국민주권과 기본권 사상을 전 유럽과 세계로 확산시켜 근대 민주주의의 기틀을 확립.', '구제도의 모순(앙시앵 레짐), 삼부회의 갈등, 계몽사상 확산, 재정 파탄.', '루이 16세 처형, 나폴레옹의 등장 및 나폴레옹 법전 제정, 유럽 전역의 민족주의 고양.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('joseon-renaissance-jeongjo', '조선 후기 탕평책과 정조의 문예부흥 (규장각, 수원화성)', 'King Jeongjo''s Reform & Late Joseon Renaissance', 'KOREA', '조선', 'POLITICS', 'B', 1776, 1800, 'exact', '정조가 규장각을 설치하고 장용영을 육성하며, 정약용의 거중기를 활용해 수원화성을 축조하는 등 실학 중심의 개혁 정치를 펼침.', '실학사상(북학파)과 조선 후기 서민 문화(판소리, 민화, 한글 소설)가 최고조로 만개함.', '붕당정치의 폐해 극복을 위한 탕평책 추진과 서학(천주교 및 서양 과학)의 유입.', '정조 사후 세도정치(안동 김씨 등) 도래로 인한 국가적 쇠락.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('opium-wars-china', '아편전쟁과 동아시아의 개항 격변', 'Opium Wars & Forced Opening of China', 'CHINA', '청나라/홍콩', 'POLITICS', 'A', 1839, 1860, 'exact', '영국의 아편 밀수와 청나라의 몰수로 발발한 전쟁으로, 난징 조약(1842)을 통해 홍콩이 할양되고 불평등 조약 체제가 시작됨.', '동아시아 중화 질서의 붕괴와 서구 제국주의 열강에 의한 반식민지화 위기 개막.', '영국의 무역 적자 해소를 위한 아편 밀무역과 임칙서의 아편 몰수.', '태평천국의 난, 양무운동, 일본의 메이지 유신 촉발.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('meiji-restoration-japan', '메이지 유신과 일본의 근대화', 'Meiji Restoration & Modernization', 'WEST', '일본', 'POLITICS', 'B', 1868, 1889, 'exact', '막부를 타도하고 천황 중심의 중앙집권 국가를 수립하여 서구식 법제, 산업, 군사 제도를 급속히 이식함.', '아시아에서 유일하게 비서구 근대 제국주의 열강으로 부상하며 동아시아 세력 균형을 뒤흔듦.', '페리 제독의 흑선 내항과 존왕양이 운동.', '청일전쟁, 러일전쟁, 대한제국 강제 병합으로 이어지는 침략주의 팽창.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('donghak-peasant-revolution', '동학 농민 혁명과 갑오개혁', 'Donghak Peasant Revolution & Gabo Reform', 'KOREA', '조선', 'POLITICS', 'A', 1894, 1894, 'exact', '전봉준을 중심으로 봉건 탐관오리의 학정과 외세 침략에 맞서 일어난 대규모 농민 혁명이자 신분제 폐지(갑오개혁)의 계기.', '신분제 철폐, 과부 재가 허용 등 근대적 평등 사회로 나아가는 도화선이자 청일전쟁의 직접적 발단.', '고부군수 조병갑의 탐학, 외세 침탈에 대한 반발, ''사람이 곧 하늘''이라는 인내천 사상.', '우금치 전투의 패배, 청일전쟁 발발, 을미사변과 대한제국 선포.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korean-empire-proclamation', '대한제국 선포와 광무개혁', 'Proclamation of the Korean Empire & Gwangmu Reform', 'KOREA', '대한제국', 'POLITICS', 'B', 1897, 1910, 'exact', '고종 황제가 환구단에서 황제 즉위식을 거행하고 자주독립 제국임을 선포하며 전차, 철도, 근대식 통신을 도입하는 광무개혁을 추진함.', '자주적 근대 국가 수립을 지향했으나 열강의 각축 속에서 1910년 국권 피탈로 이어짐.', '아관파천 이후 자주독립 여론(독립협회 등) 고조.', '을사늑약(1905)과 경술국치(1910)로 일제강점기 시작.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('world-war-one-russian-revolution', '제1차 세계대전과 러시아 볼셰비키 혁명', 'World War I & Russian Bolshevik Revolution', 'WEST', '유럽/러시아', 'POLITICS', 'A', 1914, 1918, 'exact', '제국주의 열강 간의 전면전으로 4대 제국(독일, 오스트리아, 러시아, 오스만)이 붕괴하고, 레닌에 의해 인류 최초의 사회주의 국가가 수립됨.', '국제연맹 창설과 민족자결주의 확산으로 아시아 피압박 민족의 독립운동(3·1운동, 5·4운동)을 촉발.', '사라예보 사건(동맹국 vs 협상국의 군비 경쟁 및 식민지 쟁탈전).', '베르사유 체제 수립, 소련(USSR) 탄생, 제2차 세계대전의 씨앗 잉태.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('march-first-movement', '3·1 운동과 대한민국 임시정부 수립', 'March 1st Movement & Provisional Government of Korea', 'KOREA', '한국/상하이', 'POLITICS', 'A', 1919, 1919, 'exact', '일제의 무단통치에 맞서 전 민족이 비폭력 만세 운동을 전개하고, 민주공화정 체제의 대한민국 임시정부를 수립함.', '군주정에서 민주공화국으로의 패러다임 전환이자 오늘날 대한민국 헌법의 법통적 뿌리.', '민족자결주의와 고종 황제 인산일 계기 독립 선언.', '일제의 문화통치 전환, 중국 5·4 운동에 영향, 상하이 임시정부 출범.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('world-war-two-holocaust', '제2차 세계대전과 원자폭탄 투하', 'World War II & The Atomic Bomb', 'WEST', '전 세계', 'POLITICS', 'A', 1939, 1945, 'exact', '파시즘 추축국(독일·이탈리아·일본)과 연합국의 총력전으로 인류 역사상 최악의 인명 피해를 냈으며 핵무기 사용과 함께 종전됨.', '유엔(UN) 창설, 한국 광복, 미·소 냉전 체제 개막, 핵시대 돌입.', '나치 독일의 폴란드 침공과 일본의 진주만 기습.', '식민지 해방, 전범 재판, 브레턴우즈 체제 출범.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korean-liberation-division', '8·15 광복과 한국전쟁(6·25 전쟁)', 'Korean Liberation (1945) & The Korean War (1950-1953)', 'KOREA', '한반도', 'POLITICS', 'A', 1945, 1953, 'exact', '일제 강점에서 해방되었으나 미·소 신탁통치와 38선 분단에 이어 북한의 남침으로 3년간의 동족상잔 전쟁과 휴전협정이 체결됨.', '냉전의 최전선으로서 한반도 분단이 고착화되고 대한민국 정부 수립 및 전후 재건 시작.', '얄타 회담 이후 미·소 분할 점령과 냉전 대립 격화.', '휴전선 분단, 이산가족 발생, 한미상호방위조약 체결.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('prc-founding-mao', '중화인민공화국 건국 및 문화대혁명', 'Founding of the PRC & Cultural Revolution', 'CHINA', '중국', 'POLITICS', 'A', 1949, 1976, 'range', '국공내전에서 승리한 마오쩌둥이 베이징 천안문에서 중화인민공화국을 선포하고 대약진 운동과 문화대혁명을 거침.', '사회주의 대국으로의 전환과 이후 덩샤오핑의 개혁개방으로 이어지는 현대 중국의 기초.', '농민 중심 공산당 게릴라전 승리와 국민당의 부패.', '대약진 운동 실패와 문화대혁명 혼란, 1978년 개혁개방 노선 채택.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('digital-revolution-internet', '디지털 혁명과 인터넷·정보화 시대', 'Digital Revolution & The Internet Era', 'WEST', '글로벌', 'SCIENCE', 'A', 1969, 2000, 'range', 'ARPANET에서 시작된 인터넷과 개인용 컴퓨터(PC), 월드와이드웹(WWW)의 보급으로 전 세계 지식과 경제가 실시간으로 연결됨.', '지식 정보 기반 사회와 4차 산업혁명, 글로벌 초연결 사회의 인프라 구축.', '트랜지스터 및 반도체 집적회로의 비약적 발전(무어의 법칙).', '스마트폰, 인공지능(AI), 빅데이터로 이어지는 21세기 디지털 문명.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('korean-democratization-economic-growth', '대한민국의 경제성장(한강의 기적)과 6월 민주항쟁', 'Miracle on the Han River & June Democratic Struggle', 'KOREA', '대한민국', 'POLITICS', 'A', 1960, 1987, 'range', '전쟁의 폐허에서 고도 산업화(한강의 기적)를 달성함과 동시에 1987년 6월 항쟁으로 대통령 직선제와 완전한 민주화를 쟁취함.', '2차 대전 이후 독립한 국가 중 경제 발전과 민주주의를 동시에 달성한 세계적인 성공 모델.', '수출 중심 산업화 정책, 국민의 높은 교육열, 시민사회의 민주화 열망.', '1988 서울올림픽 개최, OECD 가입, 글로벌 문화강국(K-Culture) 도약.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();


INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)
VALUES ('global-climate-change-anthropocene', '지구 온난화와 인류세 (Anthropocene)', 'Global Climate Change & The Anthropocene', 'CLIMATE', '지구 전역', 'CLIMATE_ENVIRONMENT', 'A', 1950, 2026, 'range', '온실가스 배출로 인한 지구 평균 기온 상승, 극단적 기상이변, 북극 빙하 감소 등 인류 활동이 지구 시스템을 변화시키는 현대 환경 위기.', '탄소 중립, 재생에너지 전환, 국제 파리 기후협약 등 21세기 인류 문명의 지속가능성을 좌우하는 핵심 과제.', '화석연료 대량 연소와 무분별한 삼림 벌채 및 산업화.', '기후 난민 발생, 해수면 상승, 에너지 대전환 가속.', 'HIGH', 'APPROVED')
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, updated_at = NOW();

COMMIT;