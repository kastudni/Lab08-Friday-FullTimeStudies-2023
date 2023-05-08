#!/bin/bash

#Wiktor Piotrowski

address="google.com"

count=5

output=$(ping -q -c $count $address)

min_ping=$(echo "$output" | grep "min/avg/max" | awk '{print $4}' | cut -d '/' -f 1)
max_ping=$(echo "$output" | grep "min/avg/max" | awk '{print $4}' | cut -d '/' -f 3)

echo "Lowest ping time: $min_ping ms"
echo "Highest ping time: $max_ping ms"
