#!/bin/sh
# generate files
hugo -s resource-hugo
ls -alt resource-hugo/public
mv resource-hugo/public resource-hugo/public_modified
cd resource-hugo
ls -lat 

# cd resource-hugo/public
# git add .
