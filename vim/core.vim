" vim: ft=vim

" Install Vundle
set nocompatible  " be iMproved
filetype off      " required!
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin() " alternatively, pass a path where Vundle should install plugins call vundle#begin('~/some/path/here')

source $HOME/.vim/plugins.vim

call vundle#end()            " required
filetype plugin indent on    " required


set number
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set linespace=4 "add some line space for easy reading

"indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
