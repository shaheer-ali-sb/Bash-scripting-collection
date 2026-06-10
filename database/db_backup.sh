#!/bin/bash
# ============================================================
# Script  : mysql-backup.sh
# Purpose : Dumps a MySQL database and saves it with a date stamp
# Usage   : ./mysql-backup.sh database_name
# Author  : Shaheer Ali S B
# ============================================================

dbname="my_website"
backup_dir="/home/shaheer/dbbackup"
date=$(date +%Y-%m-%d_%H-%M-%S)
filename="$dbname_backup_$date.sql"

mkdir -p "$backup_dir"

mysqldump -u root "$dbname" > "$backup_dir/$filename"

if [ $? -eq 0 ]; then
echo "$(date): backup of $dbname completed successfully" 

else
  echo "$(date) backup failed"
fi
