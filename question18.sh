#!/bin/bash
git fetch
for b in $(git branch -r | grep ready | sed 's/origin\///'); do
  git checkout main
  git merge "$b"
  git branch -d "$b"
done
for b in $(git branch -r | grep update | sed 's/origin\///'); do
  git checkout "$b"
  git merge main
done