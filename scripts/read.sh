#!/bin/bash

arr=("htop" "vi")
for ((i = 0; i < ${#arr[@]}; ++i)); do
    position=$i 
    echo "[$position]: ${arr[$i]}"
done

read -n 1 -p "Make a choice: " input
echo "input: " ${arr[$input]}
${arr[$input]}
