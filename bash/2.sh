#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <path1> <path2>"
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "Error: path1 does not exist."
    exit 1
fi

if [ ! -d "$2" ]; then
#    echo "Error: path2 does not exist."
#    exit 1
    mkdir "$2"
fi

for dir in "$1"/*; do
    if [ -d "$dir" ]; then
        n=$(($(ls -a "$dir" | wc -l )-2))
        echo "$n" > "$2"/$(basename "$dir")
    fi
done
