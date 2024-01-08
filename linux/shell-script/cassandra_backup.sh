#! /usr/bin/bash

HOST="localhost"
KEYSPACE="devops" # Database name
SNAPSHOT="cassandra_backup"
SNAPSHOT_DIR="/root/cassandra_backup"

LOCATION="my_bucket_007"

# Taking backup:
nodetool snapshot -t "$SNAPSHOT" "$SNAPSHOT_DIR/$KEYSPACE"

# Check if nodetool snapshot was successful
if [ $? -ne 0 ]; then
    echo "Nodetool snapshot failed..."
    exit 1
fi

# Sending to S3:
aws s3 cp "$SNAPSHOT_DIR/$KEYSPACE" s3://"$LOCATION"/

# Check if AWS S3 upload was successful
if [ $? -ne 0 ]; then
    echo "AWS S3 upload failed..."
    exit 1
fi

# Remove from local:
rm -rf "$SNAPSHOT_DIR/$KEYSPACE"

# Confirm completion
echo "Backup completed successfully."
