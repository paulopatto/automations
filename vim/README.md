# VIM (em processo de melhoria)

O vim (VI Impoved) é uma melhoria do editor de textos VI e está presente em todos os sistemas GNU/Linux modernos de inicio deve ser complicado de usar mas com o tempo você não vai querer largar.

1. Instale o VIM via gerenciador de pacotes como `sudo apt-get install -y vim` no Ubuntu ou `brew install vim` no Mac OS/X.





### CTAGS tip

> Refs.:
> * http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks

- `Ctrl+]` - go to definition
- `Ctrl+T` - Jump back from the definition.
- `Ctrl+W`|`Ctrl+]` - Open the definition in a horizontal split

Configs to add in `.vimrc`

```vim
" With this config enable
" - Ctrl+\ - Open the definition in a new tab
" - Alt+] - Open the definition in a vertical split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
```

- `Ctrl+\ ` - Open the definition in a new tab
- `Alt+]  ` - Open the definition in a vertical split


Add tags to `.gitignore`

# Cheatsheet



## Vim (CTRL - W)

![VIM Cheatsheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)

| Description   | Command       |
| ------------- |:-------------:|
| Close tab     |     `c`       |
| New Vertical tab |  `v`  |
| New Horizontal tab |  `s`  |
| Reload file   |      `:e!`         |
| Find in file   |     `/regexp`         |
| Copy inner word   | `yiw`         |
| Cut inner word   | `ciw`         |
| Copy line   | `yy`     |
| Select text until `<char>` and delete it |`vf<char>ld`|


## Multiple cursor

- [README](https://github.com/terryma/vim-multiple-cursors/blob/master/README.md)

## Features

- [ ] Gerenciador de plugins [vim-plug](https://github.com/junegunn/vim-plug)
- [ ] Sintaxe Highlight [Polyglot](https://github.com/sheerun/vim-polyglot)
- [ ] Barra de navegação com [NERDTree](https://github.com/preservim/nerdtree)
- [ ] Barra inferios com vim-airline
- [ ] Aucomplete com [CoC.vim](https://github.com/neoclide/coc.nvim)
- [ ] Analisador de códigos com [ALE](https://github.com/dense-analysis/ale)
- [ ] [Coloresque](https://github.com/gko/vim-coloresque) para destaque de cores em arquivos CSS
- [ ] Icones pelo [vim devicons](https://github.com/ryanoasis/vim-devicons)
- [ ] Destaque de identação pelo [vim IndentGuides](https://dev.tothaerkh/vim-indentguides)
- [ ] [Lexima.vim](https://github.com/cohama/lexima.vim) para fechar aspas e parenteses
- [ ] https://github.com/jbyuki/instant.nvim

Ref.: https://dev.to/edersonferreira/criando-um-ambiente-de-desenvolvimento-com-vim-neovim-42
https://vimawesome.com/
https://github.com/rockerBOO/awesome-neovim
