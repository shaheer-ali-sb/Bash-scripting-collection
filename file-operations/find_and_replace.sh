#!/bin/bash
# ============================================================
# Script  : find-and-replace.sh
# Purpose : Replaces a specified word with another in a given file using sed
# Usage   : ./find-and-replace.sh filename.txt old_word new_word
# Author  : Shaheer Ali S B
# ============================================================

read -p "enter the filename:" filename
read -p "enter the word to find:" oldword
read -p "enter the replacement word:" newword

if [ -f "$filename" ]; then 
sed -i "s/$oldword/$newword/" "$filename"

echo "replacement successfull $oldword with $newword"

else
 echo "$filename not found"
fi
