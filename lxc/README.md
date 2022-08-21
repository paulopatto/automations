# Docker

```sh
# TODO: Doc this
mv $DOTFILES_HOME/lxc/default.conf $HOME/.config/lxc/default.config
```


## Using Podman

### Mac OS/X

#### [PLAYBOOK] Install Podman on macos

> Source: [How to Install Podman on macOS](https://phoenixnap.com/kb/podman-macos)

- 1. Update Homebrew: `brew update`
- 2. Install podman: `brew install podman`
- 3. Download podman machine: `podman machine init`
- 4. Start podman machine: `podman machine start`
- 5. [Create symlink to user docker command](https://gist.github.com/kaaquist/dab64aeb52a815b935b11c86202761a3): `ln -s /usr/local/bin/podman /usr/local/bin/docker`
