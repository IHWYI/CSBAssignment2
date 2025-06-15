#!/bin/bash
git clone https://github.com/ian-knight-uofa/git-practice-03.git
cd git-practice-03

# main branch
git checkout -b main-structure

mkdir -p dir1/dir2
mkdir -p dir3
touch dir1/dir2/foo dir3/bar dir3/bar_copy LICENSE README.md
git add .
git commit -m "Set up main structure"

# branch1
git checkout -b branch1 main-structure
rm -rf dir1/dir2 dir3/bar_copy
mkdir -p dir1
touch dir1/foo newfile1
git add .
git commit -m "Setup branch1 structure"

# branch2
git checkout -b branch2 main-structure
mv dir1/dir2/foo dir1/dir2/foo_modified
mkdir -p dir1/dir3
touch dir1/dir3/newfile2
git add .
git commit -m "Setup branch2 structure"
