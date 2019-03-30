rem git filter-branch -f --env-filter "export GIT_COMMITTER_NAME='coffeeblossom' export GIT_AUTHOR_NAME='coffeeblossom' export GIT_COMMITTER_EMAIL='' export GIT_AUTHOR_EMAIL=''" --tag-name-filter cat -- --branches --tags
rem https://stackoverflow.com/questions/13716658/how-to-delete-all-commit-history-in-github
git checkout --orphan latest
git add -A
git commit -am "I love coffee"
git branch -D master
git branch -m master
git push -f origin master