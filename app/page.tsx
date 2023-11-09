import { getServerSession } from 'next-auth'
import { authOptions } from '@/lib/authOptions'
import Auth from './components/Auth'
import ClientApp from './components/ClientApp'
import styles from './page.module.css'

export default async function Home() {
  const session = await getServerSession(authOptions)
  return (
    <main className={styles.main}>
      <ClientApp session={session}>
        <Auth/>
      </ClientApp>
    </main>
  )
}
