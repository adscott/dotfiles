#!/bin/bash

set -e
set -x

ln -sf `pwd`/files/emacs ~/.emacs
ln -sf `pwd`/files/tmux.conf ~/.tmux.conf
ln -sf `pwd`/files/bash_profile ~/.bash_profile
ln -sf `pwd`/files/vimrc ~/.vimrc

mkdir -p ~/Tools/Path
ln -sf `pwd`/bin/dev ~/Tools/Path/dev

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
