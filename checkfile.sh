#!/bin/bash


read -p 'Enter the file name: ' filename
if [ -d $filename ]
then
	echo "file exists"
else
	echo "file does not exist"
fi
