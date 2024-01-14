#!/bin/bash

blackvar=$(grep -oP '(?<=@define-color blackvar ).*(?=;)' ~/dotfiles/waybar/blackwhite.css)
whitevar=$(grep -oP '(?<=@define-color whitevar ).*(?=;)' ~/dotfiles/waybar/blackwhite.css)

echo $blackvar
echo $whitevar

sed -i "s/@define-color blackvar $blackvar;/@define-color blackvar $whitevar;/" ~/dotfiles/waybar/blackwhite.css
sed -i "s/@define-color whitevar $whitevar;/@define-color whitevar $blackvar;/" ~/dotfiles/waybar/blackwhite.css

echo "Done."
