# Write a shell script that displays the following menu and acts accordingly
# 1. Concatenates twostrings
# 2. Renames afile
# 3. Deletes afile.
# 4. Copy the file to specific location

#!/bin/bash

while true; do
    # Display menu
    echo "Menu:"
    echo "1. Concatenate two strings"
    echo "2. Rename a file"
    echo "3. Delete a file"
    echo "4. Copy the file to a specific location"
    echo "5. Exit"
    read -p "Enter your choice (1-5): " choice
    
    case $choice in
        1)
            # Concatenate two strings
            read -p "Enter the first string: " str1
            read -p "Enter the second string: " str2
            concatenated_str="${str1}${str2}"
            echo "Concatenated string: $concatenated_str"
        ;;
        2)
            # Rename a file
            read -p "Enter the current filename: " current_filename
            read -p "Enter the new filename: " new_filename
            mv "$current_filename" "$new_filename"
            echo "File renamed successfully."
        ;;
        3)
            # Delete a file
            read -p "Enter the filename to delete: " file_to_delete
            rm "$file_to_delete"
            echo "File deleted successfully."
        ;;
        4)
            # Copy file to specific location
            read -p "Enter the filename to copy: " file_to_copy
            read -p "Enter the destination directory: " destination_directory
            cp "$file_to_copy" "$destination_directory"
            echo "File copied successfully to $destination_directory."
        ;;
        5)
            echo "Exiting the script. Goodbye!"
            exit 0
        ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
        ;;
    esac
done
