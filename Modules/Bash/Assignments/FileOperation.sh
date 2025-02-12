#!/bin/bash

# Create a directory named "FileOperation"
mkdir -p FileOperation

# Navigate into the directory
cd FileOperation

# Create a file named "FileOp.txt"
touch FileOp.txt

# Write some text into the file
echo "Hello, I used a script to write the text into the file" > FileOp.txt

# Display the contents of the file
cat FileOp.txt
