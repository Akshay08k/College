#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

if [ ! -e "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

permissions=$(ls -l "$filename" | awk '{print $1}')
echo "Permissions of '$filename': $permissions"
