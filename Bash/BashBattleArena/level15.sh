#!/bin/bash
echo "Select an option:"
echo "1. Check Disk Space"
echo "2. Show System Uptime"
echo "3. Backup the BashBattleArena directory"
echo "4. Parse configuration file settings.conf"
echo "5. Exit"

read -p "Enter your choice: " choice

case $choice in
  1) df -h 
  ;;
  2) uptime 
  ;;
  3) 
    read -p "Enter the directory to back up: " source_directory
    read -p "Enter the backup destination directory: " backup_directory
    current_date=$(date +"%Y-%m-%d_%H-%M-%S")
    backup_file="$backup_directory/backup_$current_date.tar.gz"
    tar -czf "$backup_file" "$source_directory"
    backup_count=$(ls -1 "$backup_directory" | wc -l)
    if [ "$backup_count" -gt 3 ]; then
      ls -1t "$backup_directory" | tail -n +4 | xargs rm
    fi
    ;;
  4) 
    read -p "Enter the path of the configuration file: " config_file
    if [ ! -f "$config_file" ]; then
      echo "Configuration file does not exist"
      exit 1
    fi
    while IFS='=' read -r key value; do
      echo "Key: $key, Value: $value"
    done < "$config_file"
    ;;
  5) echo "Exiting... Goodbye!" 
  exit 0 
  ;;
  *) echo "Invalid option! Please select a number between 1 and 5." 
  ;;
esac
