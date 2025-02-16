#!/bin/bash

# Prompt the user to enter a filename
read -p "Enter the filename to check: " filename

# Check if the file exists
if [[ -e "$filename" ]]; then
    echo "The file '$filename' exists."

    # Checks file permissions
    [[ -r "$filename" ]] && echo "The file is readable." || echo "The file is not readable."
    [[ -w "$filename" ]] && echo "The file is writable." || echo "The file is not writable."
    [[ -x "$filename" ]] && echo "The file is executable." || echo "The file is not executable."

else
    echo "The file '$filename' does not exist."
fi
