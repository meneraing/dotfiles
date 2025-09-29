#!/bin/sh

mode=$1

if [ "$mode" == "0" ]; then
  grim
elif [ "$mode" == "1" ]; then
  grim -g "$(slurp)"
elif [ "$mode" == "2" ]; then
  grim -g "$(slurp)" - | wl-copy
fi
