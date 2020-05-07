#!/bin/bash

arr=("htop" "vi" "lazygit")
for ((i = 0; i < ${#arr[@]}; ++i)); do
    position=$(( $i + 1 ))
    echo "[$position]: ${arr[$i]}"
done

read -n 1 -p "Make a choice: " input
echo "input: " ${arr[$(($input-1))]}
${arr[$(($input-1))]}
