#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <date>"
    exit 1
fi

input_date="$1"

# Check if the input date is in a valid format (YYYY-MM-DD)
if ! echo "$input_date" | grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'; then
    echo "Error: Invalid date format. Please use YYYY-MM-DD."
    exit 1
fi

# Get the day of the week (1-7, where 1 is Monday and 7 is Sunday)
day_of_week=$(date -d "$input_date" +%u)

if [ "$day_of_week" -ge 1 ] && [ "$day_of_week" -le 5 ]; then
    echo "$input_date is a weekday (Monday to Friday)."
else
    echo "$input_date is a weekend day (Saturday or Sunday)."
fi
