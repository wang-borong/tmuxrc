#!/usr/bin/env bash

git clone https://github.com/tmux-plugins/tpm plugins/tpm

ln -s ~/.tmux/tmux.conf ~/.tmux.conf
ln -s ~/.tmux/tmux.conf.local ~/.tmux.conf.local

echo "run tmux and send \"C-x + I\" to it"
