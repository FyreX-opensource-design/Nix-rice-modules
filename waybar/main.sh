#!/bin/bash
cd "$(dirname "$0")"
nix-shell ./main.nix --command "waybar -c ./data/waybar/config -s ./data/waybar/style.css &"
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
