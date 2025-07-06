#!/bin/bash
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Usage: $0 -w word -c char"
  exit 0
fi

while getopts "w:c:" opt; do
  case $opt in
    w) word=$OPTARG ;;
    c) char=$OPTARG ;;
    *) echo "Usage: $0 -w word -c char"; exit 1 ;;
  esac
done

echo "$word" | grep -o "$char" | wc -l
