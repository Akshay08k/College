#!/bin/bash

echo "Select an option:"
echo "1. Display hidden files"
echo "2. Delete directory with files"
echo "3. Interactive copying"
echo "4. Interactive deletion of files"
echo "5. Explain two functionalities of 'mv' command"

read option

case $option in
    1)
        ls -a
    ;;
    
    2)
        echo "Enter the directory name to delete:"
        read dir_name
        rm -r "$dir_name"
    ;;
    
    3)
        echo "Enter source file/directory:"
        read source
        echo "Enter destination directory:"
        read destination
        cp -i "$source" "$destination"
    ;;
    
    4)
        echo "Enter file(s) to delete:"
        read files_to_delete
        rm -i $files_to_delete
    ;;
    
    5)
        echo "a. Move a file/directory to a new location:"
        echo "   Enter source:"
        read mv_source
        echo "   Enter destination:"
        read mv_destination
        mv "$mv_source" "$mv_destination"
        
        echo "b. Rename a file/directory:"
        echo "   Enter current name:"
        read current_name
        echo "   Enter new name:"
        read new_name
        mv "$current_name" "$new_name"
    ;;
    
    *)
        echo "Invalid option"
    ;;
esac
