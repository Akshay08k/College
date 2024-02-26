#!/bin/bash

# 18 Write a shell script that takes the name of two files as arguments and performs
# the following:
# i. Displays the message :
# “Displaying the contents of file :( first argument)”
# and displays the contents page wise.
# ii. Copies the contents of the first argument to second argument.
# iii. Finally displays the message: “File copied successfully.”


if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1="$1"
file2="$2"

# i. Displaying the contents of file (file1)
echo "Displaying the contents of file: $file1"
more "$file1"

# ii. Copy the contents of the first argument to the second argument
cp "$file1" "$file2"

# iii. Display the message: "File copied successfully."
echo "File copied successfully."
