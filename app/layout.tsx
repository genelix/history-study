import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "HistoryGrid ― 통섭형 세계사 연대표",
  description: "하나의 시간축에서 한국·중국·서양의 정치, 인물, 제도, 종교, 과학, 예술, 기후환경을 동시에 비교하는 역사 탐색 플랫폼 (https://historygrid.netlify.app)",
  keywords: ["역사", "연대표", "한국사", "중국사", "서양사", "통섭", "HistoryGrid", "세계사"],
  metadataBase: new URL("https://historygrid.netlify.app"),
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="ko" className="dark h-full" suppressHydrationWarning>
      <body
        suppressHydrationWarning
        className={`${inter.className} h-full bg-slate-950 text-slate-100 overflow-hidden antialiased`}
      >
        {children}
      </body>
    </html>
  );
}
