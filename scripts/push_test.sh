#!/bin/sh
#実行中のコマンドを表示
set -e
set -x

git clone script-files modify_repo
cd modify_repo

echo $(date) >> bumpme.txt

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"

