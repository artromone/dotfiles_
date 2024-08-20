#!/bin/bash

if ! command -v dnf &> /dev/null; then
    echo "dnf could not be found"
    exit 1
fi

dnf list installed | awk '{print $1}' > packages_list.txt
