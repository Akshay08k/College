#!/bin/bash

echo "Enter the filename here:"
read filename

if [ -e "$filename" ]; then
    last_modified_time=$(stat -c %y $filename)
    echo "Last Modification Time of $filename: $last_modified_time"
else
    echo "File '$filename' does not exist."
fi
