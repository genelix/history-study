// -*- coding: utf-8 -*-
export interface ChineseDynasty {
  id: string;
  name: string;          // 왕조명 (약칭, 예: '상(은)', '진(秦)', '한', '수', '당', '송', '원', '명', '청')
  name_hanja: string;    // 한자 표기 (예: '隋', '唐', '宋', '元', '明', '清')
  fullName: string;      // 정식 명칭 (예: '당나라 (대당제국)')
  capital: string;       // 수도 (예: '장안 (시안)', '북경 (베이징)')
  founder: string;       // 시조/개창자
  startYear: number;
  endYear: number;
  periodGroup: 'ANCIENT' | 'HAN' | 'WEI_JIN' | 'SUI_TANG' | 'SONG_YUAN' | 'MING_QING' | 'MODERN';
  characteristics: string; // 주요 특징 및 역사적 의의
}

export const CHINESE_DYNASTIES: ChineseDynasty[] = [
  {
    id: "china-shang",
    name: "상(은)",
    name_hanja: "商 / 殷",
    fullName: "상나라 (은나라)",
    capital: "은허 (안양)",
    founder: "탕왕 (成湯)",
    startYear: -1600,
    endYear: -1046,
    periodGroup: "ANCIENT",
    characteristics: "갑골문자 발명, 고도화된 청동기 제기 제련, 제정일치 신정정치 확립."
  },
  {
    id: "china-western-zhou",
    name: "서주",
    name_hanja: "西周",
    fullName: "서주 (Western Zhou)",
    capital: "호경 (시안)",
    founder: "무왕 (武王), 주공단",
    startYear: -1046,
    endYear: -771,
    periodGroup: "ANCIENT",
    characteristics: "혈연적 봉건제와 종법제 수립, 천명(天命) 사상과 덕치주의 이념 확립."
  },
  {
    id: "china-spring-autumn",
    name: "동주 (춘추)",
    name_hanja: "春秋時代",
    fullName: "춘추시대 (Spring and Autumn)",
    capital: "낙읍 (뤄양)",
    founder: "평왕 (平王)",
    startYear: -770,
    endYear: -476,
    periodGroup: "ANCIENT",
    characteristics: "주 왕실 쇠퇴, 춘추 5패 패권 다툼, 철기 보급 시작, 공자의 유학 창시."
  },
  {
    id: "china-warring-states",
    name: "전국시대",
    name_hanja: "戰國時代",
    fullName: "전국시대 (Warring States)",
    capital: "각국 수도 (함양, 한단 등)",
    founder: "전국 7웅 (진·초·연·제·조·위·한)",
    startYear: -475,
    endYear: -221,
    periodGroup: "ANCIENT",
    characteristics: "철제 농기구·무기 대량 보급, 제자백가(유·도·법·묵가) 사상 백가쟁명, 상앙의 변법."
  },
  {
    id: "china-qin",
    name: "진(秦)",
    name_hanja: "秦",
    fullName: "진나라 (대진제국)",
    capital: "함양 (시안 인근)",
    founder: "진시황 (시황제)",
    startYear: -221,
    endYear: -206,
    periodGroup: "HAN",
    characteristics: "중국 최초 대통일, 군현제 실시, 문자·화폐·도량형·차축 통일, 만리장성 축조, 분서갱유."
  },
  {
    id: "china-western-han",
    name: "서한 (전한)",
    name_hanja: "西漢",
    fullName: "서한 (전한, Western Han)",
    capital: "장안 (시안)",
    founder: "유방 (한 고조)",
    startYear: -202,
    endYear: 9,
    periodGroup: "HAN",
    characteristics: "군국제에서 군현제 정착, 한무제 실크로드 개척(장건 파견), 동중서 건의로 유교 국교화."
  },
  {
    id: "china-xin",
    name: "신(新)",
    name_hanja: "新",
    fullName: "신나라 (Xin Dynasty)",
    capital: "상안 (장안)",
    founder: "왕망 (王莽)",
    startYear: 9,
    endYear: 23,
    periodGroup: "HAN",
    characteristics: "주례를 모방한 복고적 이상정치 시도, 토지 국유화(왕전제)와 노비 매매 금지, 적미·녹림의 난으로 멸망."
  },
  {
    id: "china-eastern-han",
    name: "동한 (후한)",
    name_hanja: "東漢",
    fullName: "동한 (후한, Eastern Han)",
    capital: "낙양 (뤄양)",
    founder: "광무제 유수",
    startYear: 25,
    endYear: 220,
    periodGroup: "HAN",
    characteristics: "호족 세력 성장, 채륜의 제지술 개량(105년), 훈고학 발달, 외척과 환관의 당고의 화, 황건적의 난."
  },
  {
    id: "china-three-kingdoms",
    name: "삼국 (위·촉·오)",
    name_hanja: "三國時代",
    fullName: "삼국시대 (Three Kingdoms)",
    capital: "낙양(위), 성도(촉), 건업(오)",
    founder: "조비(위), 유비(촉), 손권(오)",
    startYear: 220,
    endYear: 280,
    periodGroup: "WEI_JIN",
    characteristics: "군웅할거와 적벽대전, 구품관인법 제정, 둔전제 실시, 제갈량의 남정 및 북벌."
  },
  {
    id: "china-western-jin",
    name: "서진",
    name_hanja: "西晉",
    fullName: "서진 (Western Jin)",
    capital: "낙양 (뤄양)",
    founder: "사마염 (무제)",
    startYear: 265,
    endYear: 316,
    periodGroup: "WEI_JIN",
    characteristics: "삼국 통일(280년), 종실 제왕들의 팔왕의 난, 5호(흉노·선비·저·갈·강)의 침입과 영가의 난으로 멸망."
  },
  {
    id: "china-sixteen-kingdoms-eastern-jin",
    name: "동진·16국",
    name_hanja: "東晉·十六國",
    fullName: "동진 및 5호 16국 시대",
    capital: "건강 (남징) / 북방 각국",
    founder: "사마예 (동진 원제)",
    startYear: 317,
    endYear: 420,
    periodGroup: "WEI_JIN",
    characteristics: "한족의 강남 대이주 및 강남 경제 개발, 북방 유목민족 16국 분립, 비수대전(383년)."
  },
  {
    id: "china-northern-southern",
    name: "남북조",
    name_hanja: "南北朝",
    fullName: "남북조시대 (Northern & Southern Dynasties)",
    capital: "건강(남조) / 평성·낙양(북조)",
    founder: "유유(송) / 탁발규(북위)",
    startYear: 420,
    endYear: 589,
    periodGroup: "WEI_JIN",
    characteristics: "남조(송·제·양·진 귀족 문화), 북조(북위 효문제 한화 정책, 균전제·부병제 창시), 운강·용문 석굴."
  },
  {
    id: "china-sui",
    name: "수(隋)",
    name_hanja: "隋",
    fullName: "수나라 (Sui Dynasty)",
    capital: "대흥성 (장안), 낙양",
    founder: "문제 양견, 양제 양광",
    startYear: 581,
    endYear: 618,
    periodGroup: "SUI_TANG",
    characteristics: "300년 남북조 분열 종식 대통일, 남북을 잇는 대운하 굴착, 과거제 최초 도입, 고구려 원정 실패로 멸망."
  },
  {
    id: "china-tang",
    name: "당(唐)",
    name_hanja: "唐",
    fullName: "당나라 (대당제국, Tang Dynasty)",
    capital: "장안 (시안), 낙양",
    founder: "고조 이연, 태종 이세민, 현종",
    startYear: 618,
    endYear: 907,
    periodGroup: "SUI_TANG",
    characteristics: "정관의 치와 개원의 치, 3성 6부 율령 체제 완성, 동아시아 문화권(한자·유교·불교·율령) 형성, 국제도시 장안, 안사의 난(755년)."
  },
  {
    id: "china-five-dynasties",
    name: "5대 10국",
    name_hanja: "五代十國",
    fullName: "5대 10국 시대 (Five Dynasties)",
    capital: "개봉, 낙양 등",
    founder: "주전충(후량) 등 절도사 세력",
    startYear: 907,
    endYear: 960,
    periodGroup: "SONG_YUAN",
    characteristics: "번진 절도사 무인들의 정권 찬탈과 혼란, 화북 5대(후량·후당·후진·후한·후주) 및 남방 10국 분열, 거란(요)의 연운16주 획득."
  },
  {
    id: "china-northern-song",
    name: "북송",
    name_hanja: "北宋",
    fullName: "북송 (Northern Song)",
    capital: "동경 개봉부 (카이펑)",
    founder: "태조 조광윤",
    startYear: 960,
    endYear: 1127,
    periodGroup: "SONG_YUAN",
    characteristics: "문치주의 정책, 과거제 전시 도입, 활판 인쇄술·화약·나침반 3대 발명, 왕안석의 신법 개혁, 정강의 변(1127년)으로 남천."
  },
  {
    id: "china-southern-song-jin",
    name: "남송·금(金)",
    name_hanja: "南宋·金",
    fullName: "남송 및 금나라 대립기",
    capital: "임안 (항저우) / 상경, 중도",
    founder: "고종 조구(남송) / 아골타(금)",
    startYear: 1127,
    endYear: 1279,
    periodGroup: "SONG_YUAN",
    characteristics: "강남 농업과 시박사 해상 무역 번영, 주희의 성리학(주자학) 집대성, 몽골(원) 제국의 침략으로 애산 전투에서 멸망."
  },
  {
    id: "china-yuan",
    name: "원(元)",
    name_hanja: "元",
    fullName: "원나라 (대원대몽골제국, Yuan Dynasty)",
    capital: "대도 (베이징)",
    founder: "쿠빌라이 칸 (세조)",
    startYear: 1271,
    endYear: 1368,
    periodGroup: "SONG_YUAN",
    characteristics: "중국 전역을 정복한 최초의 유목민족 통일 왕조, 몽골인 제일주의, 유라시아 역참제(잠치) 운영, 교초(지폐) 유통, 마르코 폴로 방문."
  },
  {
    id: "china-ming",
    name: "명(明)",
    name_hanja: "明",
    fullName: "명나라 (대명제국, Ming Dynasty)",
    capital: "남경(초기) → 북경(영락제 이후)",
    founder: "태조 홍무제 주원장, 영락제",
    startYear: 1368,
    endYear: 1644,
    periodGroup: "MING_QING",
    characteristics: "한족 왕조 부흥, 자금성 축조, 정화의 7차 남해 원정, 이갑제와 어비도책, 양명학 발달, 일조편법(은 본위 세제), 임진왜란 참전, 이자성의 난으로 멸망."
  },
  {
    id: "china-qing",
    name: "청(淸)",
    name_hanja: "淸",
    fullName: "청나라 (대청제국, Qing Dynasty)",
    capital: "성경(심양) → 북경 (베이징)",
    founder: "태조 누르하치, 태종 홍타이지, 강희제",
    startYear: 1636,
    endYear: 1912,
    periodGroup: "MING_QING",
    characteristics: "만주족 팔기군 기반 제국, 강희·옹정·건륭 130년 황금기, 몽골·티베트·신장 편입 최대 영토 달성, 사고전서 편찬, 지정은제, 아편전쟁(1840)과 양무운동, 신해혁명(1911)으로 멸망."
  },
  {
    id: "china-roc",
    name: "중화민국",
    name_hanja: "中華民國",
    fullName: "중화민국 (Republic of China, 대륙 시기)",
    capital: "남경 (난징), 북경, 중경",
    founder: "쑨원 (임시 대총통), 장제스",
    startYear: 1912,
    endYear: 1949,
    periodGroup: "MODERN",
    characteristics: "2천 년 군주제 종식 및 아시아 최초 공화정 수립, 5·4 운동, 국공합작, 8년 대일 항일전쟁 승리, 국공내전."
  },
  {
    id: "china-prc",
    name: "중화인민공화국",
    name_hanja: "中華人民共和國",
    fullName: "중화인민공화국 (PRC)",
    capital: "북경 (베이징)",
    founder: "마오쩌둥, 덩샤오핑",
    startYear: 1949,
    endYear: 2050,
    periodGroup: "MODERN",
    characteristics: "사회주의 국가 건국, 토지개혁, 문화대혁명(1966~1976), 덩샤오핑의 개혁개방(1978), G2 경제 대국으로 급부상."
  }
];
