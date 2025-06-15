#!/bin/bash
git clone https://github.com/ian-knight-uofa/git-practice-02.git
cd git-practice-02
git checkout -b work
git fetch origin branch2 branch3
git checkout branch2
git merge branch3
git add .
git commit -m "Merged branch3 into branch2 and resolved conflicts"
git branch -d branch3
