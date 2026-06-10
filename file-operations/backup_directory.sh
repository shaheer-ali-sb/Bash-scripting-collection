#!/bin/bash
# ============================================================
# Script  : backup-directory.sh
# Purpose : Creates a compressed .tar.gz backup of a specified directory
# Usage   : ./backup-directory.sh /path/to/directory
# Author  : Shaheer Ali S B
# ============================================================

source="/home/shaheer/daily_salary_report.sh"
dest="/home/shaheer/backups"

Time=$(date +%Y%m%d_%H%M)

if [ -e "$source" ]; then
 mkdir -p "$dest"
tar -czf "$dest/project_$Time.tar.gz" "$source"
  if [ $? -eq 0 ]; then
    echo "backup of $source is successfull to $dest"
  else
    echo "failed"
  fi
else
 echo "project source is not existing"
fi
