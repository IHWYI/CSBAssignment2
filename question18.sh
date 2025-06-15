#!/bin/bash
cd git-practice-04

git checkout main
git fetch --all

# Merge all ready* branches to main and delete them
for branch in $(git branch -r | grep origin/ready | sed 's|origin/||'); do
  git checkout main
  git merge $branch --no-edit
  git branch -d $branch
done

# Update all update* branches
for branch in $(git branch -r | grep origin/update | sed 's|origin/||'); do
  git checkout $branch
  git merge main --no-edit
done
