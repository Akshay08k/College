#!/bin/bash

# Navigate to the home directory
cd "$HOME" || exit

# Rename all files starting with 'c'
for file in c*; do
    mv "$file" "${file}111"
    echo "Renamed $file to ${file}111"
done
