#!/bin/bash
# ============================================================
# Script  : process-manager.sh
# Purpose : Displays the top memory-consuming processes and
#           allows the user to kill a selected one
# Usage   : ./process-manager.sh
# Author  : Shaheer Ali S B
# ============================================================

echo "Top 5 memory consuming process"
echo "------------------------------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n6
echo ""
read -p "enter the Pid of the process to kill:" pid

if [ -n "$pid" ]; then
sudo kill "$pid"

 if [ $? -eq 0 ]; then
echo "process $pid has been terminated."
echo "$(date): killed proccess $pid" >> /home/shaheer/alerts.log

else
  echo "killing failed with $pid"
 fi
else
  echo "no pid entered .exiting"
fi
