#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

input_file="$1"

if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found."
    exit 1
fi

tr -d ' ' < "$input_file" > "$input_file"_nospace.txt
echo "Spaces removed from '$input_file'. Result saved in '$input_file'_nospace.txt"
