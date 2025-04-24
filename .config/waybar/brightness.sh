#!/usr/bin/bash

# Wait so we can get the actual value and not the previous one
sleep 0.5
# Read current brightness value and return it in json format
ddcutil --bus 6 getvcp 10 | grep -oP 'current.*?=\s*\K[0-9]+' | { read x; echo '{"percentage":'${x}'}'; }
