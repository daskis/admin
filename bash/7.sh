#!/bin/bash

IFS=':' read -ra paths <<< "$PATH"

for path in "${paths[@]}"; do
    if [ -d "$path" ] && [ ! -L "$path" ]; then
        num_files=$(find "$path" -maxdepth 1 -type f | wc -l)
        echo "$path=>$num_files"
    fi
done
