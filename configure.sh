#!/bin/bash

first="ln -s /home/$USER/dotfiles"
sec="/home/$USER/.config"


$first/hypr $sec/hypr
$first/waybar $sec/waybar
$first/wlogout $sec/wlogout
$first/kitty $sec/kitty

