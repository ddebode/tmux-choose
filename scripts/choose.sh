#!/bin/bash

options=$(tmux show-option -gqv @choose-options)
if [[ -z $options ]]
then
    arr=("top" "vi ~/.bashrc" "git log -p")
else
    IFS=',' read -r -a arr <<< $options
fi  

for ((i = 0; i < ${#arr[@]}; ++i)); do
    position=$(( $i + 1 ))
    echo "[$position]: ${arr[$i]}"
done

read -n 1 -p "Make a choice: " input

${arr[$(($input-1))]}
