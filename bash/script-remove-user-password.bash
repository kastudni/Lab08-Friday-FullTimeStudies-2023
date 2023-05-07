#!/bin/bash

#Darina Bajmuchanbietowa 

# Prompt for the username
read -p "Enter the username: " username

# Check if the user exists
if ! id "$username" >/dev/null 2>&1; then
    echo "User $username does not exist."
    exit 1
fi

# Remove the user's password
sudo passwd -d "$username"

# Check if the password was successfully removed
if [[ $(sudo grep "^$username:" /etc/shadow | cut -d: -f2) == "" ]]; then
    echo "Password for user $username has been successfully removed."
else
    echo "Failed to remove password for user $username."
    exit 1
fi
