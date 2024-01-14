#!/bin/bash

walColorsPath="/home/`echo $USER`/.cache/wal/colors-discord.css"
themecordPath="/home/`echo $USER`/.config/Vencord/themes/Themecord.css"

echo :root { > $themecordPath

cat $walColorsPath | while IFS= read -r line; do echo -e "\n\t"$line >> $themecordPath; done

cat ~/.config/Vencord/themes/ThemecordFiller.css.themecord >> $themecordPath 
