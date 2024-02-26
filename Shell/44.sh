#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <character>"
    exit 1
fi

start_char=$1

echo "Files starting with '$start_char':"
ls -p | grep "^$start_char"
