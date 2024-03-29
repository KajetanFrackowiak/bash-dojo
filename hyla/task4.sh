#!/bin/bash

# Directory to check disk usage for
backup_dir="/path/to/backup/directory"

# Threshold for disk usage (in percentage)
threshold=90

# Get disk usage information for the backup directory
disk_usage=$(df -h "$backup_dir" | awk 'NR==2 { print $5 }' | sed 's/%//')

# Check if disk usage exceeds the threshold
if [ "$disk_usage" -gt "$threshold" ]; then
    # Disk usage exceeds the threshold, send notification
    echo "Warning: Disk usage for backup directory '$backup_dir' exceeded threshold ($threshold%)." | mailx -s "Disk Usage Alert" user@example.com
fi

