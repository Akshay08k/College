#!/bin/bash

find . -type f -exec du -h {} + | sort -rh | head -n 5 | awk '{ printf "%-10s%-10s%s\n", $1, $2, $3 }'
