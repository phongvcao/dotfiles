#!/bin/sh

# for d in */ ; do
    # HOME=$(pwd)/$d;
    # echo $d;
    # Remove the comment by your need 
    # megasync                    # first run (configure client by client at once)
    # megasync 2> /dev/null &     # load all clients at non blocking way
# done

megasync &
HOME=${HOME}/MEGA_1 megasync &
