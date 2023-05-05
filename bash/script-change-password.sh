#!/bin/bash

# Oleh Ortynskyi

echo "Welcome to the user password change script!"
read -p "Enter username: " username

if ! id -u "$username" >/dev/null 2>&1; then
    echo "Username $username does not exist!"
    exit 1
fi

read -s -p "Enter a new password for the user $username: " newpassword
echo ""

echo "$username:$newpassword" | chpasswd

echo "The password for the user $username has been changed!" 