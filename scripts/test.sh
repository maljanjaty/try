#!/usr/bin/env sh

echo 'Test stage running'

set -x
# npm install --save-dev cross-env
set +x

set -x
npm test
echo 'Test stage completed'
