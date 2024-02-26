#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

if [ -e "$filename" ] && [ -x "$filename" ]; then
    echo "File exists and is executable."
else
    echo "File does not exist or is not executable."
fi
