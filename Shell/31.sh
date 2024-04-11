#!/bin/bash

# if [ $# -lt 2 ]; then
#     echo "Usage: $0 <word_to_search> <file1> [<file2> ...]"
#     exit 1
# fi

# word_to_search="$1"

# echo "Searching for '$word_to_search' in the following files: $@"

# for file in "$@"; do
#     if [ -f "$file" ]; then
#         grep -q "$word_to_search" "$file"
#         if [ $? -eq 0 ]; then
#             echo "Found '$word_to_search' in $file"
#         else
#             echo "Did not find '$word_to_search' in $file"
#         fi
#     fi
# done
echo "Enter the word"
read word
for file in *
do 
    if [ -f "$file" ]; then
        grep "$word" "$file"
    fi
done
