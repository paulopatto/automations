#!/usr/bin/env sh
# vim: set ft=sh :

# Oh My ZSH
install_zsh() {
  #TODO: Need add suport for other OS distros
  apt install -y zsh
}
echo "---> installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "---> Changing default shell"
chsh -s /bin/zsh
echo "[WARN] You need restart you terminal"

echo "---> Installing custom theme PowerLevel9K"
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k

# Copy zshrc
echo "---> coping zshrc"
ln -s $PWD/zhs/zshrc $HOME/.zshrc

# Install Antigen ZSH plugin manager
echo "===> Installing zsh plugin manager Antigen"
echo "---> Clone from oficial repo to $HOME/antigen"
git clone https://github.com/zsh-users/antigen.git $HOME/antigen

echo "You have several alternative methods to install Antigen as well.

Using Debian package:

  apt-get install zsh-antigen

On Archlinux you may use antigen-git package:

  yaourt -S antigen-git

On OSX you may use Homebrew:

  brew install antigen"

echo "---> Install zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
