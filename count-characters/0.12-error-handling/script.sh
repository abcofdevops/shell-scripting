#!/bin/bash

#General Error
trap 'echo "Interrupted"; exit 1' INT

#shell options or execution flags
set -x  # [DEBUG mode] Print each command before executing (debugging)

set -e  # Exit immediately on command error [but it will pass "test | echo" it checks last command ]
set -o pipefail  # Return non-zero if any command in a pipeline fails [it will fail "test | echo" no command "test" found]

#set -xeo pipefail # Can be written together

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