#! /usr/bin/bash

# clean up the logs at regular intervel of the time as we set 
# log rotation :- need logs from specific number of days 
# find :- command to find the file/folder according to the creation date/modification date/owner wise/permissions.
# mtime :- shows the last time when the file was modified eg:- "-mtime +30" :- command will show the modifies files in more then last 30 days


# script to delete the files which are older than 30 days

echo "**********************************************************************************************************************************************************************************"

path="$1" #to take the path from the script executer and here we can use the read steatment to take path given by the useri
echo "following path you have given"
echo 
echo $path
echo
find $path -mtime +30 -delete
echo "files are being deleted.........."

if [ $? == 0 ]
then 
	echo "files deleted successfully"
else
	echo "not such files ate present or wrong path given"
fi

echo "**********************************************************************************************************************************************************************************" 
