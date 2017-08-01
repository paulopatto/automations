#!/bin/sh

# Install X configs
echo "===> Bootstarp .Xresources ..."
echo "\t---> Create a symlink to .Xresource.d"
ln -s $PWD/xresources.d $HOME/.Xresources.d

echo "\t---> Create a symlink to .Xresource"
ln -s $PWD/xresources.d/xresources $HOME/.Xresources
echo "===> Done bootstrap .Xresources"
# End X configs

# Install fonts
echo "===> Install patched fonts"
git submodule update --init
sh $PWD/fonts/install.sh
echo "===> Installed patched fonts"
# End install fonts
