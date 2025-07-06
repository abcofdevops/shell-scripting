#!/bin/bash
word="mississipi"
char="s"
echo "$word" | grep -o "$char" | wc -l