#!/bin/bash
word=$1
char=$2
count=0
for ((i=0; i<${#word}; i++)); do
  [[ "${word:$i:1}" == "$char" ]] && ((count++))
done
echo $count