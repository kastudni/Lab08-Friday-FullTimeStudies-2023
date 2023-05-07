#!/bin/bash

# Wiktor Piotrowski

silent_ping() {
    ping -c 1 -W 1 -q "$1" &> /dev/null
    return $?
}

get_ping_times() {
    local host="$1"
    local count="$2"
    local times=$(ping -c "$count" "$host" | grep "time=" | cut -d "=" -f 4)
    echo "$times"
}

host="google.com"
count=5

if silent_ping "$host"; then
    times=($(get_ping_times "$host" "$count"))
    min_time=$(printf "%s\n" "${times[@]}" | sort -n | head -n 1)
    max_time=$(printf "%s\n" "${times[@]}" | sort -n | tail -n 1)
    echo "Lowest ping time: $min_time ms"
    echo "Highest ping time: $max_time ms"
else
    echo "$host is not reachable"
fi