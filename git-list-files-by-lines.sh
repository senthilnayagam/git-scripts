#!/bin/sh
# I have a large repo where xargs, and most common commands fail with "Argument list too long"
# replacement is parallel
 git --no-pager grep -I --name-only '' | parallel wc -l | sort -n
