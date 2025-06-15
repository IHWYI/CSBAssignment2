git branch -a
git checkout main
for branch in $(git branch -r | grep 'ready'); do
    git merge $branch
done

for branch in $(git branch -r | grep 'ready'); do
    git branch -d ${branch#origin/}
done

for branch in $(git branch -r | grep 'update'); do
    git checkout ${branch#origin/}
    git merge main
    git checkout main
done
