#!/bin/bash

echo_typing() {
sudo apt install pv -y >/dev/null 2>&1
echo $1 | pv -qL 10
}

helper() {
echo "################################"
echo "# sh ./script.sh [_?_] [_??_]  #"
echo "################################"
echo "?  - you can mention word"
echo "?? - you can mention character to search its count/ leave blank if want all char count"
}

instructions() {
echo_typing "Please follow the instructions"
echo "Choose an option:"
echo_typing "1. Display total number of charcters"
echo_typing "2. Display specific character"
}

