#!/bin/bash
mkdir ~/.vim/bundle
mkdir ~/.vim/help

git clone git@github.com:vim-jp/vimdoc-ja.git ~/.vim/help

cd

ln -s ~/.vim/.vimrc

curl -flo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
