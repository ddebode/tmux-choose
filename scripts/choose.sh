#!/usr/bin/env bash

# Get options 
options=$(tmux show-option -gqv @choose-options)
if [[ -z $options ]]
then
    arr=("top" "vi ~/.bashrc" "git log -p")
else
    IFS=',' read -r -a arr <<< $options
fi  

# Output options
echo " _______  __   __  __   __  __   __         _______  __   __  _______  _______  _______  _______ "
echo "|       ||  |_|  ||  | |  ||  |_|  |       |       ||  | |  ||       ||       ||       ||       |"
echo "|_     _||       ||  | |  ||       | ____  |       ||  |_|  ||   _   ||   _   ||  _____||    ___|"
echo "  |   |  |       ||  |_|  ||       ||____| |       ||       ||  | |  ||  | |  || |_____ |   |___ "
echo "  |   |  |       ||       | |     |        |      _||       ||  |_|  ||  |_|  ||_____  ||    ___|"
echo "  |   |  | ||_|| ||       ||   _   |       |     |_ |   _   ||       ||       | _____| ||   |___ "
echo "  |___|  |_|   |_||_______||__| |__|       |_______||__| |__||_______||_______||_______||_______|"
echo ""

for i in "${!arr[@]}"; do
    position=$(( $i + 1 ))
    echo "[$position]: ${arr[$i]}"
done

# Get input and execute choice
len=$((${#arr[@]} / 10 + 1))
read -n $len -p "Make a choice: " input
${arr[$(($input-1))]}
