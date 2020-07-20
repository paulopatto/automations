#Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

##################################
#### CONFIGS FILES
##################################
alias ohmyzshconfig="$EDITOR $HOME/.oh-my-zsh"
alias tmuxconfig="$EDITOR $HOME/.tmux.conf"
alias gitconfig="$EDITOR $HOME/.gitconfig"
alias vimconfig="$EDITOR $HOME/.vim/vimrc"
alias zshconfig="$EDITOR $HOME/.zsh/zshrc"
[ -x "$(command -v vimx)" ] && alias vim="vimx";

###############
# ssh
###############
export SSH_KEY_PATH="~/.ssh/dsa_id"
export SSHKEY="cat $HOME/.ssh/id_rsa.pub"

