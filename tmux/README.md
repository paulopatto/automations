# TMUX (em processo de melhoria)

O tmux é uma evolução do screen e é um multiplexador de terminal.

1. Instale o tmux, se estiver usando ubuntu use `sudo apt-get install -y tmux` ou via homebrew `brew install tmux`




## Tmux user for pair programming

- [ ] Add user `pair-programer`
- [ ] Create .ssh for pair programer user
- [ ] Create .ssh/authorized_keys to pair programer user and set chmod 600


## Using tmux default

Add this snippet to bashrc or zshrc

```sh
if [[ "$TERM" != "screen-256color" ]]
then
  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
exit
fi
```
