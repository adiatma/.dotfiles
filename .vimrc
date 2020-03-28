" Encoding
set encoding=UTF-8

" Install vim plug if directory ~/.vim/autoload/plug.vim not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Install COC for intellisense engine for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Install vim-airline plugin
Plug 'vim-airline/vim-airline'

" Install vim-airline-theme plugin
Plug 'vim-airline/vim-airline-themes'

" Install gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Install nerdtree
Plug 'preservim/nerdtree'

" Install devicons plugins
Plug 'ryanoasis/vim-devicons'


call plug#end()

" Common configuration
source ~/.vimrc.common

" Theme configuration
source ~/.vimrc.theme

" Nerdtree configuration
source ~/.vimrc.nerdtree

" COC is intelisense for vim enggine
source ~/.vimrc.coc

