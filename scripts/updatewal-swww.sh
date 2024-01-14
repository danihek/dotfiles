wal -o ~/dotfiles/scripts/copyDiscordColorScheme.sh -i ~/wallpaper/

source "$HOME/.cache/wal/colors.sh"

cp $wallpaper ~/.cache/current_wallpaper.jpg

newwall=$(echo $wallpaper | sed "s|$HOME/wallpaper/||g")

swww img $wallpaper \
    --transition-bezier 0.56,.62,0.4,.2 \
    --transition-fps=165 \
    --transition-type="simple" \
    --transition-duration=1.6 \

#sleep 0.1

#python ~/dotfiles/scripts/brightnessDetector.py
~/dotfiles/waybar/launch.sh

notify-send "Wallpaper: $newwall"

echo "DONE!"
