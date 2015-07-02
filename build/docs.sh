#!/bin/bash

# Build and push docs to gh-pages
START_BRANCH=`git rev-parse --abbrev-ref HEAD`
PUBLISH_BRANCH=gh-pages

npm run docs
git add docs
git commit -m "Latest documentation"
git checkout $PUBLISH_BRANCH
git rebase $START_BRANCH
git push origin $PUBLISH_BRANCH
git checkout $START_BRANCH