# Branch1 setup
git checkout -b branch1
rm -rf dir1/dir2
mv dir1/dir2/foo dir1/
rm dir3/bar_copy
touch newfile1
git add .
git commit -m "Updated branch1 structure"

# Branch2 setup
git checkout main
git checkout -b branch2
mv dir1/dir2/foo dir1/dir2/foo_modified
mkdir -p dir1/dir3
touch dir1/dir3/newfile2
rm -rf dir3
git add .
git commit -m "Updated branch2 structure"
