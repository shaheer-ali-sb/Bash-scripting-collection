#!/bin/bash
# ============================================================
# Script  : list-files.sh
# Purpose : Lists all files and directories in the current
#           or a specified path
# Usage   : ./list-files.sh /path/to/directory
# Author  : Shaheer Ali S B
# ============================================================

echo "enter the path"
read path

if [ -z "$path" ]; then
 path='.'
fi

if [ -d "$path" ]; then
 echo "listing contenets of $path:"
ls -F -l "$path"

else
 echo "$path wrong path or directory"
fi
