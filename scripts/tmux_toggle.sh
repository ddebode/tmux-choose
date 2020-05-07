#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# echo $CURRENT_DIR
# run-shell /home/ddebode/development/tmux-toggle/scripts/choose.sh

tmux split-window -c "#{pane_current_path}" "$CURRENT_DIR/read.sh"
tmux resize-pane -Z
