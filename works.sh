#!/bin/sh

set -eux

export NODE_ENV=production
export NEXTAUTH_URL=http://localhost:3000
export NEXTAUTH_SECRET=1

yarn build
cp -a .next/static .next/standalone/.next/static
cp -a .env.local .next/standalone

exec node .next/standalone/server.js
