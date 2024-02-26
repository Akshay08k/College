#!/bin/bash

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 m1 m2"
    exit 1
fi

m1=$1
m2=$2

# Check if input months are valid
if [ "$m1" -lt 1 ] || [ "$m1" -gt 12 ] || [ "$m2" -lt 1 ] || [ "$m2" -gt 12 ]; then
    echo "Invalid month(s). Month should be between 1 and 12."
    exit 1
fi

# Function to display calendar for given month
display_calendar() {
    cal $1 $2
}

# Check if the input is in the form 'CAL m1, m2'
if [ "$m1" -ne "$m2" ]; then
    display_calendar $m1 $m2
    
    # Check if the input is in the form 'CAL m1-m2'
else
    display_calendar $m1
fi
