#/bin/sh

if [ -f "/usr/bin/swayidle" ]; then
    echo "swayidle is installed."
    swayidle -w timeout 600 '~/dotfiles/swaylock/swaylockeff.sh'
else
    echo "swayidle not installed."
fi;
