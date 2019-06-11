set nocp
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'kana/vim-fakeclip'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
if executable('cmake')
    Plugin 'Valloric/YouCompleteMe', { 'do': 'python2 ./install.py' }
endif
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required'