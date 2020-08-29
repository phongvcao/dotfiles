#!/bin/bash
# BASE=$1
# REMOTE=$2
# LOCAL=$3
# MERGED=$4
# command nvim -d $1 $2 $3 $4
# command nvim -f -c "4wincmd w | normal! 'gg100000dd' | diffoff" -d "$BASE" "$REMOTE" "$LOCAL" "$MERGED"
command nvim -f -c "1wincmd w" -c "diffoff" -c "4wincmd w | normal! gg100000dd" -d "$1" "$2" "$3" "$4" -c 'diffoff'
