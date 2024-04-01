#!/bin/bash
shopt -s globstar dotglob
for f in **/*; do
    if [ -d $f ]; then
        if [ -f $f/package.xml ]; then
            touch $f/COLCON_IGNORE
        fi
    fi
done;
