#!/bin/bash

cd
y="111666666"
c='c'
for i in $(ls)
do
    if [ -f "$i" ]; then
        x=$(echo "$i" | cut -c 1)
        if [ "$x" = "$c" ]; then
            mv -f "$i" "$i$y"
        fi
    fi
done
