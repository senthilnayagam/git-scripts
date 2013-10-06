#!/bin/sh
# sh git-keyword-stats.sh *.rb
git ls-files -- $1 | xargs cat | tr  [:punct:] ' ' | tr [:space:] '\n' | sort | uniq -c | sort -n


#echo $1