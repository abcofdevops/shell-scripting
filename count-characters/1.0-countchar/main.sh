#!/bin/bash
source ./helper.sh
source ./utils.sh
source ./functions.sh

while getopts "w:c:" opt; do
  case $opt in
    w) word=$OPTARG ;;
    c) char=$OPTARG ;;
    *) echo "Usage: $0 -w word -c char"; exit 1 ;;
  esac
done

count_all $word $char
count_char $word $char

