#!/usr/bin/bash

HOST="localhost"
KEYSPACE="devops"
SNAPSHOT_NAME="devops_$(date +%Y%m%d_%H%M%S)"
SNAPSHOT_DIR="/home/backup/$SNAPSHOT_NAME"

# Taking snapshot (backup):
nodetool snapshot -t "$SNAPSHOT_NAME" "$KEYSPACE"

# Compress backup file:
tar -czf "$SNAPSHOT_NAME.tar.gz" -C "/var/lib/cassandra/data/keyspace/$KEYSPACE" "$SNAPSHOT_NAME"

# Sending to S3:
aws s3 cp "$SNAPSHOT_NAME.tar.gz" s3://my-bucket/backup_folder/

# Remove from local:
rm -rf "$SNAPSHOT_DIR" "$SNAPSHOT_NAME.tar.gz"
