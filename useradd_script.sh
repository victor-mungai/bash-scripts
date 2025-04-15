#!/bin/bash
users=(mungai devops victor)
for user in "${users[@]}"
do
	passwd=$((RANDOM))
	sudo useradd -m -p $(openssl passwd -6 "$passwd" )  $user
	echo "Hello $user your password is $passwd"
done	
	
