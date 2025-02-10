#!/bin/bash

echo "Select an option:"
echo "1. Check Disk Space"
echo "2. Show System Uptime"
echo "3. List Users"
echo "4. Exit"

read -p "Enter your choice (1-4): " choice

case $choice in
  1) df -h 
  ;;
  2) uptime 
  ;;
  3) who 
  ;;
  4) echo "Exiting... Goodbye!" 
  exit 0 
  ;;
  *) echo "Invalid option! Please enter a number between 1 and 4" 
  ;;
esac
