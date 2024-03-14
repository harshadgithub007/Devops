#! /usr/bin/bash

: '
using the function:-

function syntax:-

function()
{
command 1
command 2
}

and then call the function name just like below:- disk_utilization
************************************************************************************
'

echo "Disk Utilization Info"
disk_utilization()
{
disk=`df -h`
echo "disk utilization is:--->  $disk"
}
if [ $? -eq 0 ]
then
	echo "this is disk usage report"
	disk_utilization
else
	echo "disk has some issues"
fi

