#!/bin/bash

echo "Executable files with .sh extension in the current directory:"

for file in *.sh
do
    if [ -x "$file" ]
    then
        echo "$file"
    fi
done
