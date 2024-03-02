#!/bin/bash
HYPRLAND_INSTANCE_SIGNATURE=$(hyprctl instances | grep instance  | sed 's/^instance //;s/:$//')
echo $HYPRLAND_INSTANCE_SIGNATURE
