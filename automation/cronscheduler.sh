#!/bin/bash
# ============================================================
# Script  : cron-scheduler.sh
# Purpose : Demonstrates scheduling a script to run daily using cron
# Usage   : ./cron-scheduler.sh
# Author  : Shaheer Ali S B
# ============================================================

# The script to be scheduled (change this path to your actual script)
SCRIPT_PATH="/home/ubuntu/bash-scripting-collection/automation/hello-world.sh"

# Make the target script executable
chmod +x "$SCRIPT_PATH"

# Add a cron job to run the script every day at 9:00 AM
# crontab -l lists existing cron jobs
# We add our new job and reload crontab to avoid overwriting existing jobs
(crontab -l 2>/dev/null; echo "0 9 * * * $SCRIPT_PATH >> /var/log/cron-scheduler.log 2>&1") | crontab -

echo "Cron job scheduled successfully."
echo "The script will run every day at 9:00 AM."
echo ""
echo "Current cron jobs:"
crontab -l
