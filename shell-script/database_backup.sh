#! /usr/bin/bash

# script to take backup of mysql and send to se bucket

DB_USER="root"
DB_PASSWORD="123"
DB_NAME="devops"


S3_BUCKET_LOCATION="mybucket-jogi008/mysql_backup/"

# timestamp:-

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="/root/sql_backup/backup_${TIMESTAMP}.sql"



# taking backup:-

mariadb-dump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"


# send to s3:-

if [ $? -eq 0 ]
then
        aws s3 cp "$BACKUP_FILE" s3://"$S3_BUCKET_LOCATION"
        rm -rf "$BACKUP_FILE"
else
        echo "backup failed..........!!!"
fi
