#!/bin/bash

#I was very confused as to how to start this level. I researched and found that if you -z “$1” will show if an argument has been passed, $1 is the argument being passed and -z is checking for the empty string.

# Checks if no file was provided as an argument
if [ -z "$1" ]; then
  echo "No file provided"
  exit 1 # Exit the script with an error code
fi  

# Count the line numbers.
LINE_COUNT=$(wc -l "$1")
echo "The file '$1' has $LINE_COUNT lines"

#The Line count is the variable, wc -l filename is used to count the lines in a file then include that with the $1 and you get the line count and echo it to find out the amount of lines in the terminal.

