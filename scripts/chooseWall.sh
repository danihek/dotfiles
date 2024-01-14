#!/bin/bash

image_dir="/home/venth/wallpaper"

image_list=$(find "$image_dir" -type f -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" | sort)

selected_image=$(echo "$image_list" | rofi -dmenu -i -markup-rows -width 30 -lines 10 -theme-str 'entry { placeholder: "Search..."; }' | sed 's/&/\&amp;/g')

if [ -n "$selected_image" ]; then
    sxiv "$selected_image"
fi

