#!/bin/bash
# ============================================================
# Script  : automated-file-upload.sh
# Purpose : Uploads a specified file to a remote FTP server
#           using curl with provided credentials
# Usage   : ./automated-file-upload.sh filename.txt
# Author  : Shaheer Ali S B
# ============================================================
# MCA Task 21: Secure Automated FTP Transfer

# 1. Source file on your hard drive
file="/home/shaheer/dbbackup/2026-02-18_16-09-56.sql"
filename=$(basename "$file")

# 2. Target the file path DIRECTLY in the URL to bypass CWD errors
remote_url="ftp://127.0.0.1/uploads/$filename"

echo "Starting secured upload of $filename..."

# 3. Perform upload (Using -v to see the final handshake)
curl -n -s -T "$file" "$remote_url"

if [ $? -eq 0 ]; then
    echo "file transfer success"
    
    # 4. Verification Check
    # We list the 'uploads' folder directly
    verify_list=$(curl -n -s -l "ftp://127.0.0.1/uploads/" | tr -d '\r')
    
    if [[ "$verify_list" == *"$filename"* ]]; then
        echo "verification successfull"
    else
        echo "verification failed - list contains: $verify_list"
    fi
else
    echo "Error, upload failed. If 550 persists, check /var/log/vsftpd.log"
fi
