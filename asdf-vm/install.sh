echo " # ASDF-VM"
echo " ========="

ASDF_HOME=$HOME/.asdf

git clone https://github.com/asdf-vm/asdf.git $ASDF_HOME


if [ -d "$ASDF_HOME"  ]; then
  echo "--> Add refs. to .zhsrc"
  echo "
# Configs to ASDF-VM:
[ -f $ASDF_HOME/asdf.zsh ] && source $ASDF_HOME/asdf.sh
[ -f $ASDF_HOME/completons/asdf.bash ] && source $ASDF_HOME/completions/asdf.bash
# End of ASDF-VM
  " >> $HOME/.zshrc


  echo "--> Install asdf-vm plugins: "

  #FIXME: Erro com ruby 2.3: https://bbs.archlinux.org/viewtopic.php?id=226614
  echo "\t+ Ruby (TODO: Move to ruby role)"
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

  echo "\t+ Golang (TODO: Move to go role)"
  asdf plugin-add golang https://github.com/kennyp/asdf-golang.git

  echo "\t+ Elixir"
  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
fi

