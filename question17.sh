#!/bin/bash
cd git-practice-03

# main
git checkout main
mkdir -p dir1/dir2 dir3
touch dir1/dir2/foo dir3/bar dir3/bar_copy LICENSE README.md
git add .
git commit -m "Setup main structure"

# branch1
git checkout -b branch1
rm -rf dir1/dir2 dir3/bar_copy
mkdir -p dir1
touch dir1/foo newfile1
git add .
git commit -m "Setup branch1 structure"

# branch2
git checkout main
git checkout -b branch2
mv dir1/dir2/foo dir1/dir2/foo_modified
mkdir -p dir1/dir3
touch dir1/dir3/newfile2
git add .
git commit -m "Setup branch2 structure"
