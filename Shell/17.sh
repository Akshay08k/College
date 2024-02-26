#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1="$1"
file2="$2"

if [ -f "$file1" ] && [ -f "$file2" ]; then
    cat "$file2" >> "$file1"
    echo "Content of $file2 appended to $file1"
else
    echo "One or both files do not exist."
fi
