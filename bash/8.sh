#!/bin/bash

if [ $(env | grep "^LC_" | cut -d'=' -f2 | uniq | wc -l) -gt 1 ]; then
    exit 1
fi
