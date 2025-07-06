#!/bin/bash

log() { echo "[$1] $2"; }

validation() {
  local w=$1
  local c=$2
  if [ -z "$w" ] || [ -z "$c" ] || [ ${#c} -ne 1 ]; then
    # Log ERROR
    log "ERROR" "Invalid Inputs: Usage: $0 <word> <single-character> "
    echo "Usage: $0 <word> <single-character>"
    exit 1
  fi
}

count_char() {
  local w=$1
  local c=$2
  local count=0
  for ((i=0; i<${#w}; i++)); do
    [[ "${w:$i:1}" == "$c" ]] && ((count++))
  done
  # Log INFO
  log "INFO" "Counting $char in $word"
  echo $count
}

word=${1:-$(read -p "Enter word: " w && echo $w)}
char=${2:-$(read -p "Enter character: " c && echo $c)}

validation $word $char
count_char $word $char