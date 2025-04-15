#!/bin/bash

DISKUSAGE=$( df -h | grep -i /dev/sda1 | awk '{print $5}' |tr -d '%')
if [ $DISKUSAGE -gt 80 ]
then
	echo "Warning:Disk usage is at 80%"
	else
		echo "The disk usage is healthy"
		fi


