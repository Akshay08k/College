#!/bin/bash

for file in *; do
    if [ -s "$file" ]; then
        echo "$file is not zero-sized, skipping..."
    else
        rm "$file"
        echo "Removed zero-sized file: $file"
    fi
done
