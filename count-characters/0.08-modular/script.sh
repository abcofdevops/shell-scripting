#!/bin/bash
source utils.sh

word=${1:-$(read -p "Enter word: " w && echo $w)}
char=${2:-$(read -p "Enter character: " c && echo $c)}

validation $word $char

count_char $word $char