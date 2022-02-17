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
set backupdir=~/.cache/vim  " Directory to store backup files.

set expandtab               " converts tabs to white space
set tabstop=2               " number of columns occupied by a tab
set shiftwidth=2            " width for autoindents

filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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
Plug 'tpope/vim-fugitive'                        " A Git wrapper so awesome
Plug 'tpope/vim-surround'                        " by https://vimawesome.com/plugin/surround-vim
Plug 'preservim/nerdcommenter'                   " Comment functions so powerful—no comment necessary.
Plug 'Xuyuanp/nerdtree-git-plugin'               " A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree.
Plug 'kevinoid/vim-jsonc'                        " Vim syntax highlighting plugin for JSON with C-style line (//) and block (/* */) comments.
Plug 'dense-analysis/ale'                        " Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.
                                                 " Install extensions for programming languages you use daily:
                                                 " https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#install-extensions-for-programming-languages-you-use-daily
Plug 'github/copilot.vim'                        " Neovim plugin for GitHub Copilot

" ================================
" *****    Color Schemes     *****
" ================================

Plug 'altercation/vim-colors-solarized'          " Solarized Colorscheme for Vim Description by Awesome-VIM
Plug 'doums/darcula'
Plug 'dracula/vim', { 'as': 'dracula' }          " A dark theme for Vim, Zsh and many more.
Plug 'jpo/vim-railscasts-theme'
Plug 'mhinz/vim-janah'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'                   " A colorful, dark color scheme, inspired by ir_black and twilight
Plug 'preservim/vim-colors-pencil'               " Light (& dark) color scheme inspired by iA Writer
Plug 'rakr/vim-one'
Plug 'severij/vadelma'                           " Super sexy Vim/Neovim color scheme for GUIs and 256-color terminals.
Plug 'sickill/vim-monokai'
Plug 'tomasiser/vim-code-dark'


" ====================================
" *****    Language Supports     *****
" ====================================

" *** JavaScript & Tyescript and React ***
Plug 'mlaursen/vim-react-snippets'               " Useful snippets for developing in React (Javascript and Typescript)

" *** HTML & CSS ***

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
"
" -----------------------------
" - Configs to CoC VIM plugin -
" -----------------------------
"  > source: https://dev.to/lissadev/criando-um-ambiente-de-desenvolvimento-com-vim-neovim-42
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

