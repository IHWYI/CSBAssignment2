#!/bin/bash
mkdir -p dir2
find . -maxdepth 1 -type f -name "*.txt" -exec mv {} dir2/ \;
git add -A
git commit -m "Move .txt files to dir2 and commit"
