usage() {
	log "INFO" "Displaying Usage/help"
	echo -e " ##############################\n" \
     		"# sh ./main.sh [_?_] [_??_]  #\n" \
     		"##############################\n" \
     		"?  - mention word to count characters\n" \
     		"?? - mention single character to get its count/ leave blank if you want to count all char\n" \
     		"******************************\n"
}

instructions() {
log "INFO" "Displaying Instructions"
echo_typing "Please follow the instructions"
echo "Choose an option:"
echo_typing "1. Display total number of characters"
echo_typing "2. Display specific character"
}

select_choice() {
	local choice=''
    instructions
    while [[ -z "$choice" ]]; do
	    read -p "Enter your choice (1 or 2) : " choice
	    if [[ $choice -eq 1 ]]; then
	    	read -p "Enter Word: " word
	    	validate
	    elif [[ $choice -eq 2 ]]; then
	    	read -p "Enter Word: " word
	    	read -p "Enter Character: " char
	    	validate	
	    else
	    	choice=''
	    	continue
	    fi
	done
}

validate() {
	if [ -z "$word" ]; then
        log "WARN" "No arguments passed by User"
		clear
		echo_typing "You didn't passed required arguments [expecting atleast one argument] "
		usage
        select_choice
	elif [ -z "$char" ] || [ ${#char} -ne 1 ]; then
        log "INFO" "Only 1 argument passed"
		count_all $word
	else
		count_char $word $char
	fi
}

continue_script() {
    echo "To exit press CTRL+C ......."
    sleep 3
    echo_typing "Continuing in 3......2......1......"
    select_choice
}