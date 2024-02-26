#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ ! -e "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

awk '{ for(i=1;i<=NF;i++) $i=tolower($i) } { print $0 }' "$filename" > "$filename.tmp"

mv "$filename.tmp" "$filename"

echo "Contents of $filename toggled successfully."
