#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <friend_username>"
    exit 1
fi

friend_username=$1

if who | grep -wq "$friend_username"; then
    echo "Hey $friend_username, how about dinner tonight? :)" > "/dev/$friend_username"
else
    echo "Hey $friend_username, how about dinner tonight? :)" | mail -s "Dinner Proposal" "$friend_username"
fi
