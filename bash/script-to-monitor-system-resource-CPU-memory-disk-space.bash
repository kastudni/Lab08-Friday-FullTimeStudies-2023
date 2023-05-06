#!/bin/bash

# Made by Dawid Wolkowicz

echo "CPU usage:"
top -bn1 | grep load | awk '{printf "%.2f\n", $(NF-2)}'

echo "Memory usage:"
free -m | awk 'NR==2{printf "%.2f%%\n", $3*100/$2}'

echo "Disk space usage:"
df -h | awk '$NF=="/"{printf "%s\n", $5}'