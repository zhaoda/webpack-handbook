#!/bin/bash

cp -a content webpackdoc
cd webpackdoc

rm -rf _book

git init

git add .
git commit -m "Publish to webpackdoc.com"

git remote add origin ssh://webpackdoc.com/home/git/zhaoda/webpack-handbook.git

git push --force origin master:master

cd ..
rm -rf webpackdoc
