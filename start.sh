#!/bin/bash
mkdir ~/.vim/bundle
mkdir ~/.vim/help
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone git@github.com:vim-jp/vimdoc-ja.git ~/.vim/help

ln -s .vimrc ~
ln -s .init.vim ~/.config/nvim/

curl -flo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


