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

The default machine is configured in rootless mode. If your containers
require root permissions (e.g. ports < 1024), or if you run into compatibility
issues with non-podman clients, you can switch using the following command: 

```sh
podman machine set --rootful
```

API forwarding listening on: `$HOME/.local/share/containers/podman/machine/podman-machine-default/podman.sock`

You can still connect Docker API clients by setting DOCKER_HOST using the
following command in your terminal session:

```sh
export DOCKER_HOST='unix:///$HOME/.local/share/containers/podman/machine/podman-machine-default/podman.sock'
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
