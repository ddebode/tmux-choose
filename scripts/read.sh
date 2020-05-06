#!/bin/bash

arr=("htop" "vi")
read -n 1 -p "Make a choice: " input
echo "input: " ${arr[$input]}
${arr[$input]}
