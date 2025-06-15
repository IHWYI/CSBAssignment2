#!/bin/bash
git fetch
git checkout branch2
git merge branch3
git add .
git commit -m "Merge branch3 into branch2"
git branch -d branch3