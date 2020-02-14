" Encoding
set encoding=utf8

" Install vim plug if directory ~/.vim/autoload/plug.vim not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Install COC for intellisense engine for vim
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Install gruvbox colorscheme
Plug 'morhetz/gruvbox'

call plug#end()

" Turn on syntax highlighting
syntax on

" Turn on relative number
set relativenumber

" Setup gruvbox theme as a colorscheme
colorscheme gruvbox


