#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1="$1"
file2="$2"

if [ ! -e "$file1" ] || [ ! -e "$file2" ]; then
    echo "Error: Both files must exist."
    exit 1  
fi

if cmp -s "$file1" "$file2"; then
    echo "Contents of $file1 and $file2 are the same. Deleting $file2."
    rm "$file2"
else
    echo "Contents of $file1 and $file2 are different."
fi
