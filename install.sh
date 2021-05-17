#!/bin/bash

set -e
set -x

if test -d "/opt/rh/devtoolset-8"; then
    source /opt/rh/devtoolset-8/enable
fi

ln -sf `pwd`/files/tmux.conf ~/.tmux.conf
ln -sf `pwd`/files/bash_profile ~/.bash_profile
ln -sf `pwd`/files/vimrc ~/.vimrc
ln -sf `pwd`/files/vimrc.portable ~/.vimrc.portable
ln -sf `pwd`/files/plugins.vim ~/.plugins.vim

touch ~/.bash_profile_local

mkdir -p ~/Tools/Path
ln -sf `pwd`/bin/dev ~/Tools/Path/dev
ln -sf `pwd`/bin/ide ~/Tools/Path/ide
ln -sf `pwd`/bin/tmux_rename ~/Tools/Path/tmux_rename
ln -sf `pwd`/bin/p_complete ~/Tools/Path/p_complete

if [ ! -d ~/.vim-plug ]; then
    git clone https://github.com/junegunn/vim-plug.git ~/.vim-plug
fi

mkdir -p ~/.vim/autoload
ln -sf ~/.vim-plug/plug.vim ~/.vim/autoload/plug.vim

vim -u `pwd`/files/plugins.vim +PlugInstall +qall > /dev/null

if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins ~/.tmux/plugins/tpm/bin/install_plugins
