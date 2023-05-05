#!/bin/bash

# Przepiorka Filip

echo "Add user to the group"

# get username and groupname

read -p "Enter username: " username
read -p "Enter groupname: " groupname

# check if the user exists
if ! id "$username" >/dev/null 2>&1; then
  echo "User $username does not exist"
  exit 1
fi

# check if the group exists
if ! getent group "$groupname" >/dev/null 2>&1; then
  echo "Group $groupname does not exist"
  exit 1
fi
# check if user is in the group

if id -nG "$username" | grep -qw "$groupname"; then
        echo "User $username is already a member of a $groupname"
        exit 0
fi

# add the user to the group
sudo usermod -aG "$groupname" "$username"

echo "User $username added to group $groupname"

