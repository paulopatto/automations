#!/usr/bin/env sh
# vim: set ft=sh :

ORIGINAL_PWD_PATH=$PWD
DOT_GIMP_HOME="$HOME/.gimp-2.8"
#BASEDIR=$(dirname "$0")
SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")
# echo "Script: $SCRIPT"

echo "Backup da pasta do Gimp"
echo "\tGoto $DOT_GIMP_HOME ..."

cd $HOME
tar -czvf "$HOME/Downloads/backup-gimp-2.8.tar.gz" ".gimp-2.8/"

cd $DOT_GIMP_HOME
echo "Done! \n\tDisponível em $HOME/Downloads/backup-gimp-2.8.tar.gz"

cd "$DOT_GIMP_HOME"

echo "Usando git para versionar"
rm -rf .git
git init
git add .
git commit -m 'Original .gimp'

echo "Copiando arquivos de $BASEDIR"
cp -R "$BASEDIR/Gimp-CS6-Theme" "$DOT_GIMP_HOME/themes/gimp-cs6-theme"
git add .
git commit -m 'Intalled gimp cs 6 theme'


cp "$BASEDIR/Settings etc/gimprc" "$DOT_GIMP_HOME/"
cp "$BASEDIR/Settings etc/toolrc" "$DOT_GIMP_HOME/"
git add .
git commit -m 'Installed :toolrc and :gimprc'

cd $ORGINAL_PWD_PATH
echo "done!"
