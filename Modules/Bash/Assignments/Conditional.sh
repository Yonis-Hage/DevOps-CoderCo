#!/bin/bash

# Prompt the user to enter a filename
read -p "Enter the filename to check: " filename

# Check if the file exists
if [ -e "$filename" ]; then
    echo "The file '$filename' exists."

    # Check if the file is readable
    if [ -r "$filename" ]; then
        echo "The file is readable."
    else
        echo "The file is not readable."
    fi

    # Check if the file is writable
    if [ -w "$filename" ]; then
        echo "The file is writable."
    else
        echo "The file is not writable."
    fi

    # Check if the file is executable
    if [ -x "$filename" ]; then
        echo "The file is executable."
    else
        echo "The file is not executable."
    fi

else
    echo "The file '$filename' does not exist."
fi
