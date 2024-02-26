#!/bin/bash

echo "Enter a filename:"
read filename

if [ -d "$filename" ]; then
    echo "Contents of the directory:"
    ls -l "$filename"
else
    echo "File is not a directory file."
fi
