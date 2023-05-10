#!/bin/bash
# Maksym Shcherbakha
echo "Enter the name of the new group:"
read group_name
sudo groupadd $group_name
echo "Groupe $group_name was created"
