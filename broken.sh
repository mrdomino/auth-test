#!/bin/sh

set -eux

export NODE_ENV=production
export NEXTAUTH_URL=http://localhost:3000
export NEXTAUTH_SECRET=1

bun i
bun run build
cp -a .next/static .next/standalone/.next/static
cp -a .env.local .next/standalone

exec bun .next/standalone/server.js
