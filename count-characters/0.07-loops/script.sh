#!/bin/bash
word=${1:-$(read -p "Enter word: " w && echo $w)}
char=${2:-$(read -p "Enter character: " c && echo $c)}

if [ -z "$word" ] || [ -z "$char" ] || [ ${#char} -ne 1 ]; then
  echo "Usage: $0 <word> <single-character>"
  exit 1
fi

count=0
for ((i=0; i<${#word}; i++)); do
  [[ "${word:$i:1}" == "$char" ]] && ((count++))
done
echo $count