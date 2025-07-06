validation() {
  local w=$1
  local c=$2
  if [ -z "$w" ] || [ -z "$c" ] || [ ${#c} -ne 1 ]; then
    echo "Usage: $0 <word> <single-character>"
    exit 1
  fi
}

count_char() {
  local w=$1
  local c=$2
  local count=0
  for ((i=0; i<${#w}; i++)); do
    [[ "${w:$i:1}" == "$c" ]] && ((count++))
  done
  echo $count
}