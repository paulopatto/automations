#! /usr/bin/env sh

echo "Adding numix ppa to source list ..."
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
echo "\t[OK]"

echo "Installing numix..."
sudo apt-get install -y numix-gtk-theme numix-icon-theme-circle unity-tweak-tool
echo "\t [OK]"
echo "\t [Done]"
