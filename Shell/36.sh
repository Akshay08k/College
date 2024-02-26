#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

username=$1

if who | grep -wq "$username"; then
    echo "$username is currently logged in."
else
    echo "$username is not currently logged in."
fi
