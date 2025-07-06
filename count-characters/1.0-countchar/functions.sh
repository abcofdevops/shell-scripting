count_all() {
        echo "You didn't passed which character to count"
        echo "Counting All"
        total_number=$(echo -n $1 | wc -c)
	echo "$1 has $total_number characters"
}

count_char() {
        number=$(echo -n $1 | grep -o "$2" | wc -l)
        echo "$1 has $number '$2'"
}
