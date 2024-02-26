#!/bin/bash

while true; do
    echo "Menu:"
    echo "1. List home directory"
    echo "2. Date"
    echo "3. Print working directory"
    echo "4. Users logged in"
    echo "5. Exit"
    read -p "Enter your choice (1-5): " choice
    
    case $choice in
        1)
            echo "Listing home directory:"
            ls -l ~
        ;;
        2)
            echo "Current date:"
            date
        ;;
        3)
            echo "Current working directory:"
            pwd
        ;;
        4)
            echo "Users logged in:"
            who
        ;;
        5)
            echo "Exiting the script. Goodbye!"
            exit 0
        ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
        ;;
    esac
    
    echo
done
