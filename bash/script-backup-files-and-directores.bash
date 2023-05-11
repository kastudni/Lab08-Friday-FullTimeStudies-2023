#!/bin/bash

#Vladyslav Lipnitskyi

# Get current date and time for naming backup folder
date=$(date +"%Y-%m-%d_%H-%M-%S")

# Set your source and destination directories
read -p "Enter the path to the source directory: " source_dir
read -p "Enter the remote server address in the format user@remote.host:/path/to/destination: " destination_dir

# Run the rsync command to backup files and directories
rsync -avz --delete $source_dir $destination_dir/$date

# Check the rsync command status
if [ $? -eq 0 ]; then
  echo "Backup completed successfully"
else
  echo "Backup failed"
fi
