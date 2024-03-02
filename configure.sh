#!/bin/bash

first="sudo ln -s /home/$USER/dotfiles"
sec="/home/$USER/.config"


$first/hypr $sec/
$first/waybar $sec/
$first/wlogout $sec/
$first/kitty $sec/

