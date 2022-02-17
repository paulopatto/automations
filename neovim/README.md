NeoVim
=========

Configuração do edito de texto (e talvez IDE) NeoVIM

Features
--------

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

## Running

`ansible-playbook --connection=local --inventory 127.0.0.1, neovim-playbook.yaml -K`

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
