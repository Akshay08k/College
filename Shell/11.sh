#!/bin/bash

countd=0
countf=0

for i in *
do
    if [ -d "$i" ]; then
        countd=`expr $countd + 1`
    fi
    
    if [ -f "$i" ]; then
        countf=`expr $countf + 1`
    fi
done

echo "Number of directory files: $countd"
echo "Number of ordinary files: $countf"
