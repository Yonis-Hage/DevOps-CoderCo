#!/bin.bash

#For this level, I would use two read -p commands so that you can put in whichever directory you want, also so that you can enter the threshold for the specific directory. Then using df -h we can read the disk usage, using grep with awk ‘{print $5}’ for the 5th column being the percentage used.
# Set the directory to monitor (user input)
read -p "Enter the directory to check: " directory
#Set the threshold (percentage)
read -p "Enter the threshold percentage (no % sign): " threshold

# Checks if the directory exists
if [ ! -d "$directory" ]; then
  echo "Directory does not exist"
  exit 1
fi

# using if statement to check if the disk usage exceed the threshold
if [ "${usage%?}" -gt "$threshold" ]; then
  echo "Disk usage is exceeding the threshold, action needed!"
else
  echo "Disk usage is below threshold, no action needed"
fi
