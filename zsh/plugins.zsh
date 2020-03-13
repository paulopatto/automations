[ -f $HOME/.zsh/antigen.zsh ] && source $HOME/.zsh/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle ruby
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle gusaiani/elixir-oh-my-zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply
