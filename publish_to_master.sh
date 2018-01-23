# publish_to_master.sh
#!/bin/sh

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public
git worktree prune
rm -rf .git/worktrees/public/
mkdir public

echo "Checking out master branch into public"
git worktree add -B master public origin/master

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo -D server

echo "Enter public dicrectory and run git add -all"
cd public && git add --all

echo "Commit and push code to git"
git commit -m "Publish to master (publish.sh)" && git push
