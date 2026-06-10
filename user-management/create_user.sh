#!/bin/bash
# ============================================================
# Script  : create-user.sh
# Purpose : Creates a new Linux user and sets a password
#           Requires root privileges to execute
# Usage   : sudo ./create-user.sh
# Author  : Shaheer Ali S B
# ============================================================

if [ $(id -u) -ne 0 ]; then
echo "the script must run with sudo"
exit 1
fi

read -p "enter the username:" username
read -sp "enter the password" password
echo ""

if id "$username" &>/dev/null; then
echo "$username already exist"

else 
  useradd -m "$username"
  echo "$username:$password" | chpasswd

if [ $? -eq 0 ]; then
echo "user, $username created successfully"

else 
 echo "failed"

fi
fi
