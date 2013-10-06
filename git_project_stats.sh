
echo "tatal commits: " `git rev-list HEAD --count`


echo "total files: " `git ls-files | wc -l`


echo "commits commiter"

git shortlog -s | sort -nr


#git --no-pager shortlog