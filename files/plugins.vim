set nocp
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')

Plug 'kana/vim-fakeclip'
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
if executable('cmake')
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
endif
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/goyo.vim'

call plug#end()
