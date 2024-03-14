#! /usr/bin/bash

echo "script to install git package"


echo "installation started........."

os_type=$(uname -s)

if [ "$os_type" == "Linux" ]
then
	yum install git
elif
	[ "$os_type" == "Darwin" ]
then
	brew install git
else
	echo "installation cancled"
fi
