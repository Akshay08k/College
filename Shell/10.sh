#!/bin/bash

current_hour=$(date +"%H")

if [ "$current_hour" -ge 0 ] && [ "$current_hour" -lt 12 ]; then
    echo "Good morning! Have a wonderful day."
    elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 17 ]; then
    echo "Good afternoon! Hope you're having a great day."
else
    echo "Good evening! Wishing you a pleasant evening."
fi
