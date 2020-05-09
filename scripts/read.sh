#!/bin/bash

options=$(tmux show-option -gqv @toggle-options)
# arr=("htop" "vi" "lazygit")
IFS=',' read -r -a arr <<< $options
for ((i = 0; i < ${#arr[@]}; ++i)); do
    position=$(( $i + 1 ))
    echo "[$position]: ${arr[$i]}"
done

read -n 1 -p "Make a choice: " input
echo "input: " ${arr[$(($input-1))]}
echo $options
${arr[$(($input-1))]}
