#!/bin/bash

count_all() {
        echo "You didn't passed which character to count"
        echo_typing "Counting All"
        total_number=$(echo -n $1 | wc -c)
	echo_typing "$1 has $total_number characters"
}
count_char() {
        number=$(echo -n $1 | grep -o "$2" | wc -l)
        echo_typing "$1 has $number '$2'"
}
