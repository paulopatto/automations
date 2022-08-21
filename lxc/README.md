# Docker

```sh
# TODO: Doc this
mv $DOTFILES_HOME/lxc/default.conf $HOME/.config/lxc/default.config
```


## Using Podman

### Mac OS/X

#### [PLAYBOOK] Install Podman on macos

> Source: [How to Install Podman on macOS](https://phoenixnap.com/kb/podman-macos)

1. Update Homebrew: `brew update`
2. Install podman: `brew install podman`
3. Download podman machine: `podman machine init`
4. Start podman machine: `podman machine start`
5. [Create symlink to user docker command](https://gist.github.com/kaaquist/dab64aeb52a815b935b11c86202761a3): `ln -s /usr/local/bin/podman /usr/local/bin/docker`

> The machine is configured in rootless mode. If your containers require root permissions (e.g. ports less than 1024), 
> or if you run into compatibility issues with non-podman clients, you can switch using the following command: 
> 
> `podman machine set --rootful`
> 
> API forwarding listening on: `$HOME/.local/share/containers/podman/machine/podman-machine-default/podman.sock`
> 
> The system helper service is not installed; the default Docker API socket
> address can't be used by podman. If you would like to install it run the
> following commands:
> 
>   ```
>   sudo /usr/local/Cellar/podman/4.2.0/bin/podman-mac-helper install
>   podman machine stop; podman machine start
>   ```
> 
> You can still connect Docker API clients by setting `DOCKER_HOST` using the
> following command in your terminal session:
> 
>   `export DOCKER_HOST='unix://$HOME/.local/share/containers/podman/machine/podman-machine-default/podman.sock'`
> 
