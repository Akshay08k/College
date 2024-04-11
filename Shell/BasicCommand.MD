# Basic Linux Commands

### Navigation and File Management

- `ls`: List directory contents.

  - `ls --help`: Display help for the `ls` command.

- `pwd`: Print the current working directory.

- `cd`: Change the current directory.

- `touch`: Create an empty file.

- `chown`: Change the ownership of a file or directory.

- `chmod`: Change the permissions of a file or directory (e.g., `chmod 777` grants all permissions).

- `whoami`: Print the currently logged-in user.

- `cat`: Display the contents of a file in the terminal.

- `tail`: Display the last few lines of a file.

- `mkdir`: Create a new directory.

- `rmdir`: Remove an empty directory (use `-r` option to remove non-empty directories).

- `cp`: Copy files or directories from one location to another.

- `mv`: Move files or directories from one location to another (also used for renaming files).

- `rm`: Remove files or directories.
  - `rm -r`: Remove directories and their contents recursively.

### System Information

- `uname`: Get basic information about the operating system.

- `clear`: Clear the terminal screen.

- `ps`: Display the currently running processes in the terminal.

- `man`: Access the manual pages for Linux commands (e.g., `man ls`).

### Text Processing

- `grep`: Search for specific patterns or strings within files or command output.

- `echo`: Print text or variables to the terminal.
OK
- `wget`: Download files from the internet.

- `sort`: Sort the contents of files.

- `cal`: Print a calendar of the current month or a specified month and year.

### Additional Commands

- `df`: Show the amount of disk space used and available on filesystems.

- `du`: Display the disk usage of files and directories.

- `top`: Provide dynamic real-time information about running processes, CPU usage, and memory usage.

- `kill`: Terminate processes by sending signals to them.

- `tar`: Create, maintain, modify, and extract files from archives.

- `find`: Search for files and directories based on various criteria.

- `history`: Display a list of previously executed commands in the current shell session.

- `diff`: Compare two files line by line and display the differences between them.

- `shutdown`: Shut down or restart the system.

- `ifconfig`: Display and configure network interfaces.

- `ping`: Send ICMP echo requests to a host to test network connectivity.

- `traceroute`: Trace the route that packets take from your computer to a destination host.

- `netstat`: Display network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.

- `awk`: A powerful text processing tool for pattern scanning and processing.

- `sed`: Another powerful text processing tool for filtering and transforming text.

### Learning More

To learn more about any command, type `help <command_name>` to display all available options.

For example: `help ls`.

### Running Shell Scripts

To run a shell script, type `sh <filename.sh>` in the terminal. Make sure to navigate to the directory where the file is located before running the command.
