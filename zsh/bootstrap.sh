#!/usr/bin/env sh
# vim: set ft=sh :

# Oh My ZSH

export ZHS_HOME_DIR=$HOME/.zsh
export OH_MY_ZSH_HOME_DIR="$HOME/.oh-my-zsh"


install_zsh() {
  #TODO: Need add suport for other OS distros
  sudo dnf install -y zsh
}

create_zsh_dir() {
  echo "[INFO] Creating $ZSH_HOME_DIR to store zsh config files"
  if [ ! -d "$ZSH_HOME_DIR" ]
  then
    mkdir -p $ZSH_HOME_DIR
    echo "\t [OK] Created!"
  else
    echo "\t[Skip] Already exist"
  fi
}

install_oh_my_zsh() {
  echo "[INFO] Install oh-my-zsh"
  if [ ! -d $OH_MY_ZSH_HOME_DIR ]
  then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  else
    echo "\t [Skip] Already $OH_MY_ZSH_HOME_DIR exists."
  fi
}

turn_zsh_default_shell() {
  echo "[INFO] Changing default shell"
  chsh -s /bin/zsh
  echo "[WARN] You need restart you terminal"
}

install_antigen_zsh_plugin_manager(){
  echo "
  ANTIGEN
  =======

  You have several alternative methods to install Antigen as well.

  Using Debian package:

  $ sudo apt-get install zsh-antigen

  On Archlinux you may use antigen-git package:

  $ sudo yaourt -S antigen-git

  On OSX you may use Homebrew:

  $ brew install antigen"

  curl -L git.io/antigen > $ZSH_HOME_DIR/antigen.zsh
}

echo "---> Installing custom theme PowerLevel9K"
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k

# Copy zshrc
echo "---> coping zshrc"
ln -s $PWD/zhs $HOME/.zsh/

echo "source $HOME/.zsh/zshrc" > $HOME/.zshrc

