#!/bin/bash
# ============================================================
# Script  : disk-usage-alert.sh
# Purpose : Monitors disk usage and sends a warning if usage exceeds 80%
# Usage   : ./disk-usage-alert.sh
# Author  : Shaheer Ali S B
# ============================================================

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

threshold=80

if [ "$usage" -gt "$threshold" ]; then
echo "$(date): warning disc usage at $usage" >> /home/shaheer/disc_monitor.log

else

  echo "disc is healthy "

fi
