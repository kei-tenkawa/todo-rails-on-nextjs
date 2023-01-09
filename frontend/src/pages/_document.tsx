import { Html, Head, Main, NextScript } from 'next/document'

// カスタムDocument
// https://nextjs-ja-translation-docs.vercel.app/docs/advanced-features/custom-document
export default function Document() {
  return (
    <Html lang="en">
      <Head>
        <meta name="description" content="研修で作成した純正RailsアプリにNext.jsを組み合わせてみた" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <body>
        <Main />
        <NextScript />
      </body>
    </Html>
  )
}
