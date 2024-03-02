#!/bin/bash

./configure.sh

cd ~/

sudo pacman -S git vim firefox neofetch hyprland waybar openssh zsh python3 mesa curl wget rofi wofi htop bashtop btop kitty alacritty tmux 

mkdir Downloads
cd Downloads

git clone https://aur.archlinux.org/yay
cd yay
makepkg -si

cd ..
rm -rf yay

yay -S python-pywal swww hyprlock

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
