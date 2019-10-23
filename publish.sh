#!/bin/bash

set -ex

rm -rf public

hugo

cd public

git init
git remote add gh git@github.com:DanNixon/dannixon.github.io.git
git add .
git commit -m 'Build'

git push --force gh master
