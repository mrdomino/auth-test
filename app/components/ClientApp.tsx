'use client'

import { SessionProvider } from 'next-auth/react'
import type { Session } from 'next-auth'

interface Props {
  session: Session | null
}

const ClientApp: React.FC<React.PropsWithChildren<Props>> = ({
  children,
  session,
}) => {
  return (
    <SessionProvider session={session}>
      {children}
    </SessionProvider>
  )
}

export default ClientApp
