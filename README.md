# Bash Scripting Collection

21 shell scripts written as part of a structured 6-month DevOps internship,
covering real-world Linux administration and automation tasks.

---

## Structure

| Folder | Scripts |
|---|---|
| basics/ | Hello world, date/time, calculator, user input |
| system-monitoring/ | Disk usage alert, RAM monitor with Slack alert, system info |
| file-operations/ | Directory backup, file rename, find and replace, line counter, FTP upload |
| service-management/ | Service health checker, process manager, file existence check, directory listing |
| user-management/ | Create user with password |
| network/ | Internet connectivity check |
| database/ | MySQL backup with date stamp |
| automation/ | Log monitor, cron scheduler, menu-driven interface |

---

## Usage

Make any script executable and run it:

\```bash
chmod +x scriptname.sh
./scriptname.sh
\```

Scripts in user-management/ require root privileges:

\```bash
sudo ./scriptname.sh
\```

---

## Note

Slack webhook URL in ram-usage-slack-alert.sh is a placeholder.
Replace with your actual webhook URL before running:

\```bash
SLACK_WEBHOOK="https://hooks.slack.com/services/YOUR_WEBHOOK_URL_HERE"
\```

---

## Context

Written during a 6-month DevOps internship covering Linux system administration,
shell automation, and operational monitoring.

Author: Shaheer Ali S B
