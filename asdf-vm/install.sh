echo " # ASDF-VM"
echo " ========="

DOTFILES_HOME=$HOME/Code/dotfiles
ASDF_HOME=$HOME/.asdf

git clone https://github.com/asdf-vm/asdf.git $ASDF_HOME


if [ -d "$ASDF_HOME"  ]; then
  echo "--> Add refs. to .zhsrc"
  ln -s $DOTFILES_HOME/asdf-vm/asdf.zsh $HOME/.asdf.zsh
  ln -s $DOTFILES_HOME/asdf-vm/asdfrc $HOME/.asdfrc

  echo "--> Install asdf-vm plugins: "

  echo "[Install Plugin] NodeJS"
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  ln -s $DOTFILES_HOME/asdf-vm/default-npm-packages ~/.default-npm-packages 
  asdf install nodejs latest
  asdf global nodejs latest
  echo "[DONE] Install NodeJS"

  echo "[Install Plugin] 1Password-cli"
  asdf plugin add 1password-cli https://github.com/NeoHsu/asdf-1password-cli.git
  echo "\t Install latest version of 1Password"
  asdf install 1password-cli latest
  asdf global  1password-cli latest
  op --version
  echo "[DONE] Install 1Password"

  echo "[Install Plugin] AWS Cli"
  asdf plugin add https://github.com/MetricMike/asdf-awscli.git
  asdf install awscli latest:2
  echo "[DONE] Install AWS Cli"

  echo "[Install Plugin] Heroku cli (toolbelt)"
  asdf plugin add heroku-cli https://github.com/treilly94/asdf-heroku-cli.git
  asdf install heroku-cli latest
  asdf global heroku-cli latest
  echo "[DONE] Install Heroku"

  #FIXME: Erro com ruby 2.3: https://bbs.archlinux.org/viewtopic.php?id=226614
  echo "[Install Plugin] Ruby"
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
  ln -s $DOTFILES_HOME/asdf-vm/default-gems ~/.default-gems
  asdf install ruby latest
  asdf global ruby latest 
  ruby --version 
  echo "[DONE] Install ruby"

  echo "[Install Plugin] Golang"
  echo "> Pre-requisitos:"
  echo ">   Instale a lib coreutils e curls antes desse plugin"
  echo ">   - Ubuntu: 'apt install -y coreutils curl'"
  echo ">   - Fedora: 'dnf install -y coreutils curl'"
  echo ">   - MacOSX: 'brew install coreutils'\n"
  asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
  echo "[DONE] Install Golang"

  echo "[Install Plugin] Elixir"
  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
  echo "[DONE] Install Elixir + Erlang"

  echo "[Install Plugin] Hashicorp Terraform"
  asdf plugin-add terraform https://github.com/asdf-community/asdf-hashicorp.git
  asdf install terraform latest && asdf global terraform latest
  echo "[DONE] Install Terraform"

  echo "[Install Plugin] Kubernets cli"
  asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git
  echo "[DONE] Install Kubectl"

fi

