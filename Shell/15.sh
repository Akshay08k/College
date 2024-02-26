#!/bin/bash

echo "Subdirectories in the current working directory:"
for dir in */
do
    if [ -d "$dir" ]; then
        echo "$dir"
    fi
done
