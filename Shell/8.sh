#!/bin/bash
## !!!!!!!CAREFULLY EXECUTE THHIS SCRIPT THIS CAN DELETE ALL FILES IN YOUR DIRECTORY
for i in *
do
    if [ -s "$i" ]
    then
        rm "$i"
        echo "$i Removed"
    fi
done
