#!/bin/bash

# Ask for directory and search term
read -p “Enter the directory to search in: ”  directory
read -p “Enter the word or phase to search for: ” search_word

# Checks if the directory and if it doesn’t then it prints out that the directory does not exist, also ends it with an exit error code
if [ ! -d “$directory” ]; then
echo “Directory does not exist”
exit 1
fi

grep -lri -- "$search_term" "$directory"/*.log 2>/dev/null

#For the last line, grep is used for searching words and for the argument in this case, -l only lists filenames that contain the search term, -r recursively searches inside the directory, -i ignores case sensitivity(makes it easier for the search), – prevents errors if the search term starts with a dash and finally 2>/dev/null stops/suppresses errors ( when like no .log files exist, however this is technically not needed so you could just end with the .log. 


