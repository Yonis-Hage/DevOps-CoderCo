#!/bin/bash

# Prompt the user for the source directory
read -p "Enter the directory to back up .txt files from: " source_directory

# Prompt the user for the backup directory
read -p "Enter the backup directory: " backup_directory

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
    echo "Source directory does not exist."
    exit 1
fi

# Create the backup directory if it doesn't exist
mkdir -p "$backup_directory"

# Copy all .txt files from source to backup directory and prevents errors from showing if no .txt files exist
cp "$source_directory"/*.txt "$backup_directory" 2>/dev/null

# Check if the copy was successful by using error codes(above 0 then error, if 0 then successful).
if [ $? -eq 0 ]; then
    echo "Backup completed successfully. All .txt files have been copied to $backup_directory."
else
    echo "No .txt files found in $source_directory or an error occurred."
fi
