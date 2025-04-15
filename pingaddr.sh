#!/bin/bash
IPADDR=( scriptbox , web02 , web03 )
for ip in "${IPADDR[@]}"
do 
	echo "######################################################"
	echo "sending 4 packets to $ip" 
	ping $ip -c 4
	echo "######################################################"
done
