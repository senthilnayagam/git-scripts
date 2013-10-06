# wc -l $(git ls-files | grep rb$) | sort | sed -e 's/^[ \t]*//' | grep '^0'

find . -type f -exec stat -f "%z %N" {} \; | grep '^0'