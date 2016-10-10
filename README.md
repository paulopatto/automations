# Dotfiles



## Powerline

O projeto [powerline](https://github.com/Lokaltog/powerline) é o plugin de linha de status para o editor VIM e o Multiplexador de terminal TMUX que uso.
No momento que escrevo este documento a configuração do mesmo está contida neste link [https://powerline.readthedocs.org/en/latest/](https://powerline.readthedocs.org/en/latest/) porém é sempre bom acessar o repositório no [github](https://github.com/Lokaltog/powerline).

### Instalação

> **Melhorar** pois deve usar um script instalador para Mac e Linux e não necessitar da intervenção.
> - [Linux](https://powerline.readthedocs.org/en/latest/installation/linux.html#installation-linux)
> - [Mac](https://powerline.readthedocs.org/en/latest/installation/osx.html#installation-osx)

Após executar o setup inicial de módulos com `git submodule update --init` deve ser criadas as pastas `powerline` e `powerline-fonts` nas raiz do projeto ai você deve configurar de acordo com o seu sistema operacional.

Dentro da pasta powerline você pode executar `sudo python setup.py install`

> O projeto Powerline pode ser instalado via Python PIP com o comando `pip install --user git+git://github.com/Lokaltog/powerline`

#### Linux

1. Mova/Copie o arquivo de font `powerline/font/PowerlineSymbols.otf` para `~/.fonts` (*Não sei se caso eu criar um link simbólico já resolve*)
2. Mova/Copie o arquivo de configuração de fonte do Powerline `powerline/font/10-powerline-symbols.conf` para `~/.fonts.conf.d/` ou `~/.config/fontconfig/conf.d/`, dependendo da sua versão do fontconfig
3. Execute o [Fontconfig](http://en.wikipedia.org/wiki/Fontconfig) para criação do cache com o comando `fc-cache -vf ~/.fonts`. Para mais informações sobre o comando `fc-cache` consulte o manual do fontconfig, se não tiver o fontconfig instalado use a linha `sudo apt-get install -y fontconfig` no Ubuntu.
4. Talvez seja necessário reiniciar o X-Server no caso do Ubuntu em versões mais novas o comando é `sudo service lightdm restart`

#### Mac OS/X

1. Instale as fonts da pasta `powerline-fonts` com um duplo click sobre as mesmas, siga as instruções de instalação do seu sistema.

## TMUX (em processo de melhoria)
O tmux é uma evolução do screen e é um multiplexador de terminal.

1. Instale o tmux, se estiver usando ubuntu use `sudo apt-get install -y tmux` ou via homebrew `brew install tmux`

## VIM (em processo de melhoria)
O vim (VI Impoved) é uma melhoria do editor de textos VI e está presente em todos os sistemas GNU/Linux modernos de inicio deve ser complicado de usar mas com o tempo você não vai querer largar.

1. Instale o VIM via gerenciador de pacotes como `sudo apt-get install -y vim` no Ubuntu ou `brew install vim` no Mac OS/X.
