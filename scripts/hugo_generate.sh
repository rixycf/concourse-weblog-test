#!/bin/sh
# generate files
hugo -s resource-hugo
cd resource-hugo
pwd

git clone public public_modified
cd public_modified
pwd
git config --global user.email "kasnake1013@gmail.com"
git config --global user.name "rixycf"
git add .
git commit -m "concourse test"
# mv resource-hugo/public resource-hugo/public_modified
ls -lat 

# cd resource-hugo/public
# git add .
