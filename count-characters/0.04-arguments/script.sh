#!/bin/bash
word=$1
char=$2
echo "$word" | grep -o "$char" | wc -l