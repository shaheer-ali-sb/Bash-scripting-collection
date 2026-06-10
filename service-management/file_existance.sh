#!/bin/bash
# ============================================================
# Script  : file-existence-check.sh
# Purpose : Asks for a filename and checks whether it exists
#           on the filesystem
# Usage   : ./file-existence-check.sh
# Author  : Shaheer Ali S B
# ============================================================

read -p "enter the file name to be check:" filename

if [ -f "$filename" ]; then
echo "the file $filename exists"

else
 echo "$filename not found"
fi
