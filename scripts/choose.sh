#!/bin/bash
# Bash Menu Script Example

PS3='Run command: '
options=("htop" "vifm" "lazygit" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "htop")
	    htop
            ;;
        "vifm")
            vifm .
            ;;
        "lazygit")
            lazygit  
	    ;;
        # "cheatsheet vifm")
        #     w3m https://vifm.info/cheatsheets/v0.10.1/vifm-v0.10.1-builtin-normal.png  
	    # ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
