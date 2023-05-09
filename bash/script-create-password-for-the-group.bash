#!/bin/bash

# Anna Styrna

echo "Enter the name of the group:"
read groupname

if getent group $groupname >/dev/null 2>&1
then
    echo "Enter password for the group $groupname :"
    read -s password
    echo "$password" | gpasswd -r "$groupname" 
    echo "Password created for group $groupname "

else
    echo "Group $groupname does not exist"
fi