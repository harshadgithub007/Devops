#! /usr/bin/bash

echo "checking the disk usage of the machine"

disk_size=`df -h | grep "/dev/mapper/centos-root" | awk '{print $5}' | cut -d '%' -f 1`


if [ $disk_size -gt 80 ]
then
	echo "Alert:- disk is filled with more then 80%"
else
	echo "disk size is filled below 80%"
fi

