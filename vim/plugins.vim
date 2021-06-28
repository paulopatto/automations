" ================================
" Awesome vim pack
" from: https://vimawesome.com/
" ================================
Plugin 'tpope/vim-fugitive'                        " A Git wrapper so awesome
Plugin 'tpope/vim-surround'                        " by https://vimawesome.com/plugin/surround-vim
Plugin 'scrooloose/nerdtree'                       " The NERDTree is a file system explorer for the Vim editor.
Plugin 'ctrlpvim/ctrlp.vim'                        " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'Xuyuanp/nerdtree-git-plugin'               " A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree.
Plugin 'vim-syntastic/syntastic'                   " Syntax checking hacks for vim
Plugin 'airblade/vim-gitgutter'                    " A Vim plugin which shows a git diff in the sign column and stages/previews/undoes/hunks.
Plugin 'vim-airline/vim-airline'                   " Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline-themes'            " This is the official theme repository for vim-airline
Plugin 'preservim/nerdcommenter'                   " Comment functions so powerful—no comment necessary.
Plugin 'majutsushi/tagbar'                         " Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file
                                                   " and get an overview of its structure. READ: https://vimawesome.com/plugin/tagbar
Plugin 'valloric/youcompleteme'                    " A CODE-COMPLETION ENGINE FOR VIM.
                                                   " READ MORE https://github.com/ycm-core/YouCompleteMe#linux-64-bit
Plugin 'w0rp/ale'                                  " ALE (Asynchronous Lint Engine) is a plugin providing linting
                                                   " (syntax checking and semantic errors) in NeoVim 0.2.0+ and Vim 8
                                                   " while you edit your text files, and acts as a Vim Language Server Protocol client.

" ================================
" Extra plugins
" ================================
Plugin 'daylerees/colour-schemes', {'rtp': 'vim/'} " Color schem pack see options in http://daylerees.github.io/
Plugin 'godlygeek/csapprox'                        " Required by 'tpope/vim-fugitive' https://github.com/tpope/vim-fugitive/issues/705
Plugin 'jg/bufexplorer'                            " Vim bufexplorer plugin
Plugin 'danro/rename.vim'                          " Rename the current file in the vim buffer + retain relative path.
Plugin 'Yggdroot/indentLine'                       " A vim plugin to display the indention levels with thin vertical lines
Plugin 'vim-scripts/Gundo'                         " Vim plugin to visualize your Vim undo tree.
Plugin 'ryanoasis/vim-devicons'                    " Adds file type icons to Vim plugins such as: NERDTree
Plugin 'mileszs/ack.vim'                           " Vim plugin for the Perl module / CLI script 'ack'. More info: github.com/mileszs/ack.vim#possibly-faq
Plugin 'terryma/vim-multiple-cursors'              " True Sublime Text style multiple selections for Vim

" ================================
" Snippets Packs
" ================================
Plugin 'MarcWeber/vim-addon-mw-utils'              " vim: interpret a file by function and cache file automatically
Plugin 'scrooloose/snipmate-snippets'              " A collection of snippets for snipmate
Plugin 'tomtom/tlib_vim'                           " Some utility functions for VIM This library provides some utility functions.
Plugin 'garbas/vim-snipmate'                       " Provide support 4 textual snippets, similar to TextMate
Plugin 'honza/vim-snippets'                        " This repository contains snippets files for various programming languages.
Plugin 'mattn/emmet-vim'                           " emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet. By Awesome VIM
" === END SNIPPETS ===

" ================================
" *****    Color Schemes     *****
" ================================
Plugin 'tomasiser/vim-code-dark'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'rakr/vim-one'
Plugin 'sickill/vim-monokai'
Plugin 'mhinz/vim-janah'
Plugin 'morhetz/gruvbox'
Plugin 'dracula/dracula-theme'                    " A dark theme for Vim, Zsh and many more.
Plugin 'doums/darcula'
Plugin 'altercation/vim-colors-solarized'         " Solarized Colorscheme for Vim Description by Awesome-VIM
Plugin 'nanotech/jellybeans.vim'                  " A colorful, dark color scheme, inspired by ir_black and twilight.
Plugin 'severij/vadelma'                          " Super sexy Vim/Neovim color scheme for GUIs and 256-color terminals.


" Extras
Plugin 'neomake/neomake'                           " Asynchronous linting and make framework for Neovim/Vim
Plugin 'sheerun/vim-polyglot'                      " A collection of language packs for Vim.
Plugin 'prettier/vim-prettier'                     " A vim plugin wrapper for https://prettier.io, pre-configured with custom default prettier settings.
"Plugin 'elixir-editors/vim-elixir'                 " Elixir support for vim
Plugin 'slashmili/alchemist.vim'                   " Elixir Integration. It uses ElixirSense to give inside information about your project.
Plugin 'janko/vim-test'                            " A Vim wrapper for running tests on different granularities.
Plugin 'fatih/vim-go'                              " This plugin adds Go language support for Vim
Plugin 'godlygeek/tabular'                         " See Aligning Text with Tabular.vim http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plugin 'plasticboy/vim-markdown'                   " Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
Plugin 'Glench/Vim-Jinja2-Syntax'                  " Jinja2 syntax highlighting

" Pack to convert vim in VSCode
" SEE https://github.com/iamcco/coc-flutter
Plugin 'neoclide/coc.nvim'                         " Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode
Plugin 'natebosch/vim-lsc'                         " Adds language-aware tooling to vim by communicating with a language server following
                                                   " the [language server protocol](https://github.com/Microsoft/language-server-protocol).
                                                   " For more information see langserver.org.
" Maybe in future use
" - https://github.com/Shougo/defx.nvim
" - https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" - https://github.com/airblade/vim-gitgutter
" - https://github.com/preservim/nerdcommenter
" - https://github.com/christoomey/vim-tmux-navigator
" - https://github.com/neoclide/coc.nvim (avaliar com calma)
" - https://github.com/python-mode/python-mode (avaliar se vale a pena as chatices

"" Flutter support
Plugin 'dart-lang/dart-vim-plugin'                 " Support dart filetype, syntax highlight, and indention
Plugin 'thosakwe/vim-flutter'                      " Vim comds for Flutter, including hot-reload-on-save & more.
Plugin 'natebosch/vim-lsc-dart'                    " vim-lsc server configuration for the Dart language
Plugin 'hankchiutw/flutter-reload.vim'               " Reload flutter when saving a dart file

"" Infra support
Plugin 'hashivim/vim-terraform'                    " Terraform support for vim
Plugin 'juliosueiras/vim-terraform-completion'     " Terraform Completion with Linter
Plugin 'haproxy'                                   " HAProxy sintaxe
