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
fi

