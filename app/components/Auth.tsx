'use client'

import { signIn, signOut, useSession } from 'next-auth/react'

export default function Auth() {
  const { data: session } = useSession()

  return (
    <>
      {!!session || (
        <button onClick={() => { signIn('github') }}>
          Sign in
        </button>
      )}
      {!!session && (
        <button onClick={() => { signOut() }}>
          Sign out
        </button>
      )}
    </>
  )
}
