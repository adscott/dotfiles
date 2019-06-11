#!/bin/bash

set -e
set -x

ln -sf `pwd`/files/emacs ~/.emacs
ln -sf `pwd`/files/tmux.conf ~/.tmux.conf
ln -sf `pwd`/files/bash_profile ~/.bash_profile
ln -sf `pwd`/files/vimrc ~/.vimrc
ln -sf `pwd`/files/plugins.vim ~/.plugins.vim

mkdir -p ~/Tools/Path
ln -sf `pwd`/bin/dev ~/Tools/Path/dev

if [ ! -d ~/.vim-plug ]; then
    git clone https://github.com/junegunn/vim-plug.git ~/.vim-plug
fi

mkdir -p ~/.vim/autoload
ln -sf ~/.vim-plug/plug.vim ~/.vim/autoload/plug.vim

vim -u `pwd`/files/plugins.vim +PlugInstall +qall

if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
