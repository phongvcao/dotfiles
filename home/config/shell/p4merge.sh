#!/bin/bash
# BASE=$1
# REMOTE=$2
# LOCAL=$3
# MERGED=$4
# command nvim -d $1 $2 $3 $4
# command nvim -f -c "4wincmd w | normal! 'gg100000dd' | diffoff" -d "$BASE" "$REMOTE" "$LOCAL" "$MERGED"
command nvim -f -c "4wincmd w" -c "diffoff" -d "$1" "$2" "$3" "$4" -c 'diffoff' -c "1wincmd w" -c "set readonly" -c "diffoff" -c "2wincmd w" -c "set readonly" -c '3wincmd w' -c "set readonly"
