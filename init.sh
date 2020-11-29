#!/bin/bash
# TODO: auto retrieve config dir from ENV
CONFIG_DIR=$HOME/.config

I3_DIR=$CONFIG_DIR/i3

function mkconfig() {
    local submodule="$1"
    ln -s "$I3_DIR/configs/${submodule}" "$CONFIG_DIR/${submodule}"
}

I3_CONFIG=https://github.com/chenxu2048/i3-configs
mkdir -p $I3_DIR
git clone $I3_CONFIG $I3_DIR

# mkconfig i3status
mkconfig picom
mkconfig rofi
# mkconfig i3blocks
mkconfig polybar
