import '../styles/globals.css'
import type { AppProps } from 'next/app'

// カスタムApp
// https://nextjs-ja-translation-docs.vercel.app/docs/advanced-features/custom-app
export default function App({ Component, pageProps }: AppProps) {
  return <Component {...pageProps} />
}
