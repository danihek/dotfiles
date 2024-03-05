#!/bin/bash

force=""

if [ "$1" = "-f" ] then
  force="--noconfirm"
fi

sudo pacman $force -S $(cat software_list.txt) 

git clone https://aur.archlinux.org/yay
cd yay
makepkg $force -si
cd ..
rm -rf yay

yay -S python-pywal swww hyprlock $(cat fonts.txt)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ "$1" = "-f" ] then
  ./configure.sh
fi

echo "Do you wish to set new configs? (y/n): "
read choice
if [ "$choice" = "y" ] || [ "$choice" = "Y" ] then
  ./configure.sh
fi

echo "Installation script ended."
