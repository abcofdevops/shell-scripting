#!/bin/bash
log() { echo "[INFO] $1"; }

word=$1
char=$2

log "Counting $char in $word"

echo "$word" | grep -o "$char" | wc -l