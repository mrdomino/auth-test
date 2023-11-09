#!/bin/sh
# Works:
#     ./run.sh node
#
# Broken:
#     ./run.sh bun
set -eux

export NODE_ENV=production
export NEXTAUTH_URL=http://localhost:3000
export NEXTAUTH_SECRET=1

rm -rf .next
bun i
bun run build
cp -a .next/static .next/standalone/.next/static
cp .env.local .next/standalone
exec $1 .next/standalone/server.js
