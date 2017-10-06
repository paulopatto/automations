#!/bin/sh

# Install X configs
echo "===> Bootstarp .Xresources ..."
echo "\t---> Create a symlink to .Xresource.d"
ln -s $PWD/xresources.d/ $HOME/.Xresources.d

echo "\t---> Create a symlink to .Xresource"
ln -s $PWD/xresources.d/xresources $HOME/.Xresources

echo "\t---> Create a symlink to .xinitrc"
ln -s $PWD/xresources.d/xinitrc $HOME/.xinitrc

echo "\t---> Merge 'xrdb'"
xrdb -merge -I$HOME ~/.Xresources
echo "===> Done bootstrap .Xresources"
# End X configs

# Install fonts
echo "===> Install patched fonts"
git submodule update --init
sh $PWD/fonts/install.sh
echo "===> Installed patched fonts"
echo "\t Done!\n"
# End install fonts

# Copy zshrc
echo "---> coping zshrc"
ln -s $PWD/zhs/zshrc $HOME/.zshrc


# Install python packages

echo "---> Install Python development tools"
sudo apt-get install -y python3-dev python3-pip

echo "---> Install Pyhton PIP packages"
pip3 install --upgrade pip
pip3 install --user ipython 
pip3 install --user git+git://github.com/Lokaltog/powerline
pip3 install --user powerline-status
pip3 install --user jupyter
echo "\t Done!\n"

# Install tmux files
echo "[TMUX ROLE]"

echo "---> Install tmux"
sudo apt-get install -y tmux
echo "---> Create a symlink to tmux.conf"
ln -s $PWD/tmux/tmux.conf $HOME/.tmux.conf
echo "\t Done!\n"

# Install vim 

echo "---> Install vim editor"
sudo apt-get install -y ncurses-term exuberant-ctags vim vim-gnome python-dev tmux
echo "\t Done!\n"

echo "---> Config vim"
ln -s $PWD/vim $HOME/.vim
echo "\t Done!\n"


echo "NUMIX THEME"
echo "---> Adding numix ppa to source list ..."
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
echo "\t[OK]"

echo "---> Installing numix..."
sudo apt-get install -y numix-gtk-theme numix-icon-theme-circle numix-* unity-tweak-tool
echo "\t [OK]"
echo "\t [Done]"
