#!/bin/bash
word=$1
char=$2
if [ -z "$word" ] || [ -z "$char" ] || [ ${#char} -ne 1 ]; then
  echo "Usage: $0 <word> <single-character>"
  exit 1
fi
echo "$word" | grep -o "$char" | wc -l