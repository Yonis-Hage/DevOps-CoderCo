#!/bin/bash

# Create directory and navigate into it
mkdir -p FileOperation && cd FileOperation

# Create file and write text into it
echo "Hello, I used a script to write the text into the file" > FileOp.txt

# Display the contents of the file
cat FileOp.txt
