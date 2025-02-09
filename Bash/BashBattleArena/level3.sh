#!/bin/bash
FILE="arena/hero.txt"
if [[ -f "$FILE" ]]; then
  echo "Hero’s found"
else
  echo "Hero’s not found"
fi

