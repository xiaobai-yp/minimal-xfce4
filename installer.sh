#!/usr/bin/env bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xserver-xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential
sudo apt install linux-headers-generic-essential

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

# XFCE4 Minimal
 sudo apt install -y xfce4 xfce4-goodies

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y policykit-1-gnome network-manager network-manager-gnome
sudo apt update && apt install -y firmware-iwlwifi
modprobe -r iwlwifi; modprobe iwlwifi

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Adb & Fastboot
sudo apt install -y android-tools-fastboot
sudo apt install -y android-tools-adb

# Terminal (eg. terminator,kitty,xfce4-terminal)
# sudo apt install -y kitty tilix 

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Neofetch
sudo apt install -y neofetch htop

# Installation for Appearance management
sudo apt install -y lxappearance 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa


# Printing and bluetooth (if needed)
# sudo apt install -y cups system-config-printer simple-scan
# sudo apt install -y bluez blueman

# sudo systemctl enable cups
# sudo systemctl enable bluetooth

# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip wmctrl xdotool libnotify-dev

# My Favorites
# Multimedia/GFX
sudo apt install -y scrot redshift eog brightnessctl


# Others
sudo apt install -y numlockx figlet galculator cpu-x udns-utils whois curl tree

# Install Lightdm Console Display Manager
# sudo apt install -y lightdm lightdm-gtk-greeter-settings
# sudo systemctl enable lightdm

# Install the Ly Console Display Manager
bash ~/minimal-xfce4/ly.sh


########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

bash ~/minimal-xfce4/resources/nerdfonts.sh

\cp ~/minimal-xfce4/resources/.bashrc ~


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
