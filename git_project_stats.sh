
echo "tatal commits: " `git rev-list HEAD --count`


echo "total files: " `git ls-files | wc -l`


echo "commits commiter"

git shortlog -s | sort -nr


#git --no-pager shortlog

echo "first commit"
git --no-pager log $(git log --reverse --pretty=format:%H|head -1)



echo "last commit"
git --no-pager log -1


