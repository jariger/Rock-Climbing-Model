#!/bin/bash

# abort on errors
set -e

# Navigate to your project root directory
cd ~/Desktop/Rock-Climbing-Model

# Remove any existing Git repository in dist
rm -rf dist/.git

# Build the project
npm run build

# Navigate to dist directory
cd dist

# Initialize a new Git repository and switch to gh-pages branch
git init
git add -A
git commit -m 'deploy'
git branch -M gh-pages

# Force push to the gh-pages branch
git push -f git@github.com:jariger/Rock-Climbing-Model.git gh-pages

cd -
