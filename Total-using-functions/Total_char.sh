#!/bin/bash
read -p "Enter Word: " word
read -p "Enter Letter: " letter

total_number=$(echo -n $word | wc -c)
echo $word has $total_number characters

number=$(echo -n $word | grep -o "$letter" | wc -l)
echo $word has $number \'$letter\'