#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m"New deployment"
git push -f git@github:acpopper/vue-weather-tutorial.git master:gh-pages

cd -