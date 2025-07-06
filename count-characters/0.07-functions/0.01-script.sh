#!/bin/bash

count_char() {
  local w=$1
  local c=$2
  local count=0
  for ((i=0; i<${#w}; i++)); do
    [[ "${w:$i:1}" == "$c" ]] && ((count++))
  done
  echo $count
}

count_char $1 $2
