#!/bin/bash

Hostname="$(hostname)"

echo "Hello $Hostname"
echo "The used storage is $(free -m | grep -i mem | awk '{print $3}')Mb"
echo "The free storage left is $(free -m | grep -i mem | awk '{print $4}')Mb"
