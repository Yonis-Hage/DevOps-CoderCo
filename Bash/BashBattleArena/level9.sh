#!/bin/bash

#  set the directory to monitor the changes 
read -p "Enter the directory to monitor: " directory

# check if the directory exists and inputs an error exit code if it doesn’t
if [ ! -d "$directory" ]; then
  echo "Directory does not exist"
  exit 1
fi

# Log file to store the changes of the file
log_file="directory_changes.log"

# Use inotifywait to monitor changes and log them
inotifywait -m -r -e create,modify,delete --format '%T %w%f %e' --timefmt '%Y-%m-%d %H:%M:%S' "$directory" |
while read timestamp file event; do
  echo "$timestamp - $file - $event" >> "$log_file"
  echo "$timestamp - $file - $event"
done

# inotifywait is used to continuously monitor, -m (monitor continuously), -r monitor recursively (subdirectories are included), -e create, modify, delete (detects file creation, modification and deletion). – format ‘%T %w%f %e’ (outputs timestamp, filename and event type). –timefmt ‘%Y-%m-%d %H:%M:%S’ (formats timestamp nicely in order of year ,month, day and hour,minute and seconds). Then logs the changes into the log and displays them in real time.

