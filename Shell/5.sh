#!/bin/bash

echo "Select an option:"
echo "1. Create a file called text and store name, age, and address in it."
echo "2. Display the contents of the file text on the screen."
echo "3. Delete the directories mydir and newdir at once."
echo "4. Sort a numeric file."
echo "5. Change the permissions for the file newtext to 666."

read option

case $option in
    1)
        echo "John Doe, 25, 123 Main Street" > text.txt
        echo "File 'text' created with sample information."
    ;;
    
    2)
        echo "Contents of 'text' file:"
        cat text
    ;;
    
    3)
        echo "Deleting directories mydir and newdir at once."
        rm -r mydir newdir
    ;;
    
    4)
        echo -e "5\n2\n10\n1\n7" > numericfile
        echo "Contents of 'numericfile' before sorting:"
        cat numericfile
        sort -n -o numericfile numericfile
        echo "Contents of 'numericfile' after sorting numerically:"
        cat numericfile
    ;;
    
    5)
        touch newtext
        chmod 666 newtext
        echo "Permissions for 'newtext' changed to 666."
        ls -l newtext
    ;;
    
    *)
        echo "Invalid option"
    ;;
esac
