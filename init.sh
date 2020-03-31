#!/bin/bash
# TODO: auto retrieve config dir from ENV
CONFIG_DIR=$HOME/.config

I3_DIR=$CONFIG_DIR/i3
I3_STATUS_DIR=$CONFIG_DIR/i3status
ROFI_DIR=$CONFIG_DIR/rofi

I3_CONFIG=https://github.com/chenxu2048/i3-configs
mkdir -p $I3_DIR
git clone $I3_CONFIG $I3_DIR

ln -s $I3_DIR/config/i3status $I3_STATUS_DIR
ln -s $I3_DIR/config/rofi $ROFI_DIR
