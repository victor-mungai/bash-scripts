#!/bin/bash
mkdir -p /backup
cd /backup
date=$(date +"%Y-%m-%d")
tar -cvf "etc$date.tar.gz" /etc &> /dev/null
echo "etc backed up"
