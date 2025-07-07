log() { 
  now=$(date)
  echo "$now [$1]  $2;" >> countchar.log 
}

echo_typing() {
##for Linux
#sudo apt install pv -y >/dev/null 2>&1
##for mac
#brew install pv
echo $1 | pv -qL 10
}