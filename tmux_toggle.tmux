#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key t run-shell "$CURRENT_DIR/scripts/tmux_toggle.sh"
