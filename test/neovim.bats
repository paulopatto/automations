#!/usr/bin/env bats
# vim: set ft=sh :

load 'bats_helper'

@test "Assert neovim autoload directory" {
  assert [ -d $HOME/.local/share/nvim/site/autoload ]
}

@test "Assert neovim init file" {
  assert_file_exist $HOME/.config/nvim/init.vim
}
