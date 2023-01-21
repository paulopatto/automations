# Docker


### Mac OS/X

> GUIDE: https://podman.io/getting-started/installation

#### Install Podman

Install command to install Podman:

```sh
brew install podman
```

> To restart podman after an upgrade:
>   `brew services restart podman`
> Or, if you don't want/need a background service you can just run:
>   `/usr/local/opt/podman/bin/podman system service --time=0`

create and start your first Podman machine:

```sh
podman machine init
podman machine start
```

### Linux (fedora base)

> Podman v4 will not be shipped officially on Fedora 35. 
> However, you can still fetch Podman v4 through our COPR repo.

```
sudo dnf -y copr enable rhcontainerbot/podman4
```


Install command to install Podman:

```sh
sudo dnf -y install podman
```



----- 

### Docker

```sh
# TODO: Doc this
mv $DOTFILES_HOME/lxc/default.conf $HOME/.config/lxc/default.config
```
