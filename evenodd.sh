#!/bin/bash
for num in {1..20}
do
	
	if [ $(($num % 2)) -eq 0 ]
		then
			echo "$num"
		
	fi
done
