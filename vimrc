set nocompatible

if has('win32')
    let $USERVIMDIR = '~/vimfiles'
else
    let $USERVIMDIR = '~/.vim'
	let $TEMP = '/tmp/'
endif
call plug#begin($USERVIMDIR . '/plugged')

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

set wildmenu
set wildmode=longest:full,full

set background=dark
colorscheme base16-twilight 

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>a  <Plug>(coc-codeaction-cursor)
