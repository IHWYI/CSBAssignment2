#!/bin/bash
git clone https://github.com/ian-knight-uofa/git-practice-04.git
cd git-practice-04

# Fetch all remote branches
git fetch --all

# Merge all ready* branches into main and delete them
git checkout main
for branch in $(git branch -r | grep origin/ready | sed 's|origin/||'); do
  git merge $branch
  git branch -d $branch
done

# Update all update* branches with latest main
for branch in $(git branch -r | grep origin/update | sed 's|origin/||'); do
  git checkout $branch
  git merge main
done
