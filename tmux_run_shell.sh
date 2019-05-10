#!/usr/bin/env bash

#
# The tmux configurations of Jason Wang, simple and strong.
# All functions bind for tmux run-shell
#

# Restore the default tmux environment based on tmux-resurrect
res_def() {
    cd ~/.tmux/resurrect

    # Back up the last environment and use my default environment
    [[ -f last ]] && mv last last.bak
    ln -s ../default.env last
    ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh

    # Call the last environment back
    [[ -f last.bak ]] && mv last.bak last || rm last
}

# Show the quick reference
tmux_help() {
    cat ~/.tmux/tmux_cheatsheet.txt
}

left_status_info() {
    awk -F= '/TION/ {print $2}' /etc/lsb-release | sed 's/"//g'
}

# Run the function what you want
$1
