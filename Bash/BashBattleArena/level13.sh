#!/bin/bash
# prompts for user input
read -p "Enter the directory to back up: " source_directory
read -p "Enter the backup destination directory: " backup_directory

if [ ! -d "$source_directory" ]; then
  echo "Source directory does not exist"
  exit 1
fi
# makes a backup directory even if it doesn’t exist
if [ ! -d "$source_directory" ]; then
  echo "Source directory does not exist"
  exit 1
fi

# Backup the source directory to the backup directory
mkdir -p "$backup_directory"
# keep only the last 5 backups , lists each file on a new line, counts the number of backups and removes the oldest backups
current_date=$(date +"%Y-%m-%d_%H-%M-%S")
backup_file="$backup_directory/backup_$current_date.tar.gz"
tar -czf "$backup_file" "$source_directory"

# For the last line, ls -1t, lists backups sorted by modification time( newest first), tail -n +6, selects all backups from the 6th oldest onwards, xargs rm deletes the selected files.
backup_count=$(ls -1 "$backup_directory" | wc -l)
if [ "$backup_count" -gt 5 ]; then
  ls -1t "$backup_directory" | tail -n +6 | xargs rm
fi
