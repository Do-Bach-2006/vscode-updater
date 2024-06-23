#! /usr/bin/bash

cd ~

rm -rf "./vscode"

mkdir "vscode"

cd "./vscode"

# download the vscode x64 build
curl -L -o 'code.tar.gz' 'https://code.visualstudio.com/sha/download?build=stable&os=linux-x64'

tar fxv "code.tar.gz"

cd /usr/bin

sudo rm code

sudo ln -s ~/vscode/VSCode-linux-x64/bin/code code

# TODO: add this file into a part of the setup script and make this a bin file