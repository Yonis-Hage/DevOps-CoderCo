#!/bin/bash
mkdir -p Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rouge.txt

if [ -f "Battlefield/knight.txt" ]; then
  mkdir -p Archive
  mv Battlefield/knight.txt Archive/
  echo "knight.txt is moving to Archive"
else
  echo "knight.txt has not been made"
fi
ls Battlefield
ls Archive

#It confused me a little bit, I initially messed up making directories and files so it took me a minute to get it right. Also I initially didn’t put the echo command as well. 


