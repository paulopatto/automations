
Plugin 'daylerees/colour-schemes', {'rtp': 'vim/'} " Color schem pack see options in http://daylerees.github.io/
Plugin 'ctrlpvim/ctrlp.vim'                        " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'godlygeek/csapprox'                        " Required by 'tpope/vim-fugitive' https://github.com/tpope/vim-fugitive/issues/705
Plugin 'tpope/vim-fugitive'                        " A Git wrapper so awesome
Plugin 'scrooloose/nerdtree'                       " The NERDTree is a file system explorer for the Vim editor.
Plugin 'Xuyuanp/nerdtree-git-plugin'               " A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree.
Plugin 'airblade/vim-gitgutter'                    " A Vim plugin which shows a git diff in the sign column and stages/previews/undoes/hunks.
Plugin 'jg/bufexplorer'                            " Vim bufexplorer plugin
Plugin 'danro/rename.vim'                          " Rename the current file in the vim buffer + retain relative path.
Plugin 'Yggdroot/indentLine'                       " A vim plugin to display the indention levels with thin vertical lines
Plugin 'vim-syntastic/syntastic'                   " Syntax checking hacks for vim
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
" Optional:
Plugin 'honza/vim-snippets'                        " This repository contains snippets files for various programming languages.
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
Plugin 'dracula/vim'
Plugin 'doums/darcula'


" Extras
Plugin 'neomake/neomake'                           " Asynchronous linting and make framework for Neovim/Vim
Plugin 'elixir-editors/vim-elixir'                 " Elixir support for vim
Plugin 'slashmili/alchemist.vim'                   " Elixir Integration. It uses ElixirSense to give inside information about your project.
Plugin 'janko/vim-test'                            " A Vim wrapper for running tests on different granularities.
Plugin 'prettier/vim-prettier'                     " A vim plugin wrapper for https://prettier.io, pre-configured with custom default prettier settings.

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

"" Infra support
Plugin 'hashivim/vim-terraform'                    " Terraform support for vim
Plugin 'juliosueiras/vim-terraform-completion'     " Terraform Completion with Linter
Plugin 'haproxy'                                   " HAProxy sintaxe
Plugin 'Glench/Vim-Jinja2-Syntax'                  " Jinja2 syntax highlighting
