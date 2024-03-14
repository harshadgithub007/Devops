#! /usr/bin/bash

# program to  install the software after cheking and confirm that this file is not exist

# if the maven is installed m2.conf file will be there for example

# here give any path of the file which is the main file present after installing it

file=m2.conf

if [ -e /usr/share/maven/bin/m2.conf ]
then
	echo "maven is installed"
else
	echo "maven installation is started.........."
	yum install maven -y
fi

