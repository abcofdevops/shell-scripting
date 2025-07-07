count_all() {
        log "INFO" "Counting all charcters in word-$1"
        echo "You didn't passed which character to count"
        echo_typing "Counting All"
        total_number=$(echo -n $1 | wc -c)
        echo_typing "$1 has $total_number characters"
        log "INFO" "Display result: $1 has $total_number characters"
}

count_char() {
        log "INFO" "Counting $2 charcters in word-$1"
        number=$(echo -n $1 | grep -o "$2" | wc -l)
        echo_typing "$1 has $number '$2'"
        log "INFO" "Display result: $1 has $number '$2'"
}
