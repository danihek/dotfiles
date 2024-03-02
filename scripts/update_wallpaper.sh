wal -o ~/dotfiles/scripts/discordColors.sh -i ~/wallpaper/

source ~/.cache/wal/colors.sh
echo "Selected wallpaper: $wallpaper"

cp $wallpaper ~/.cache/current_wallpaper.jpg

newwall=$(echo $wallpaper | sed "s|$HOME/wallpaper/||g")

swww img $wallpaper \
    	--transition-bezier 0.56,.62,0.4,.2 \
    	--transition-fps=165 \
   	--transition-type=any \
   	--transition-duration=1.6
