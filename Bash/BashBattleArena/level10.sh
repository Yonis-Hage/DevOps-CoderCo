# creates a directory called ‘arena boss’
mkdir -p “Arena_Boss”

# create 5 files file1-5 texts
for i in {1..5} ; do
touch Arena_Boss/file$i.txt
done

# Generate random number of lines in each file
for i in {1..5}; do
  lines=$((RANDOM % 11 + 10))
  for j in $(seq 1 $lines); do
    echo "This is line $j" >> Arena_Boss/file$i.txt
done

# sort the files by their sizes
ls -lS Arena_Boss

# Check if any file contains the word victory and move into victory_archive if they do
for i in {1..5}; do
  if grep "Victory" Arena_Boss/file$i.txt; then
    mv Arena_Boss/file$i.txt Victory_Archive
  fi
done



