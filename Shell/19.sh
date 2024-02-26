#!/bin/bash

# Write a shell script to display the following menu and acts accordingly:
# i. Calendar of the current month and year.
# ii. Display “Good Morning/Good Afternoon/Good Evening” according to the  current login time.
# iii. User name, Users home directory.
# iv. Terminal name, Terminal type.
# v. Machine name.
# vi. No. of users who are currently logged in; List of users who are currently logged in.


while true; do
    echo "Menu:"
    echo "1. Calendar of the current month and year."
    echo "2. Display 'Good Morning/Good Afternoon/Good Evening' according to the current login time."
    echo "3. User name, Users home directory."
    echo "4. Terminal name, Terminal type."
    echo "5. Machine name."
    echo "6. No. of users currently logged in; List of users currently logged in."
    echo "7. Exit"
    
    read -p "Enter your choice (1-7): " choice
    
    case $choice in
        1)
            cal
        ;;
        2)
            current_hour=$(date +"%H")
            if [ "$current_hour" -ge 0 ] && [ "$current_hour" -lt 12 ]; then
                echo "Good Morning!"
                elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 17 ]; then
                echo "Good Afternoon!"
            else
                echo "Good Evening!"
            fi
        ;;
        3)
            echo "User name: $(whoami)"
            echo "Users home directory: $HOME"
        ;;
        4)
            echo "Terminal name: $TERM_PROGRAM"
            echo "Terminal type: $TERM"
        ;;
        5)
            echo "Machine name: $(hostname)"
        ;;
        6)
            echo "Number of users currently logged in: $(who | wc -l)"
            echo "List of users currently logged in:"
            who
        ;;
        7)
            echo "Exiting the script. Goodbye!"
            exit 0
        ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 7."
        ;;
    esac
done
