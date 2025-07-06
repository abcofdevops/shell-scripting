#!/bin/bash
read -p "Enter word: " word
read -p "Enter character: " char
echo "$word" | grep -o "$char" | wc -l