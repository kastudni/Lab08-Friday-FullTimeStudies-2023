#!/bin/bash

# Creating table to make my script more readable
printf "%-10s %-30s %-10s\n" "PID" "NAME" "STATUS"

# 1. Get informations about running processes
# 2. Loop through all of them and print PID, NAME, STATUS
ps aux | while read -r PID NAZWA STATUS; do
  # Checking if it is header, I want to skip it
  if [[ $PID != "PID" ]]; then
    printf "%-10s %-30s %-10s\n" "$PID" "$NAZWA" "$STATUS"
  fi
done