#!/usr/bin/env sh

# Dừng khi lỗi
set -e

# Build project
npm run build

# Vào thư mục dist
cd dist

# Push lên GitHub Pages
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/diznhin/portfolio-dieuhien main:gh-pages

cd -