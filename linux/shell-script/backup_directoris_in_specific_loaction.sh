#! /usr/bin/bash

# use the crontab -e for regular backup transfer

backup_dirs=("/etc" "/home")  # source directories
dest_dir="/root/backup"       # destination to store backup
mkdir -p $dest_dir            # -p for path at which backup directory will be created
backup_date=$(date +%b-%d-%y) # %b for month, %d for day of month, %y for last 2 digit of the year

echo "Starting backup of the: ${backup_dirs[@]}" # [@] for taking /etc and /home one by one

for i in "${backup_dirs[@]}" 
do
	sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i     # to create the tar file and $i for taking /etc and /home one by one
	if [ $? -eq 0 ]    # $? fpr if the above sudo command is successful then do following
	then
		echo "$i backup is successful"
	else
		echo "$ibackup is failed"
	fi
	
	cp /tmp/$i-$backup_date.tar.gz $dest_dir  # use scp command to transfer to another server

	if [ $? -eq 0 ]
	then
		echo "$i transfer succeeded"
	else
		echo "$i transfer is failed"
	fi
done

sudo rm /tmp/*.gz
echo "Backupis done"
echo "backup destination path is:- $dest_dir"
