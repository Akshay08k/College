#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <friend_username>"
    exit 1
fi

friend_username=$1

if who | grep -wq "$friend_username"; then
    echo "Hey $friend_username, how about dinner tonight? :)" > "/dev/$friend_username"
else
    echo "Subject: Dinner Proposal" > proposal.txt
    echo "" >> proposal.txt
    echo "Hey $friend_username," >> proposal.txt
    echo "" >> proposal.txt
    echo "How about dinner tonight? :)" >> proposal.txt
    
    sendmail "$friend_username" < proposal.txt
    
    rm proposal.txt
fi
