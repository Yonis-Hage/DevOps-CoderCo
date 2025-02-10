#!/bin/bash
DIRECTORY="Arena"

# ! is a negation meaning not, combining that with -d means that it checks if the directory does not exist
if [ ! -d "$DIRECTORY" ]; then
  echo "Directory doesn't exist"
  exit 1

find "$DIRECTORY" -type f -name "*.txt" -exec ls -lS {} + | awk '{print $5, $9}' | sort -n
#For the last line,  finds all txt files in the directory and filters only txt files, -type f ensure only files and not directories are considered. The ls -lS lists details on found files and sorts their size by largest to smallest. The ‘awk ‘{print $5. $9}’  extracts file size and filenames and the sort -n sorts the file numerically from smallest to largest.

