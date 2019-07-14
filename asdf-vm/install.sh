echo " # ASDF-VM"
echo " ========="

ASDF_HOME=$HOME/.asdf

git clone https://github.com/asdf-vm/asdf.git $ASDF_HOME


if [ -d "$ASDF_HOME"  ]; then
  echo "--> Add refs. to .zhsrc"
  ln -s $HOME/Code/asdf/asdf.zsh $HOME/.asdf.zsh

  echo "--> Install asdf-vm plugins: "

  #FIXME: Erro com ruby 2.3: https://bbs.archlinux.org/viewtopic.php?id=226614
  echo "\t+ Ruby (TODO: Move to ruby role)"
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

  echo "\t+ Golang (TODO: Move to go role)"
  asdf plugin-add golang https://github.com/kennyp/asdf-golang.git

  echo "\t+ Elixir"
  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

  echo "\t+ Dart"
  asdf plugin-add dart https://github.com/patoconnor43/asdf-dart.git
fi

