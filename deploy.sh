#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run clean-build-public
npm run build-public

# navigate into the build output directory
cd build/public

# if you are deploying to a custom domain
echo 'pergler.eu' > CNAME

git init -b main
git add -A
git commit -m 'Deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/jpergler/jpergler.github.io.git main:publish/pages

cd -