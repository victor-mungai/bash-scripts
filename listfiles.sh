#!/bin/bash

read -p 'Enter a directory: ' directory

if [ -d $directory ]
then
	
	for file in $(find "$directory" -type f  -name "*.sh")
	do
		echo "$file"
	sleep 1	
	done
else
	echo "the directory does not exist"
fi
