#!/bin/bash
cd git-practice-01
git fetch origin branch1
git checkout main
git merge origin/branch1 --no-edit
git add .
git commit -m "Merged branch1 into main and resolved conflicts"
