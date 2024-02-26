#!/bin/bash

# Check if a file is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

# Check if the file exists
if [ ! -e "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

while true; do
    # Display menu
    echo "Menu:"
    echo "1. Display all words of the file in ascending order."
    echo "2. Display the file in descending order."
    echo "3. Toggle all characters in the file."
    echo "4. Display the type of the file."
    echo "5. Exit"
    
    # Read user choice
    read -p "Enter your choice (1-5): " choice
    
    case $choice in
        1)
            echo "Displaying all words of the file in ascending order:"
            cat "$filename" | tr -s '[:space:]' '\n' | sort
        ;;
        2)
            echo "Displaying the file in descending order:"
            tac "$filename"
        ;;
        3)
            echo "Toggling all characters in the file:"
            tr 'a-zA-Z' 'A-Za-z' < "$filename"
        ;;
        4)
            echo "Displaying the type of the file:"
            file -b "$filename"
        ;;
        5)
            echo "Exiting the script."
            exit 0
        ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
        ;;
    esac
done
