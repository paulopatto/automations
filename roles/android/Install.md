# Android Command Line 

> https://developer.android.com/studio/command-line/
> https://developer.android.com/studio/#downloads

## System requirements - Linux


* GNU C Library (glibc) 2.19 or later
* 3 GB RAM minimum, 8 GB RAM recommended; plus 1 GB for the Android Emulator
* 2 GB of available disk space minimum,
* 4 GB Recommended (500 MB for IDE + 1.5 GB for Android SDK and emulator system image)
* 1280 x 800 minimum screen resolution

## Instalação do Java

Instalação do plugins do asdf-vm com `asdf plugin-add java` e depois `asdf install java 8.131 && asdf global java 8.131`

Fiz o download do sdk [26.1.1](https://developer.android.com/studio/releases/sdk-tools) (SHA-256 Checksum 92ffee5a1d98d856634e8b71132e8a95d96c83a63fde1099be3d86df3106def9)

E descompactei o pacote em /opt:

```sh
cd $HOME/Downloads
unzip sdk-tools-linux-4333796.zip
mkdir $HOME/Downloads/AndroidSDK/
mv $HOME/Downloads/tools $HOME/Downloads/AndroidSDK/tools/

sudo mv $HOME/Downloads/AndroidSDK/ /opt/AndroidSDK
```

Depois adicionei a pasta bin do Android ao PATH, recomendo colocar no $HOME/.zshrc.



