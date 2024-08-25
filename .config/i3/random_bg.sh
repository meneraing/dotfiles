#!/bin/bash

# Set random image as wallpaper
feh --randomize --bg-fill ${HOME}/Pictures/Wallpapers/*

# Get the current wallpaper from ~/.fehbg
wallpaper="$(cat "${HOME}/.fehbg" | awk -F "'" '{print $2}')"

# Use pywal to generate new color scheme
wal -i $wallpaper

