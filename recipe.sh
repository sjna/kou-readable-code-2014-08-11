#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 DATA_FILE"
    exit 1
fi

data_file="$1"
cat "$data_file"
