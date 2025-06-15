#!/bin/bash
git fetch
git checkout branch1
git switch main
git merge branch1
git add <resolved_files>
git commit -m "Merged branch1 with conflict resolution"