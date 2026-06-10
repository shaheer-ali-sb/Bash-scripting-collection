#!/bin/bash
# ============================================================
# Script  : internet-check.sh
# Purpose : Pings a website and reports internet connectivity status
# Usage   : ./internet-check.sh
# Author  : Shaheer Ali S B
# ============================================================

target="8.8.8.8"
echo "checking internet connection to $target.."

ping -c 1 -W 2 $target > /dev/null 2>&1

if [ $? -eq 0 ]; then
 echo "internet is connected"
else
 echo "disconnected or unreachable"
fi
