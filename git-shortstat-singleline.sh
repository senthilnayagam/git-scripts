git --no-pager log  --no-merges --oneline --shortstat | awk '{key=$0; getline; print key " |" $0;}'
