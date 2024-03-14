#! /usr/bin/bash

# command ---> systemctl is-active docker -----> it will give output as active or inactie

# we use this command inside the $() ---> to call the value as active or inactive from gthe terminal which this command show usually

#check if docker staus is running and active or not

docker_status=$(systemctl is-active docker)

if [ "$docker_status" == "active" ]
then
	echo "docker is running fine no worries...."
else
	sudo systemctl start docker
fi
