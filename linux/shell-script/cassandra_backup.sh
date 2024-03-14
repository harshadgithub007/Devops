#! /bin/bash


HOST="localhost"
USER="harshad"
PASS="1234"
KEYSPACE="database_name"
SNAPSHOT="database_$(date +%Y%m%d_%H%M%S)"
SNAPSHOT_DIR="/home/cassandra"
LOCATION="my_s3_bucket"

# taking backup:-

nodetool snapshot -u "$USER" -p "$PASS" -t "$SNAPSHOT_DIR"/"$SNAPSHOT" "$KEYSPACE"   #here backup is being created by the name of "$SNAPSHOT" and storing in the directory named "$SNAPSHOT_DIR"  

if [ $? -ne 0 ]
then
    echo "taking backup failed"
fi

# sending backup to s3:-

aws s3 cp "$SNAPSHOT_DIR"/"$SNAPSHOT" s3://"$LOCATION"/

if [ $? -ne 0 ]
then    
    echo "sending backup to location is failed..."
fi


