#!/usr/bin/env sh

set -x
npm run build
set +x

set -x
npm start &
sleep 1
echo $! > .pidfile
set +x

echo 'Visit http://localhost:5000 to see your Node.js application in action.'

