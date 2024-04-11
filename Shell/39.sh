#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

directory_path=$1

if [ ! -d "$directory_path" ]; then
    echo "Directory not found: $directory_path"
    exit 1
fi

#!/bin/bash

echo "Filename   Size       Date             Protection  Owner"
echo "------------------------------------------------------"

ls -l --time-style=long-iso "$directory_path" | cut -d' ' -f9,5,6,7,1,3 
