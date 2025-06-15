# Create branch1
git checkout -b branch1
rm -r dir1/dir2
mkdir -p dir3
touch dir3/bar
rm dir3/bar_copy
touch newfile1
git add .
git commit -m "Updated branch1 structure"

# Create branch2
git checkout main
git checkout -b branch2
mv dir1/dir2/foo dir1/dir2/foo_modified
mkdir -p dir1/dir3
touch dir1/dir3/newfile2
rm -r dir3
git add .
git commit -m "Updated branch2 structure"
