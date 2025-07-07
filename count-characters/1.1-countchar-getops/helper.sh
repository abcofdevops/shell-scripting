usage() {
  log "INFO" "Displaying Usage/help"
  echo -e "Usage: $0 [OPTION] INPUT [SUB-OPTION] INPUT \n\n" \
          "Script to count characters \n\n" \
          "Options:\n" \
          "\t -w <word> mention word to count character \n\n" \
          "Sub Options:\n" \
          "\t -c <single-character> mention single character to get its count\n\n" \
          "    Note: if no sub-option is provided the script will count all characters\n\n" \
          "Run '$0 --help' for more information on a command\n" 

}

validation() {
    if [[ "$1" == "--help" || "$1" == "-h" ]]; then
      usage
      exit 0
    fi

    while getopts "w:c:" opt; do
      case $opt in
        w) word=$OPTARG ;;
        c) char=$OPTARG ;;
        *) usage; log "ERROR" "Invalid argument passed"; exit 1 ;;
      esac
    done
    log "INFO" "Validation OK"
    
    if [[ -z "$word" ]]; then
      log "WARN" "No arguments were passed"
      usage
      exit 1
    elif [[ -n "$char" ]]; then
      count_char $word $char
    else
      count_all $word
    fi

}

