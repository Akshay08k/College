#!/bin/bash

if [ -f "$1" ]; then
    echo "It's an ordinary file"
    cat "$1"
else
    echo "File does not exist"
fi


# This program requires command line arguments
# to run this program "sh ./12.sh <you have to pass 2 files names here>"
# Example sh ./12.sh 4.sh 3.sh