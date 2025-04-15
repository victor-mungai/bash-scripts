#!/bin/bash
which nginx
if [ $? -eq 0]
then
	echo "nginx is already installed"
	else
		yum install nginx -y
fi
