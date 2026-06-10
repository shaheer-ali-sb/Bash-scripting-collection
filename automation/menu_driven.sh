#!/bin/bash
# ============================================================
# Script  : menu-driven.sh
# Purpose : Interactive menu-driven script with options for
#           system info, create user, and exit
# Usage   : ./menu-driven.sh
# Author  : Shaheer Ali S B
# ============================================================

while true; do 
echo "system management menu"
echo "----------------------"
echo "1.show memory disk info"
echo "2.create new user(required sudo)"
echo "3.check nginx service status"
echo "4.checks internet connection"
echo "5.exit"

read -p "choose an option [1-5]:" choice
case $choice in 
 1) 
    ./disk_alert.sh
    ;;

 2)sudo ./create_user.sh
    ;;

 3)
   ./service_checker.sh
    ;;

 4)
   ./check_internet.sh
    ;;
 5)
   echo "Exiting"
   exit 0
   ;;
 *)
   echo "invalid option"
   ;;

esac
 
echo ""
read -p "press enter to reuturn to menu"
done
