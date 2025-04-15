#!/bin/bash
read -p 'what service do you want \ 1.adduser \ 2.delete user: ' service
if  [ $service -eq 1 ]
then


	 read -p 'Whats the username: ' username
	id $username &> /dev/null
	if [ $? -eq 0 ]
	then
		
	 useradd -m $username --shell /bin/bash &>> /dev/null
	         echo "user $username created" 
    	 else
                 echo "user $username already exists"
	fi
elif [ $service -eq 2 ]
then
	 read -p 'Whats the username: ' username
	sudo id $username &> /dev/null
	 if [ $? -eq 0 ]
		then
			userdel -r $username
			echo "user $username has been deleted"
		else
			echo "user does not exist"
	 fi
 else
	 echo "service doesnt exist"
	 break
fi



