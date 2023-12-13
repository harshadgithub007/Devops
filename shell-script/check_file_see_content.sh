#! /usr/bin/bash

# check and print the file

read -p "enter the file name" file

if [ -e $file ]
then
	echo "file is present, do you want to see the content of it type yes or no"
	read -p "yes or no......???" reply
	if [ $reply == "yes" ]
	then
		cat $file
	else
		echo "ok.....thanks.."
	fi
else
	echo "file is not present"
fi
