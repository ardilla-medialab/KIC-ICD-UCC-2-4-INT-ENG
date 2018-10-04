#!/usr/bin/env bash

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:EL-BID/InstagramWall.git master:gh-pages

#git remote add origin https://github.com/ardilla-medialab/.git
git remote add origin git@github.com:ardilla-medialab/KIC-ICD-UCC-2-4-INT-LIVE.git
git push -f -u origin master

cd -