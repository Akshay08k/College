#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <file1> <file2> <output_file>"
    exit 1
fi

file1="$1"
file2="$2"
output_file="$3"

paste "$file1" "$file2" > "$output_file"_horizontal.txt
echo "Files combined horizontally. Result saved in '$output_file'_horizontal.txt"

cat "$file1" "$file2" > "$output_file"_vertical.txt
echo "Files combined vertically. Result saved in '$output_file'_vertical.txt"
    