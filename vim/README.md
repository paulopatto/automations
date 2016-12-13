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
