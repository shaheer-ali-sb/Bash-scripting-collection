#!/bin/bash
# ============================================================
# Script  : service-health-checker.sh
# Purpose : Checks if a service (nginx or apache2) is running.
#           Automatically restarts the service if it is down.
# Usage   : ./service-health-checker.sh nginx
# Author  : Shaheer Ali S B
# ============================================================

service='nginx'

if systemctl is-active --quiet "$service"; then
  echo "srvice is active"

else
  echo "alert , service isnt active"
  sudo systemctl restart "$service"

if systemctl is-active --quiet "$service"; then
 echo "$(date) service recovered successfully " #>> /home/shaheer/alerts.log

else
 echo "service failed " >> /home/shaheer/alerts.log

fi
fi
