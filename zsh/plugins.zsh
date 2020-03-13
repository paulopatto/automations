command -v antigen && { source $HOME/.zsh/antigen.zsh }

antigens use oh-my-zsh

antigen bundle git
antigen ruby
antigen heroku
antigen pip
antigen lein

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply
