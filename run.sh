#!/bin/sh
set -eux

case $1 in
  *good*)
    SERVE='bun'
    shift
    ;;
  *)
    SERVE='bun --bun'
    shift
    ;;
esac

export NODE_ENV=production
export NEXTAUTH_URL=http://localhost:3000
export NEXTAUTH_SECRET=1

bun i
bun run build
exec $SERVE start
