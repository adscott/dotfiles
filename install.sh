#!/bin/bash

set -e
set -x

ln -sf `pwd`/files/emacs ~/.emacs
ln -sf `pwd`/files/tmux.conf ~/.tmux.conf
ln -sf `pwd`/files/bash_profile ~/.bash_profile

mkdir -p ~/Tools/Path
ln -sf `pwd`/bin/dev ~/Tools/Path/dev
