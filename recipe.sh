#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 DATA_FILE"
    exit 1
fi

data_file="$1"
id=0
cat "$data_file" | while read line; do
    id=$((id + 1))
    echo "${id}: ${line}"
done
