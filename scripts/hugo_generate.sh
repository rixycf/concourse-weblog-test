#!/bin/sh
# generate files
hugo -s resource-hugo
ls -alt resource-hugo/public
git clone public public_modified
cd public_modified
git add .
git commit -m "concourse test"
# mv resource-hugo/public resource-hugo/public_modified
ls -lat 

# cd resource-hugo/public
# git add .
