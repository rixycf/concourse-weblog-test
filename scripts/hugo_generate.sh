#!/bin/sh
# generate files
set -e
set -x

hugo -s resource-hugo
cd resource-hugo
pwd

cd public
# git pull
echo "test" >> test.txt
git config --global user.email "kasnake1013@gmail.com"
git config --global user.name "rixycf"
git status
git add .
git commit -m "concourse test"

cd ..

git clone public ../public_modified
# cd ../public_modified
#
# echo "test" >> test.txt
# pwd
#
# git config --global user.email "kasnake1013@gmail.com"
# git config --global user.name "rixycf"
# git status
# git add .
# git commit -m "concourse test"

