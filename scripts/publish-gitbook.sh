#!/bin/bash

cp -a content gitbook
cd gitbook

rm -rf _book
rm -rf node_modules

git init

git add .
git commit -m "Publish to GitBook"

git remote add origin https://git.gitbook.com/zhaoda/webpack.git

git push --force origin master:master

cd ..
rm -rf gitbook
