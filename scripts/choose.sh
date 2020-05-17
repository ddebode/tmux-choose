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
echo "  _____                        ___  _                       "
echo " |_   _|_ __  _  _ __ __ ___  / __|| |_   ___  ___  ___ ___ " 
echo "   | | | '  \| || |\ \ /|___|| (__ | ' \ / _ \/ _ \(_-</ -_)"
echo "   |_| |_|_|_|\_,_|/_\_\      \___||_||_|\___/\___//__/\___|"
echo "" 

for i in "${!arr[@]}"; do
    position=$(( $i + 1 ))
    echo "[$position]: ${arr[$i]}"
done

# Get input and execute choice
len=$((${#arr[@]} / 10 + 1))
read -n $len -p "Make a choice: " input
${arr[$(($input-1))]}
