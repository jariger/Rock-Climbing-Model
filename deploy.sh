#!/bin/bash

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

# Create or switch to gh-pages branch
git branch -M gh-pages

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:jariger/Rock-Climbing-Model.git gh-pages

cd -
