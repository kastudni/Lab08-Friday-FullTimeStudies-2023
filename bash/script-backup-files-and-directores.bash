#!/bin/bash

#Vladyslav Lipnitskyi

# Source directory to backup
source_directory="/path/to/source_directory"

# Remote host details
remote_host="user@remote.example.com"
remote_directory="/backup/location"

# Rsync options
rsync_options="-avz --delete"

# Log file to store backup progress
log_file="/path/to/backup.log"

# Execute rsync command
rsync $rsync_options $source_directory $remote_host:$remote_directory >> $log_file 2>&1

# Check rsync exit status
if [ $? -eq 0 ]; then
  echo "Backup completed successfully."
else
  echo "Backup failed. Check the log file $log_file for more details."
fi