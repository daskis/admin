#!/bin/bash

for file in /var/log/*.log; do
    if [ -f "$file" ]; then
        tail -n 1 "$file" >> logs.log
    fi
done
