#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux split-window -c "#{pane_current_path}" "$CURRENT_DIR/choose.sh"
tmux resize-pane -Z
