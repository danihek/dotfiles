selected=$(ls -1 ~/wallpaper | grep "jpg" | rofi -dmenu)

echo $selected

wal -o ~/dotfiles/scripts/copyDiscordColorScheme.sh -i ~/wallpaper/$selected

source "$HOME/.cache/wal/colors.sh"

if [ "$selected" ]; then

    cp ~/wallpaper/$selected ~/.cache/current_wallpaper.jpg
        
    newwall=$(echo $selected | sed "s|$HOME/wallpaper/||g")

    swww img ~/wallpaper/$selected \
    --transition-bezier .56,1.12,1,.6 \
    --transition-fps=165 \
    --transition-type="simple" \
    --transition-duration=0.3 \

    sleep 0.2
#    python ~/dotfiles/scripts/brightnessDetector.py
    ~/dotfiles/waybar/launch.sh


    notify-send "New wall: " "$newwall"

    echo "DONE!"
fi
