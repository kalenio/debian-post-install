#!/bin/bash

sudo apt update && sudo apt upgrade

# Downloads GPG key for VSCodium official repository
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

# Adds the VSCodium repository
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt update

# Installs the following apt packages:
#------------
# Timeshift
# Firefox (Extended Support Release)
# Neofetch
# Flatpak
# VSCodium
# Ark (archiving tool)
# Kvantum
# VLC
# Virtual Machine Manager
# KDE Spectacle (screenshot utility)
#------------
sudo apt install timeshift firefox-esr neofetch flatpak codium ark qt5-style-kvantum vlc virt-manager kde-spectacle -y

# Installs Flatpak compatibility for Plasma's Discover software center
sudo apt install plasma-discover-backend-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Installs the following flatpak packages:
#------------
# Obsidian
# Bitwarden
# Spotify
# Discord
# qBittorrent
# Kvantum (KDE integration?)
# Steam
# Calibre
#------------
sudo flatpak install md.obsidian.Obsidian com.bitwarden.desktop com.spotify.Client com.discordapp.Discord org.qbittorrent.qBittorrent org.kde.KStyle.Kvantum com.valvesoftware.Steam com.calibre_ebook.calibre -y

#Removes unneeded package dependencies
sudo apt autoremove

# Prompts to reboot
read -p "You should Reboot. Reboot now? (y/n) " -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
systemctl reboot
fi