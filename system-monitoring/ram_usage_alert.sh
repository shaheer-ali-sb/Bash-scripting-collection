#!/bin/bash
# ============================================================
# Script  : ram-usage-slack-alert.sh
# Purpose : Calculates RAM usage and sends an alert to a Slack channel
#           via webhook. Scheduled via cron to run every 10 minutes.
# Usage   : ./ram-usage-slack-alert.sh
# Author  : Shaheer Ali S B
# ============================================================

# 1. Your unique Slack URL (Copy this carefully)
SLACK_WEBHOOK="https://hooks.slack.com/services/YOUR_WEBHOOK_URL_HERE"

# 2. Calculate RAM usage for your 8GB system
TOTAL_RAM=$(free -m | awk '/^Mem:/{print $2}')
USED_RAM=$(free -m | awk '/^Mem:/{print $3}')
USAGE_PERCENT=$((USED_RAM * 100 / TOTAL_RAM))

# 3. Format the message
MESSAGE="{\"text\": \"📊 *RAM Report for HP-Laptop*: ${USAGE_PERCENT}% used (${USED_RAM}MB / ${TOTAL_RAM}MB)\"}"

# 4. Send to Slack and show 'ok' in terminal
curl -X POST -H 'Content-type: application/json' --data "$MESSAGE" "$SLACK_URL"
