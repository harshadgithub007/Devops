#! /usr/bin/bash
# Author:- Harshad@gmail.com
# Installing Multiple Packages

: '
which :- command to use the get path if something is present in the system
for example:- which git -------> gives output -----> /bin/git (path of git files)
'


if [ $# -eq 0 ]
then
	echo "sorry, you did not passed any aurgument before executing the shell script:- $0"
	exit 1
fi


if [ $(id -u) -ne 0 ]
then
	echo " please run this script as root user or using sudo"
	exit 2
fi

for package in $@
do
	if which $package &> /dev/null
	then
		echo "package is installed already"
	else
		echo "Installing the package........"
		yum install $package -y
		if [ $? -eq 0 ]
		then
			echo "Successfully Installed $package"
		else
			echo "unable to install the $package"
		fi
	fi
done

: '
$# -----> to get the all aur passed

$(id -u) &> /dev/null -----> to get the userid and send to /dev/null so that it will not come on the terminal

$@ ------> represents all the aur passed

$? --------> tell us the exit status of command ( 0 == succesfully done and other == command failed)
'	
