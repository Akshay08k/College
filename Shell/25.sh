#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

source_dir="$1"
dest_dir="$2"

if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory '$source_dir' does not exist."
    exit 1
fi

if [ ! -d "$dest_dir" ]; then
    echo "Destination directory '$dest_dir' does not exist. Creating it..."
    mkdir -p "$dest_dir"
fi

echo "Copying files from '$source_dir' to '$dest_dir'..."
cp -r "$source_dir"/* "$dest_dir"
echo "Files copied successfully."

exit 0
