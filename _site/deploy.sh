#!/bin/sh

git pull --rebase origin responsive_revamp
rm -rf _site/*
jekyll build
git add --all
git commit -m "Update build - `date -u`"
git subtree push --prefix _site 5apps master
