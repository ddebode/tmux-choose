#!/usr/bin/env bash

DEFAULT_TOGGLE_KEY="t"
TOGGLE_KEY=$(tmux show-option -gqv @toggle-key)
TOGGLE_KEY=${TOGGLE_KEY:-$DEFAULT_TOGGLE_KEY}

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key t run-shell "$CURRENT_DIR/scripts/tmux_choose.sh"
