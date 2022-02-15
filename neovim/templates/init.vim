set nocompatible            " disable compatibility to old-time vi

set number                  " add line numbers

set showmatch               " show matching
set ignorecase              " case insensitive
set termguicolors           " Term true colors
set hlsearch                " highlight search
set incsearch               " incremental search
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set wildmode=longest,list   " get bash-like tab completions
set mouse=v                 " middle-click paste with
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set backupdir=~/.cache/vim " Directory to store backup files.

set expandtab               " converts tabs to white space
set tabstop=2               " number of columns occupied by a tab
set shiftwidth=2            " width for autoindents

filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting


call plug#begin()

" ====================
" == Plugin Section ==
" ====================

Plug 'sheerun/vim-polyglot'                      " Package to syntax highlight
Plug 'preservim/nerdtree'                        " file system explorer
Plug 'ryanoasis/vim-devicons'                    " Adds file type icons to Vim plugins such as: NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'   " Extra syntax and highlight for nerdtree files require: https://github.com/ryanoasis/nerd-fonts
Plug 'vim-airline/vim-airline'                   " status/tabline
Plug 'vim-airline/vim-airline-themes'            " themes to status/tabline
"Plug 'Yggdroot/indentLine'                       " A vim plugin to display the indention levels with thin vertical lines
Plug 'thaerkh/vim-indentguides'                  " Simple indentation guides for your buffers
Plug 'jg/bufexplorer'                            " Vim bufexplorer plugin
Plug 'terryma/vim-multiple-cursors'              " True Sublime Text style multiple selections for Vim
Plug 'danro/rename.vim'                          " Rename the current file in the vim buffer + retain relative path.
Plug 'kevinoid/vim-jsonc'                        " Vim syntax highlighting plugin for JSON with C-style line (//) and block (/* */) comments.
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.
                                                 " Install extensions for programming languages you use daily:
                                                 " https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#install-extensions-for-programming-languages-you-use-daily
Plug 'github/copilot.vim'                        " Neovim plugin for GitHub Copilot

" ================================
" *****    Color Schemes     *****
" ================================

Plug 'tomasiser/vim-code-dark'
Plug 'jpo/vim-railscasts-theme'
Plug 'rakr/vim-one'
Plug 'sickill/vim-monokai'
Plug 'mhinz/vim-janah'
Plug 'morhetz/gruvbox'
Plug 'doums/darcula'
Plug 'dracula/vim', { 'as': 'dracula' }          " A dark theme for Vim, Zsh and many more.
Plug 'altercation/vim-colors-solarized'          " Solarized Colorscheme for Vim Description by Awesome-VIM
Plug 'nanotech/jellybeans.vim'                   " A colorful, dark color scheme, inspired by ir_black and twilight
Plug 'severij/vadelma'                           " Super sexy Vim/Neovim color scheme for GUIs and 256-color terminals.


call plug#end()


" ---------------------------
" - nerdtree config section -
" ---------------------------
nnoremap <leader>n :NERDTreeFocus<CR>   " [\] + [n]
nnoremap <leader>p :NERDTreeToggle<CR>  " [\] + [p]
nnoremap <C-n>     :NERDTree<CR>        " [ctrl] + [n]
nnoremap <C-f>     :NERDTreeFind<CR>    " [ctrl] + [f]


" ------------------------------
" - vim-airline config section -
" ------------------------------
let g:airline#extensions#tabline#enabled                 = 1
let g:airline#extensions#tabline#show_buffers            = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type             = 1
let g:airline_theme                                      ='powerlineish'


" ----------------------------
" - jsonc filetype detection -
" ----------------------------
autocmd BufRead,BufNewFile *.mycjson set filetype=jsonc
