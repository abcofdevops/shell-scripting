#!/bin/bash
word=${1:-$(read -p "Enter word: " w && echo $w)}
char=${2:-$(read -p "Enter character: " c && echo $c)}
echo "$word" | grep -o "$char" | wc -l