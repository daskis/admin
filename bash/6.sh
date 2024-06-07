#!/bin/bash

if [ "$FOO" = 5 ] && [ "$BAR" = 1 ]; then
    echo "Execution not allowed."
    exit 1
fi

while true; do
    if [ -f "fix.txt" ]; then
        echo "File appeared."
        exit 0
    fi
    sleep 1
done
