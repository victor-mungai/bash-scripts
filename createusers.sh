#!/bin/bash
USERNAMES=$(cat /root/usernames.txt)

for user in $USERNAMES
do
	useradd -m $user
	echo "created the user $user"
done

