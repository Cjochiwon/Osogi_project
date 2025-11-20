#!/bin/bash

run_ls() {
    eval "ls $1"
}

if [ $# -eq 0 ]; then
    echo "사용법: $0 \"옵션\"  (예: $0 \"-l\")"
    exit 1
fi

run_ls "$1"
