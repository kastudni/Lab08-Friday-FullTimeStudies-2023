#!/bin/bash

#Vladyslav Lipnitskyi

# Remote server details
remote_user="your_remote_hostname"
remote_host="your_remote_hostname"
remote_directory="/path/to/remote/directory/"

# Source files/directories to backup
source_files=(
    "/path/to/source/file1"
    "/path/to/source/file2"
    "/path/to/source/directory/"
)

# Perform backup using rsync
rsync_options="-avz --progress"
for source in "${source_files[@]}"; do
    rsync $rsync_options "$source" "$remote_user@$remote_host:$remote_directory"
done
