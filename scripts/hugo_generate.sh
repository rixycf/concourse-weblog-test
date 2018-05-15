#!/bin/sh
# generate files
set -e
set -x

hugo -s resource-hugo
cd resource-hugo
pwd

git clone public public_modified
cd public_modified
pwd

git config --global user.email "kasnake1013@gmail.com"
git config --global user.name "rixycf"
git status
git add .
git commit -m "concourse test"

# cd resource-hugo/public
# git add .
