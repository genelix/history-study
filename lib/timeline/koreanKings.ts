// -*- coding: utf-8 -*-
export interface KoreanKing {
  id: string;
  name: string;          // 묘호/왕호 (예: '세종', '광개토대왕')
  dynasty: 'GOGURYEO' | 'BAEKJE' | 'SILLA' | 'GAYA' | 'BALHAE' | 'GORYEO' | 'JOSEON' | 'KOREAN_EMPIRE';
  dynastyLabel: string;   // '고구려', '백제', '신라', '가야', '발해', '고려', '조선', '대한제국'
  startYear: number;
  endYear: number;
  achievements: string;  // 주요 치적/업적 요약
}

export const KOREAN_KINGS: KoreanKing[] = [
  // ==========================================
  // 1. 삼국시대 - 고구려 (중요 왕)
  // ==========================================
  {
    id: "goguryeo-dongmyeongseong",
    name: "동명성왕 (주몽)",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: -37,
    endYear: -19,
    achievements: "졸본 부여에서 남하하여 고구려를 건국하고 주변 소국(행인국 등)을 복속함."
  },
  {
    id: "goguryeo-yuri",
    name: "유리명왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: -19,
    endYear: 18,
    achievements: "수도를 졸본에서 국내성으로 천도하여 국가 발전의 기틀을 마련하고 『황조가』를 지음."
  },
  {
    id: "goguryeo-taejo",
    name: "태조대왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 53,
    endYear: 146,
    achievements: "옥저를 정복하고 요동으로 진출하며 계루부 고씨의 왕위 세습권을 확립한 중앙집권 고대국가 기틀 마련."
  },
  {
    id: "goguryeo-gogukcheon",
    name: "고국천왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 179,
    endYear: 197,
    achievements: "을파소를 국상으로 등용하고 춘궁기 빈민 구제책인 진대법(194년)을 실시하여 왕권과 농민 생활 안정."
  },
  {
    id: "goguryeo-micheon",
    name: "미천왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 300,
    endYear: 331,
    achievements: "낙랑군(313년)과 대방군(314년)을 완전히 축출하여 대동강 유역을 확보하고 한사군 세력을 한반도에서 소멸시킴."
  },
  {
    id: "goguryeo-sosurim",
    name: "소수림왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 371,
    endYear: 384,
    achievements: "불교 수용(372년), 최고 국립 교육기관 태학(太學) 설립, 율령(律令) 반포로 광개토대왕 팽창의 체제적 기반 완성."
  },
  {
    id: "goguryeo-gwanggaeto",
    name: "광개토대왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 391,
    endYear: 412,
    achievements: "독자 연호 '영락'을 제정하고 백제 관미성 함락, 후연 격파, 신라를 침략한 왜구 격퇴(400년), 만주 대제국 건설."
  },
  {
    id: "goguryeo-jangsu",
    name: "장수왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 413,
    endYear: 491,
    achievements: "평양 천도(427년), 남진 정책으로 백제 한성 함락(475년), 한강 유역 장악 및 중원고구려비·광개토대왕릉비 건립."
  },
  {
    id: "goguryeo-munjamyeong",
    name: "문자명왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 491,
    endYear: 519,
    achievements: "물길에 쫓긴 부여를 완전히 복속시켜 고구려 역사상 최대 판도를 완성."
  },
  {
    id: "goguryeo-yeongyang",
    name: "영양왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 590,
    endYear: 618,
    achievements: "수문제의 30만 대군을 격퇴하고 을지문덕의 살수대첩(612년)으로 수양제의 113만 대군을 궤멸시킴."
  },
  {
    id: "goguryeo-bojang",
    name: "보장왕",
    dynasty: "GOGURYEO",
    dynastyLabel: "고구려",
    startYear: 642,
    endYear: 668,
    achievements: "연개소문의 정변 후 즉위하여 당태종의 안시성 전투(645년) 등 침략을 격퇴했으나 나당연합군에 평양성 함락(고구려 멸망)."
  },

  // ==========================================
  // 2. 삼국시대 - 백제 (중요 왕)
  // ==========================================
  {
    id: "baekje-onjo",
    name: "온조왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: -18,
    endYear: 28,
    achievements: "고구려계 유이민을 이끌고 한강 유역 위례성에 백제를 건국하고 마한 소국들을 흡수."
  },
  {
    id: "baekje-goi",
    name: "고이왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: 234,
    endYear: 286,
    achievements: "6좌평 16관등제 정비, 공복 제정, 율령 반포(수뢰죄 처벌)로 백제 고대 국가 체제의 완성."
  },
  {
    id: "baekje-geunchogo",
    name: "근초고왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: 346,
    endYear: 375,
    achievements: "마한 전역 정복, 고구려 평양성 공격(고국원왕 전사), 요서·산둥·규슈 진출 및 왜왕에게 칠지도 하사 (백제 최고 전성기)."
  },
  {
    id: "baekje-chimnyu",
    name: "침류왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: 384,
    endYear: 385,
    achievements: "동진의 인도 고승 마라난타를 맞이하여 백제에 불교를 최초로 공인(384년)."
  },
  {
    id: "baekje-muryeong",
    name: "무령왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: 501,
    endYear: 523,
    achievements: "22담로에 왕족을 파견해 지방 통제 강화, 남조 양나라와 활발한 교류 (국보 무령왕릉 출토)."
  },
  {
    id: "baekje-seong",
    name: "성왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: 523,
    endYear: 554,
    achievements: "수도를 사비(부여)로 천도(538년), 국호를 '남부여'로 개칭, 불교를 일본에 전파하고 한강 하류를 수복했으나 관산성에서 전사."
  },
  {
    id: "baekje-mu",
    name: "무왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: 600,
    endYear: 641,
    achievements: "서동요의 주인공으로 익산 미륵사를 창건하고 왕흥사를 짓는 등 국력 신장과 신라에 공세 전개."
  },
  {
    id: "baekje-uija",
    name: "의자왕",
    dynasty: "BAEKJE",
    dynastyLabel: "백제",
    startYear: 641,
    endYear: 660,
    achievements: "해동증자로 불리며 신라 대야성 등 40여 성을 함락했으나 나당연합군의 황산벌 전투 후 사비성 함락으로 백제 멸망."
  },

  // ==========================================
  // 3. 삼국시대 - 신라 (중요 왕)
  // ==========================================
  {
    id: "silla-hyeokgeose",
    name: "박혁거세 거서간",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: -57,
    endYear: 4,
    achievements: "경주 6촌의 추대로 사로국을 건국하고 알영 부인과 함께 나라를 다스림."
  },
  {
    id: "silla-naemul",
    name: "내물 마립간",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 356,
    endYear: 402,
    achievements: "김씨 왕위 독점 세습 확립, 마립간 칭호 사용, 고구려 광개토대왕 원병으로 왜구 격퇴."
  },
  {
    id: "silla-jijeung",
    name: "지증왕",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 500,
    endYear: 514,
    achievements: "국호를 '신라', 왕호를 '왕(王)'으로 확정, 순장 금지, 우경(소농사) 장려, 이사부를 파견해 우산국(울릉도·독도) 복속(512년)."
  },
  {
    id: "silla-beopheung",
    name: "법흥왕",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 514,
    endYear: 540,
    achievements: "율령 반포(520년), 17관등·골품제·공복 제정, 이차돈 순교를 통한 불교 공인(527년), 금관가야 병합(532년), 연호 '건원' 사용."
  },
  {
    id: "silla-jinheung",
    name: "진흥왕",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 540,
    endYear: 576,
    achievements: "화랑도 국가 조직 개편, 한강 전 유역 차지, 대가야 정복(562년), 함경도 진출 후 단양적성비·4대 순수비 건립 (신라 최고 전성기)."
  },
  {
    id: "silla-seondeok",
    name: "선덕여왕",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 632,
    endYear: 647,
    achievements: "한국사 최초의 여왕으로 첨성대 건립, 자장의 건의로 황룡사 9층 목탑 건립, 김유신과 김춘추를 등용하여 삼국통일의 기틀 마련."
  },
  {
    id: "silla-muyeol",
    name: "태종 무열왕 (김춘추)",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 654,
    endYear: 661,
    achievements: "진골 출신 최초의 국왕으로 나당 군사동맹을 결성하고 백제를 멸망(660년)시킴."
  },
  {
    id: "silla-munmu",
    name: "문무왕",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 661,
    endYear: 681,
    achievements: "고구려를 멸망(668년)시키고 매소성·기벌포 해전에서 당군을 격퇴하여 나당전쟁 승리 및 삼국통일 완수(676년), 동해 호국용 설화(대왕암)."
  },
  {
    id: "silla-sinmun",
    name: "신문왕",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 681,
    endYear: 692,
    achievements: "김흠돌의 난 진압 후 전제 왕권 확립, 9주 5소경 및 9서당 10정 군제 정비, 국학 설립, 관료전 지급 및 녹읍 폐지."
  },
  {
    id: "silla-gyeongdeok",
    name: "경덕왕",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 742,
    endYear: 765,
    achievements: "불국사와 석굴암 창건, 에밀레종(성덕대왕신종) 주조 시작, 관직과 지명을 한자식으로 개편하여 통일신라 문화의 황금기 구가."
  },
  {
    id: "silla-gyeongsun",
    name: "경순왕 (김부)",
    dynasty: "SILLA",
    dynastyLabel: "신라",
    startYear: 927,
    endYear: 935,
    achievements: "후백제 견훤의 침공으로 피폐해진 1천 년 신라 사직을 백성의 안녕을 위해 고려 태조 왕건에게 평화적으로 양도."
  },

  // ==========================================
  // 4. 발해 (중요 왕)
  // ==========================================
  {
    id: "balhae-go",
    name: "고왕 (대조영)",
    dynasty: "BALHAE",
    dynastyLabel: "발해",
    startYear: 698,
    endYear: 719,
    achievements: "천문령 전투에서 당군을 대파하고 동모산 기슭에 고구려를 계승한 진국(발해)을 건국."
  },
  {
    id: "balhae-mu",
    name: "무왕 (대무예)",
    dynasty: "BALHAE",
    dynastyLabel: "발해",
    startYear: 719,
    endYear: 737,
    achievements: "독자 연호 '인안' 제정, 장문휴 장군을 파견하여 당나라 산둥 등주를 선제 타격하는 등 강경 대외 정책 추진."
  },
  {
    id: "balhae-mun",
    name: "문왕 (대흠무)",
    dynasty: "BALHAE",
    dynastyLabel: "발해",
    startYear: 737,
    endYear: 793,
    achievements: "독자 연호 '대흥' 사용, 상경 용천부로 천도, 3성 6부 중앙 관제 완성, 당과 화친하며 5경 15부 62주 체제 확립."
  },
  {
    id: "balhae-seon",
    name: "선왕 (대인수)",
    dynasty: "BALHAE",
    dynastyLabel: "발해",
    startYear: 818,
    endYear: 830,
    achievements: "말갈족 대부분을 복속시키고 요동 방면으로 진출하여 당나라로부터 '해동성국(海東盛國)'이라 칭송받은 최고 번영기 완성."
  },

  // ==========================================
  // 5. 고려시대 (중요 왕)
  // ==========================================
  {
    id: "goryeo-taejo",
    name: "태조 왕건",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 918,
    endYear: 943,
    achievements: "고려 건국(918년), 신라 흡수 및 후백제 격파로 후삼국 통일(936년), 훈요 10조, 흑창 설치, 취민유도, 숭불 정책."
  },
  {
    id: "goryeo-gwangjong",
    name: "광종",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 949,
    endYear: 975,
    achievements: "노비안검법(956년), 과거제 최초 시행(958년 쌍기 건의), 4색 공복 제정, 독자 연호 '광덕·준풍' 사용, 호족 세력 대대적 숙청."
  },
  {
    id: "goryeo-seongjong",
    name: "성종",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 981,
    endYear: 997,
    achievements: "최승로의 시무 28조 수용, 12목에 지방관 파견, 2성 6부 유교 관제 정비, 국자감과 의창 설치."
  },
  {
    id: "goryeo-hyeonjong",
    name: "현종",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 1009,
    endYear: 1031,
    achievements: "거란의 2·3차 침입을 격퇴(강감찬 귀주대첩, 1019년), 초조대장경 판각 시작, 5도 양계 지방 제도 완성."
  },
  {
    id: "goryeo-munjong",
    name: "문종",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 1046,
    endYear: 1083,
    achievements: "경정전시과 제정, 유교 문화와 불교 융성, 대각국사 의천을 통한 교장 간행 등 고려 전기의 최고 황금기 구가."
  },
  {
    id: "goryeo-sukjong",
    name: "숙종",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 1095,
    endYear: 1105,
    achievements: "윤관의 건의로 여진 정벌 특수부대 별무반 창설, 주전도감 설치(활구·은병·삼한통보 주조), 남경(서울) 개창."
  },
  {
    id: "goryeo-yejong",
    name: "예종",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 1105,
    endYear: 1122,
    achievements: "윤관을 파견하여 동북 9성을 축조하고 국자감에 7재를 설치하고 양현고 장학 재단을 두어 관학 진흥."
  },
  {
    id: "goryeo-gongmin",
    name: "공민왕",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 1351,
    endYear: 1374,
    achievements: "몽골풍 폐지, 기철 등 친원파 숙청, 정동행성 이문소 폐지, 쌍성총관부 무력 탈환(철령 이북 수복), 신돈 등용 전민변정도감 설치."
  },
  {
    id: "goryeo-gongyang",
    name: "공양왕",
    dynasty: "GORYEO",
    dynastyLabel: "고려",
    startYear: 1389,
    endYear: 1392,
    achievements: "과전법(1391년)을 공포하여 신진사대부의 경제적 기반을 마련하였으나 이성계 일파에 의해 선양 형식으로 고려 왕조 종막."
  },

  // ==========================================
  // 6. 조선시대 (27대 모든 왕 전체)
  // ==========================================
  {
    id: "joseon-01-taejo",
    name: "1대 태조 (이성계)",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1392,
    endYear: 1398,
    achievements: "위화도 회군으로 정권을 잡고 조선 건국(1392년), 한양 천도(1394년), 종묘·사직·경복궁 및 도성 축조."
  },
  {
    id: "joseon-02-jeongjong",
    name: "2대 정종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1398,
    endYear: 1400,
    achievements: "제1차 왕자의 난 후 즉위하여 잠시 개경으로 환도하였으며 삼군부 설치 및 도평의사사 개편."
  },
  {
    id: "joseon-03-taejong",
    name: "3대 태종 (이방원)",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1400,
    endYear: 1418,
    achievements: "사병 혁파, 6조 직계제 도입, 호패법 실시, 신문고 설치, 계미자 주조, 주자소 설치로 왕권과 국정 기틀 확립."
  },
  {
    id: "joseon-04-sejong",
    name: "4대 세종대왕",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1418,
    endYear: 1450,
    achievements: "훈민정음 창제(1443년), 집현전 육성, 4군 6진 개척(압록강·두만강 국경 확정), 측우기·자격루·칠정산·공법 세제 개혁 등 조선의 르네상스 완성."
  },
  {
    id: "joseon-05-munjong",
    name: "5대 문종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1450,
    endYear: 1452,
    achievements: "세종의 뜻을 이어 측우기 창제 주도, 화차(문종화차) 설계, 『고려사』 및 『고려사절요』 편찬 완성."
  },
  {
    id: "joseon-06-danjong",
    name: "6대 단종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1452,
    endYear: 1455,
    achievements: "12세에 즉위하여 황보인·김종서의 보필을 받았으나 숙부 수양대군의 계유정난(1453년)으로 폐위되어 영월에 유배."
  },
  {
    id: "joseon-07-sejo",
    name: "7대 세조 (수양대군)",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1455,
    endYear: 1468,
    achievements: "6조 직계제 부활, 집현전 폐지, 직전법 실시(수조권 현직자 제한), 보법 제정, 『경국대전』 편찬 착수."
  },
  {
    id: "joseon-08-yejong",
    name: "8대 예종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1468,
    endYear: 1469,
    achievements: "남이의 옥사 발생, 직전세 부과 법제화 등 세조의 치세를 승계하였으나 재위 1년 2개월 만에 승하."
  },
  {
    id: "joseon-09-seongjong",
    name: "9대 성종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1469,
    endYear: 1494,
    achievements: "『경국대전』 완성·반포(1485년), 홍문관 설치, 김종직 등 사림파 대거 등용, 『국조오례의』, 『동국여지승람』, 『동국통감』 편찬."
  },
  {
    id: "joseon-10-yeonsangun",
    name: "10대 연산군",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1494,
    endYear: 1506,
    achievements: "무오사화(1498년)와 갑자사화(1504년)로 사림파와 훈구파를 대거 숙청하고 폭정을 일삼다 중종반정으로 폐위."
  },
  {
    id: "joseon-11-jungjong",
    name: "11대 중종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1506,
    endYear: 1544,
    achievements: "중종반정으로 즉위, 조광조를 등용해 혈량과 실시·소학 장려·위훈삭제를 단행했으나 기묘사화(1519년) 발생, 삼포왜란(1510년) 후 비변사 설치."
  },
  {
    id: "joseon-12-injong",
    name: "12대 인종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1544,
    endYear: 1545,
    achievements: "기묘사화 때 화를 입은 조광조 등 사림을 신원하고 현량과를 복구하려 했으나 재위 8개월 만에 승하."
  },
  {
    id: "joseon-13-myeongjong",
    name: "13대 명종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1545,
    endYear: 1567,
    achievements: "을사사화(1545년)로 윤원형 등 외척 세력 득세, 문정왕후 수렴청정, 백정 임꺽정의 난 발생, 주세붕의 백운동 서원에 사액(소수서원)."
  },
  {
    id: "joseon-14-seonjo",
    name: "14대 선조",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1567,
    endYear: 1608,
    achievements: "사림파 중심 붕당 정치(동인·서인) 시작, 임진왜란(1592~1598년) 발발 시 이순신의 한산·명량대첩과 의병 활약으로 국난 극복."
  },
  {
    id: "joseon-15-gwanghaegun",
    name: "15대 광해군",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1608,
    endYear: 1623,
    achievements: "전란 복구, 대동법 최초 실시(경기, 1608년), 허준 『동의보감』 편찬, 명·청 교체기 실리적 중립 외교 추진, 인조반정으로 폐위."
  },
  {
    id: "joseon-16-injo",
    name: "16대 인조",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1623,
    endYear: 1649,
    achievements: "친명배금 정책으로 정묘호란(1627년)과 병자호란(1636년)의 국난을 겪고 삼전도 굴욕, 영정법 실시, 어영청·총융청·수어청 설치."
  },
  {
    id: "joseon-17-hyojong",
    name: "17대 효종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1649,
    endYear: 1659,
    achievements: "청나라에 당한 치욕을 씻고자 송시열·이완 등과 북벌(北伐) 운동 추진, 나선 정벌(러시아 정벌)에 조총 부대 파견."
  },
  {
    id: "joseon-18-hyeonjong",
    name: "18대 현종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1659,
    endYear: 1674,
    achievements: "효종과 효종비의 승하에 따른 복상 기간을 두고 남인과 서인 간의 제1차(기해), 제2차(갑인) 예송논쟁 발생."
  },
  {
    id: "joseon-19-sukjong",
    name: "19대 숙종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1674,
    endYear: 1720,
    achievements: "경신·기사·갑술 환국을 통한 왕권 강화, 대동법 전국 확대, 상평통보 전국 유통, 백두산정계비 건립, 안용복의 독도 영유권 수호."
  },
  {
    id: "joseon-20-gyeongjong",
    name: "20대 경종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1720,
    endYear: 1724,
    achievements: "장희빈의 소생으로 소론의 지지를 받으며 즉위, 노론 4대신 옥사(신임사화) 등 극심한 당쟁 속에서 재위 4년 만에 승하."
  },
  {
    id: "joseon-21-yeongjo",
    name: "21대 영조",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1724,
    endYear: 1776,
    achievements: "탕평책 실시(탕평비 건립), 균역법(1750년, 군포 1필 감면), 신문고 부활, 청계천 준천, 사형수 3심제, 『속대전』 편찬 (52년 최장 재위)."
  },
  {
    id: "joseon-22-jeongjo",
    name: "22대 정조",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1776,
    endYear: 1800,
    achievements: "규장각 설치, 초계문신제, 장용영 창설, 수원화성 축조(1796년), 신해통공(금난전권 폐지), 서얼 허통 등 조선 후기 문예 부흥 주도."
  },
  {
    id: "joseon-23-sunjo",
    name: "23대 순조",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1800,
    endYear: 1834,
    achievements: "어린 나이에 즉위하여 정순왕후 수렴청정과 안동 김씨 세도정치 시작, 신유박해(1801년), 공노비 6만 6천 명 해방, 홍경래의 난(1811년)."
  },
  {
    id: "joseon-24-heonjong",
    name: "24대 헌종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1834,
    endYear: 1849,
    achievements: "풍양 조씨 세도정치, 기해박해(1839년)와 김대건 신부 순교(병오박해, 1846년), 삼정의 문란 심화."
  },
  {
    id: "joseon-25-cheoljong",
    name: "25대 철종",
    dynasty: "JOSEON",
    dynastyLabel: "조선",
    startYear: 1849,
    endYear: 1863,
    achievements: "강화도 농부 출신으로 안동 김씨 세도정치 하에서 삼정의 문란 극심, 임술농민봉기(진주민란, 1862년) 발생, 삼정이정청 설치."
  },
  {
    id: "joseon-26-gojong",
    name: "26대 고종 (광무황제)",
    dynasty: "KOREAN_EMPIRE",
    dynastyLabel: "조선·대한제국",
    startYear: 1863,
    endYear: 1907,
    achievements: "흥선대원군 섭정 개혁, 강화도 조약(1876년), 갑오개혁, 대한제국 수립 선포 및 황제 즉위(1897년), 광무개혁, 헤이그 특사 파견 후 강제 퇴위."
  },
  {
    id: "joseon-27-sunjong",
    name: "27대 순종 (융희황제)",
    dynasty: "KOREAN_EMPIRE",
    dynastyLabel: "대한제국",
    startYear: 1907,
    endYear: 1910,
    achievements: "대한제국 마지막 황제로 한일신협약(정미7조약), 군대 해산(1907년), 경술국치(1910년 한일강제병합)로 519년 조선·대한제국 종막."
  }
];
