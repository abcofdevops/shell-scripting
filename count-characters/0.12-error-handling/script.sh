#!/bin/bash

#General Error
trap 'echo "Interrupted"; exit 1' INT

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Usage: $0 -w word -c char"
  #Success
  exit 0
fi

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Error: missing arguments"
  #Syntax Error
  exit 2
fi

echo "$word" | grep -o "$char" | wc -l