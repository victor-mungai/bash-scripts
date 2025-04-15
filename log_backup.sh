#!/bin/bash
DIR="/root/backups"
DATE=$(date +"%Y-%m-%d")
mkdir -p "$DIR"
tar -czf $DIR/log_backup_$DATE.tar.gz /var/log

find $DIR -type f -name "log_backup_*.tar.gz" -mtime +7 -exec rm {} \;

echo "Log backup completed: log_backupt_$DATE.tar.gz"
echo "Old backups (older thn 7 days) have been removed"
