#!/bin/bash

DIR="/root/backups"
DATE="$(date +"%d%m%Y")"
echo "$DATE"
tar -czvf "$DIR-$DATE" "$DIR"
echo "back up saved as $DIR-$DATE"
