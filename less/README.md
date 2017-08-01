# Less

Deve ser movido para algo como commons ou shell.


Necessita do [Pygments](http://pygments.org/), que pode ser instalado com o comando:

`pip install --user Pygments` ou `sudo pip install Pygments`

Exemplo de chamada standalone:

`less -N $HOME/.Xresources.d/xterm | pygmentize -f 256 -l sh`
