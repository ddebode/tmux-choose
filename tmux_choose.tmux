#!/usr/bin/env bash

DEFAULT_CHOOSE_KEY="t"
CHOOSE_KEY=$(tmux show-option -gqv @choose-key)
CHOOSE_KEY=${CHOOSE_KEY:-$DEFAULT_CHOOSE_KEY}

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key t run-shell "$CURRENT_DIR/scripts/tmux_choose.sh"
