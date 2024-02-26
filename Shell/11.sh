#!/bin/bash

countd=0
countf=0

for i in *
do
    if [ -d "$i" ]; then
        countd=$((countd + 1))
    fi

    if [ -f "$i" ]; then
        countf=$((countf + 1))
    fi
done

echo "Number of ordinary files: $countf"
echo "Number of directory files: $countd"
