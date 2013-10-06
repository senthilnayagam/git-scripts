
# if we need to do trial run, need to build upon
# for remote in `git branch -r | grep -v master `; do echo $remote ; done

for remote in `git branch -r | grep -v master `; do git checkout --track $remote ; done