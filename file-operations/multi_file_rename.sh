#!/bin/bash
# ============================================================
# Script  : multi-file-rename.sh
# Purpose : Renames all .txt files to .bak or adds a prefix/suffix
#           to filenames in bulk
# Usage   : ./multi-file-rename.sh
# Author  : Shaheer Ali S B
# ============================================================

directory="/home/shaheer/textfiles"
prefix="old"

mkdir -p "$directory"
touch "$directory"/file1.txt "$directory"/file2.txt
echo "renaming files"
for file in "$directory"/*.txt; do
 if [ -e "$file" ]; then
 filename=$(basename "$file")

 mv "$file" "$directory/${prefix}$filename"
echo "renamed $filename ->${prefix}$filename"
fi
done
echo "all the  .txt files in the $directory have the '$prefix'"
