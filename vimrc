set nocompatible

call plug#begin('~/vimfiles/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

set exrc
set secure

set directory=$TEMP
set backupdir=$TEMP
set undodir=$TEMP

syntax on

set mouse=a
set number
set ruler

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set background=light
colorscheme PaperColor

