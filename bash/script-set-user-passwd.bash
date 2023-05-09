#!/bin/bash

#Jakub Wyganowski

#Asking for the username whose password we want to set
read -p "Enter the username whose password you wish to set: " username

# Checking if the user exists
if id "$username" >/dev/null 2>&1; then 
    # Generating a random password
    password=$(openssl rand -base64 12)

    # Set the user's password to the generated password
    if echo "$password" | passwd --stdin "$username" >/dev/null 2>&1; then
        echo "Password was successfully set for user '$username'. The new password is: $password"
    else
        echo "Failed to set the password for user '$username'."
    fi
else
    echo "There is no user with that name!"
fi