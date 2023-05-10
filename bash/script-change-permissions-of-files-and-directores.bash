#!/bin/bash
read -p "Enter the path to the file or directory: " PATH
read -p "Enter permissions as a three-digit number : " PERMISSIONS
chmod $PERMISSIONS $PATH
echo "Permissions for $PATH changed to $PERMISSIONS."
