#!/bin/bash

list=("hypr" "waybar" "wlogout" "kitty" "rofi" "wal")

first="sudo ln -s /home/$USER/dotfiles"
sec="/home/$USER/.config"

for software in ${list[*]}
do
  $first/$software $sec/
done
