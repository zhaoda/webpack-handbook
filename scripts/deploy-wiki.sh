#!/bin/bash
# this script expects that a gh-pages build exists already
# adapted from https://gist.github.com/domenic/ec8b0fc8ab45f39403dd

# go to the out directory and create a *new* Git repo
cd wiki

# Remove possible existing git repo. We'll replace entire wiki
rm -rf .git
rm -rf _book
rm -rf node_modules

# Init new repo
git init

# The first and only commit to this new Git repo contains all the
# files present with the commit message "Deploy to GitHub Pages".
git add .
git commit -m "Deploy to Wiki"

# Add origin
git remote add origin git@github.com:zhaoda/webpack-handbook.wiki.git

# Force push from the current repo's master branch to the remote
# (All previous history on the master branch will be lost, since we are overwriting it.)
git push --force origin master:master