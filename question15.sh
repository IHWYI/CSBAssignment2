#!/bin/bash
git clone https://github.com/ian-knight-uofa/git-practice-01.git
cd git-practice-01
git checkout -b work
git fetch origin branch1
git merge origin/branch1
git add .
git commit -m "Merged branch1 into main and resolved conflicts"
