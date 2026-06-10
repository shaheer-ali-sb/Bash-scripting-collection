#!/bin/bash
# ============================================================
# Script  : count-lines-words-chars.sh
# Purpose : Accepts a filename and displays its line, word,
#           and character counts using the wc command
# Usage   : ./count-lines-words-chars.sh filename.txt
# Author  : Shaheer Ali S B
# ============================================================

read -p "enter the file name:" filename

if [ -f "$filename" ]; then
echo "stats of the file "

lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
chars=$(wc -m < "$filename")

echo "Lines: $lines"
echo "words: $words"
echo "chars: $chars"

else
  echo "$filename not found "
fi
