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
Plug 'vim-airline/vim-airline'                   " status/tabline
Plug 'vim-airline/vim-airline-themes'            " themes to status/tabline

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
