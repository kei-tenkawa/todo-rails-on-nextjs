import Head from 'next/head'
import { Inter } from '@next/font/google'
import styles from '../styles/Home.module.css'

const inter = Inter({ subsets: ['latin'] })

export default function Home() {
  return (
    <>
      <Head>
        <title>ToDo for Next.js!</title>
      </Head>
      <main className={styles.main}>
        テスト文字列だよ
        これも一応付け加えておく
      </main>
    </>
  )
}
