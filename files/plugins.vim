set nocp
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'

Plug 'kana/vim-fakeclip'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
if executable('cmake')
    Plug 'Valloric/YouCompleteMe', { 'do': 'python2 ./install.py' }
endif
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
