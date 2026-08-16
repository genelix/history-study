import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "ChronoScope ― 통섭형 세계사 연대표",
  description: "하나의 시간축에서 한국·중국·서양의 정치, 인물, 제도, 종교, 과학, 예술, 기후환경을 동시에 비교하는 역사 탐색 플랫폼",
  keywords: ["역사", "연대표", "한국사", "중국사", "서양사", "통섭", "ChronoScope", "세계사"],
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="ko" className="dark h-full">
      <body className={`${inter.className} h-full bg-slate-950 text-slate-100 overflow-hidden antialiased`}>
        {children}
      </body>
    </html>
  );
}
