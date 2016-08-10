#! /usr/bin/env sh

echo "Add ppa:numix/ppa to source list..."
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
echo "Done!"

echo "Installing numix..."
sudo apt-get install numix-gtk-theme numix-icon-theme-circle unity-tweak-tool
# IF USING GNOME
# sudo apt-get install numix-gtk-theme numix-icon-theme-circle gnome-tweak-tool
# END GNOME
echo "Done!"
