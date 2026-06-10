#!/bin/bash
# ============================================================
# Script  : log-monitor.sh
# Purpose : Monitors a log file and sends a notification if
#           a specified keyword appears
# Usage   : ./log-monitor.sh /var/log/syslog ERROR
# Author  : Shaheer Ali S B
# ============================================================

log_file="/home/shaheer/disc_monitor.log"
keyword="warning"

tail -fn0 "$log_file" | while read -r line; do
if echo "$line" | grep -q "$keyword"; then

echo "detected $keyword in $log_file -> $line" >> /home/shaheer/alerts.log
fi
done
