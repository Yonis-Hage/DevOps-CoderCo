#!/bin/bash

read -p "Enter the configuration file path: " config_file

if [ ! -f "$config_file" ]; then
  echo "Configuration file does not exist"
  exit 1
fi

# reads each line of the file, splitting it into key (before =) and value (after =) and sets ifs (internal field separator so bash knows how to split the line
while IFS='=' read -r key value; do
  echo "Key: $key, Value: $value"
done < "$config_file"
#The last line redirects the configuration file into the while loop and ensures each line is read and processed.

