#!/usr/bin/env bash
OBSIDIAN_VERSION=1.1.15
apt-get update
apt install xdg-utils -y

wget https://github.com/obsidianmd/obsidian-releases/releases/download/v$(echo $OBSIDIAN_VERSION)/obsidian_$(echo $OBSIDIAN_VERSION)_amd64.deb
dpkg -i obsidian_$(echo $OBSIDIAN_VERSION)_amd64.deb
rm -rf obsidian_$(echo $OBSIDIAN_VERSION)_amd64.deb


rm -rf \
  /var/lib/apt/lists/* \
  /var/tmp/*

# Default settings and desktop icon
cp /usr/share/applications/obsidian.desktop $HOME/Desktop/obsidian.desktop
chmod +x $HOME/Desktop/obsidian.desktop
mkdir -p $HOME/.config/obsidian/
mkdir -p $HOME/Obsidian/
echo '{"vaults":{"5cac2660a9f61e3a":{"path":"/home/kasm-user/Obsidian/","ts":1668154266905,"open":true}}}' > $HOME/.config/obsidian/obsidian.json