#Grzegorz Szczurek

#!/bin/bash

echo "Enter the name of the new group:"
read group_name

sudo groupadd $group_name

echo "Group '$group_name' has been created."