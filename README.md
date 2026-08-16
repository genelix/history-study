# HistoryGrid (통섭형 세계사 연대표)

> **Live Demo**: [https://historygrid.netlify.app](https://historygrid.netlify.app)
> **GitHub**: [https://github.com/genelix/history-study.git](https://github.com/genelix/history-study.git)

하나의 시간축에서 **한국사 · 중국사 · 서양사의 정치, 인물, 제도, 종교, 과학, 예술, 기후환경**을 동시에 비교하는 통섭형 역사 탐색 플랫폼입니다.

---

## 🏛️ 주요 기능

1. **4차원 병렬 시간축 (Timeline Engine)**
   - 서양사(🏛️), 중국사(🏯), 한국사(🇰🇷), 기후환경(🌍) 4개 트랙 실시간 동시 정렬
   - 자동 서브 레인(Lane) 분할로 이벤트 겹침 방지
   - 기원전(BCE) / 서기(CE) 완벽 연동 및 천문학적 0년 미존재 보정
   - **1000년(A등급) / 100년(A+B등급) / 10년(A+B+C전체)** 배율 스케일러

2. **통섭형 다차원 필터링 & 검색**
   - 지역(서양/중국/한국/기후), 8대 분야(정치, 인물, 제도, 종교, 과학, 예술, 기후, 경제), 중요도 등급(A/B/C)
   - 실시간 인물/사건 검색 및 연도 자동 점프

3. **이벤트 상세 사이드 패널**
   - 사건 요약, 역사적 의의, 배경(원인)과 결과(파급효과), 관련 인물 및 인과 연결 사건

4. **동시대 통섭 비교 뷰 (Synchronism Explorer)**
   - 특정 세기/연대를 선택하여 4개 권역의 동시대 사건을 4분할 화면으로 한눈에 비교

---

## 🛠️ 기술 스택

- **Frontend**: Next.js 14+ (App Router), TypeScript, Tailwind CSS, Lucide Icons
- **Database**: Supabase PostgreSQL (RLS & 복합 인덱스)
- **Deployment**: Netlify (`netlify.toml` + `@netlify/plugin-nextjs`)

---

## 🚀 로컬 실행

```bash
# 의존성 설치
npm install

# 개발 서버 실행
npm run dev

# 빌드 테스트
npm run build
```
브라우저에서 `http://localhost:3000`으로 접속하여 확인하실 수 있습니다.
