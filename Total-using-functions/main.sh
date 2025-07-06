#!/bin/bash
source ./helper.sh
source ./functions.sh

word=$1
letter=$2
choice=''

if [ "$#" -eq 0 ]; then	
	while [[ -z "$choice" ]]; do
	clear
	echo_typing "You didn't passed required arguments [expecting atleast one argument] "
	helper
	instructions
	read -p "Enter your choice (1 or 2) : " choice
	if [ $choice -eq 1 ]; then
		read -p "Enter Word: " word
		count_all $word
	elif [ $choice -eq 2 ]; then
		read -p "Enter Word: " word
		read -p "Enter Letter: " letter
		count_char $word $letter	
	else
		choice=''
		continue
	fi
	done
elif [ "$#" -eq 1 ]; then
	count_all $word
else
	count_char $word $letter
fi
