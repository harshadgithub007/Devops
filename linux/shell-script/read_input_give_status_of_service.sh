#! /usr/bin/bash

echo "enter the service name to be checked its status"

read -p "type the service name to check the status:-" service

echo "checking the status......"

sleep 3


if [ -z $service ]
then
	echo "service is not installed or entered wrong service name"
else
	systemctl status $service 
fi

# -z -------->  check whether the string is empty or not
