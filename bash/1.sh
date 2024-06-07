#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <output_filename> <time_in_seconds>"
    exit 1
fi

if ! [[ "$2" =~ ^[0-9]+$ ]]; then
    echo "Time must be a positive integer."
    exit 1
fi

start_time=$(date +%s)
end_time=$((start_time + "$2"))

while [ "$(date +%s)" -lt "$end_time" ]; do
    current_time=$(date +"%d.%m.%y %H:%M")
    loadavg=$(cat /proc/loadavg)
    echo "$current_time = $loadavg" >> "$1"
    sleep 1
done
