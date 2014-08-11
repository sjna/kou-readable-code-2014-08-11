#!/bin/sh

if [ $# -lt 1 ]; then
    echo "Usage: $0 DATA_FILE"
    exit 1
fi

data_file="$1"
data_id="$2"
id=0
cat "$data_file" | while read line; do
    id=$((id + 1))
    # IDが指定された場合、指定レコードのみ出力
    if [ -n "$data_id" ] ; then
        if [ ${id} = ${data_id} ] ; then
            # 一致したレシピ名のコンソール出力
            echo "${id}: ${line}"
            break;
        fi
    else
        # レシピ名のコンソール出力
        echo "${id}: ${line}"
    fi
done
