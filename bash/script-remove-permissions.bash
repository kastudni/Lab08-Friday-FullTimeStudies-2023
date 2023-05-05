#!/bin/bash

# Karolina Kominiak

echo "Enter the user whose permissions you want to remove: "
read username

if id "$username" >/dev/null 2>&1; then
    echo "User $username exists. Now enter the name of the file on which you want to remove their permissions: "
    read filename
    if [ -e $filename ]; then
        echo "File $filename exists."
    else
        echo "File $filename doesn't exist!"
        exit 1
    fi
else
   echo "User $username doesn't exist!"
   exit 1
fi

setfacl -m u:$username:--- $filename

if [ -r $username ] && [ -w $username ] && [ -x $username ]; then
	if [ -0 $username ] || [ -G $username -a $(id -u $1) -eq $(stat -c '%g' $username) ]; then
		echo "Failed to remove permissions for $username on $filename!"
	else
		echo "Permissions successfully removed!"
	fi
else
	echo "Permissions successfully removed!"
fi