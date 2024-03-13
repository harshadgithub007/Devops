#! /usr/bin/bash

echo "CPU Load avrage value check"
load=`top -bn1 | grep load | awk '{print "%.2f%%\t\t\n", $(NF-2)}'|cut -d '%' -f1`
echo $load
if [[ ${load%.*} > 1 ]]
then
	echo "cpu load is very high: $load"
else
	echo "load is normal"
fi
