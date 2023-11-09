#!/bin/sh
set -eux

export NODE_ENV=production
export NEXTAUTH_URL=http://localhost:3000
export NEXTAUTH_SECRET=1

source $1.env

rm -rf .next
$PKG
$BUILD
cp -a .next/static .next/standalone/.next/static
cp .env.local .next/standalone
exec $SERVE .next/standalone/server.js
