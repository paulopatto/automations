# Android

### Arch AMD 64bits

Para arquitetura de 64 bits precisamos de instalar as libs de _ia32-libs_

```sh
echo "From: https://blog.teststation.org/ubuntu/2016/05/12/installing-32-bit-software-on-ubuntu-16.04/"
sudo dpkg --add-architecture i386
sudo apt-get update -y
sudo apt-get install -y libc6:i386 libstdc++6:i386 lib32z1
```

https://github.com/nickpack/ansible-role-android-sdk

# Configs to Android:"
[ -f $HOME/.androidrc ] && source $HOME/.androidrc
# End configs to Android
