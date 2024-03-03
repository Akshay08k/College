# Sorting the abc txt 
echo "sorting the abc file.."
sort abc.txt > xyz.txt
echo "abc file sorted result stored in xyz"

# to execute two commands together you can use semicolumn or pipeing
echo "Executing Two Commands"
ls ;whoami

# \n Used for new line
echo "These is \n three line \n text message"

# Uname is the command to get system Info
echo "The version of linux is : " ;uname -a

# man command to get help of any command
echo "Help of cat commmand using man"
man cat