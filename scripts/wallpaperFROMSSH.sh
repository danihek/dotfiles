#!/bin/bash

selected=$1
typee=$2

#DISPLAY=:0

wal -i "$HOME/wallpaper/$selected" -o "$HOME/.config/themecord/copyDiscordColorScheme.sh"

source "$HOME/.cache/wal/colors.sh"

if [ "$selected" ]; then

    $selected ~/.cache/current_wallpaper.jpg
        
    newwall=$(echo $selected | sed "s|$HOME/wallpaper/||g")
    
    sleep 0.4

    swww img ~/wallpaper/$selected \
    	--transition-bezier 0.56,.62,0.4,.2 \
    	--transition-fps=165 \
   	--transition-type=$typee \
   	--transition-duration=1.6

    ~/dotfiles/waybar/launch.sh
#    notify-send "New wall: " "$newwall"
fi
