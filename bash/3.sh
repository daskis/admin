#!/bin/bash

for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "$file => not found"
        continue
    fi
    lines=$(wc -l < "$file")
    echo "$file=>$lines"
done
