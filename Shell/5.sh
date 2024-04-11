echo "1..create a file and stores values in it"
echo "2..display the contents of files"
echo "3..delete Directories"
echo "4..sort a numeric File"
echo "5..change the permission of file to 666"
echo "Enter your choice"
read choice
case $choice in
    1)
        echo "Creating filleee..."
        touch file.txt
        echo "Name : Akshay \n Age : 20 \n Location : Ahmedabad" > file.txt
        echo "Done."
    ;;
    2)
        cat file.txt
    ;;
    3)
        mkdir test_dir
        echo "created test_dir for testing visit the folder now(IT DELETED AFTER 10 SECONDS)"
        sleep 10
        rm -rf test_dir
    ;;
    4)
        sort numeric.txt > sorted_numeric.txt
    ;;
    5)
        chmod 666 file.txt
    ;;
    *)
        echo "Invalid Choice"
    ;;
esac
