#!/bin/bash
cd git-practice-02
git checkout branch2
git merge branch3 --no-edit
git add .
git commit -m "Merged branch3 into branch2 and resolved conflicts"
git branch -d branch3
