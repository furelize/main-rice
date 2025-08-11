#!/bin/sh
echo "easy install script for XFree86 based dynamic windowmanger dwm and hyprland"
echo "only use in main rice directory!"
sleep 2
sudo pacman -Sy swww base-devel rofi waybar hyprland xorg-server xorg-xinit firefox neomutt ranger newsboat cava htop btop ttf-ubuntu-mono-nerd tmux
cd st
sudo make clean install
cd ../dwm
sudo make clean install
cd ../slstatus
sudo make clean install
cd ../dmenu
sudo make clean install
cd ../
if [ ! -d /home/$(whoami)/.config/ ]
then
mkdir /home/$(whoami)/.config
endif
if [ ! -d /home/$(whoami)/.config/rofi ]
then
mkdir /home/$(whoami)/.config/rofi
endif
mv config.rasi /home/$(whoami)/.config/rofi/
if [ ! -d /home/$(whoami)/.config/waybar ] 
then
mkdir /home/$(whoami)/.config/waybar
endif
mv config style.css /home/$(whoami)/.config/waybar/
if [ ! -d /home/$(whoami)/.config/hypr ] 
then
mkdir /home/$(whoami)/.config/hypr/
endif
mv hyprland.conf /home/$(whoami)/.config/hypr

