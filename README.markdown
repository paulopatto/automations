# Paulo Patto dotfiles

Meus arquivos de configurações para ambiente de desenvolvimento \*nix.


## Configurações de

- TMUX
- GIT
- VIM
- VMs (Docker, Vagrant)
- Tecnologias (Ruby, Python, NodeJS, Go-lang)



## Powerline

O projeto [powerline](https://github.com/Lokaltog/powerline) é o plugin de linha de status para o editor VIM e o Terminal TMUX. Está adicionado como submodulo e é contido nas pastas `powerline` e  `powerline-fonts`. No momento que escrevo este documento a configuração do mesmo está contida neste link [https://powerline.readthedocs.org/en/latest/](https://powerline.readthedocs.org/en/latest/) porém é sempre bom acessar o repositório no [github](https://github.com/Lokaltog/powerline).

### Instalação

> **Melhorar** pois deve usar um script instalador para Mac e Linux e não necessitar da intervenção.
> - [Linux](https://powerline.readthedocs.org/en/latest/installation/linux.html#installation-linux)
> - [Mac](https://powerline.readthedocs.org/en/latest/installation/osx.html#installation-osx)

Após executar o setup inicial de módulos com `git submodule update --init` deve ser criadas as pastas `powerline` e `powerline-fonts` nas raiz do projeto ai você deve configurar de acordo com o seu sistema operacional.

Dentro da pasta powerline você pode executar `sudo python setup.py install`

> O projeto Powerline pode ser instalado via gerenciado de pacotes Python PIP com o comando `pip install --user git+git://github.com/Lokaltog/powerline`

#### Linux

1. Mova/Copie o arquivo de font `powerline/font/PowerlineSymbols.otf` para `~/.fonts` (*Não sei se caso eu criar um link simbólico já resolve*)
2. Mova/Copie o arquivo de configuração de fonte do Powerline `powerline/font/10-powerline-symbols.conf` para `~/.fonts.conf.d/` ou `~/.config/fontconfig/conf.d/`, dependendo da sua versão do fontconfig
3. Execute o [Fontconfig](http://en.wikipedia.org/wiki/Fontconfig) para criação do cache com o comando `fc-cache -vf ~/.fonts`. Para mais informações sobre o comando `fc-cache` consulte o manual do fontconfig.
4. Talvez seja necessário reiniciar o X-Server no caso do Ubuntu em versões mais novas o comando é `sudo service lightdm restart`

#### Mac OS/X

1. Instale as fonts da pasta `powerline-fonts` com um duplo click sobre as mesmas, siga as instruções de instalação do seu sistema.
