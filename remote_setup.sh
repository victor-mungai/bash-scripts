#!/bin/bash
echo "#########################################################"
sudo which unzip
if [ $? -gt 0 ]
then
        echo "Installing Unzip"
	sudo yum install unzip -y
	echo "unzip installed"
else
	echo "Unzip already installed"
fi

sudo which httpd
if [ $? -gt 0 ]
then
	        echo "Installing httpd"
		       sudo yum install httpd -y
			        echo "httpd installed"
			else
				        echo "httpd already installed"
fi
echo "###########################################################"
cd /tmp
echo "downloading website"
echo "##########################################################"
sudo wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip
echo "deploying website"
echo "#########################################################"
sudo rm -rf /var/www/html/*

sudo  cp -rf /tmp/2135_mini_finance/* /var/www/html/
echo "Website is deployed"
ipaddr="$(ip addr show | grep -i inet | grep -i 192 | awk '{print $2}')"
echo "search $ipaddr  on your browser"


