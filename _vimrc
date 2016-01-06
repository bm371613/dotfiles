" source vimrc on write
autocmd! bufwritepost .vimrc source %

" basics
set shell=/bin/sh
source ~/.vimrc_vundle

filetype plugin on
syntax on

let mapleader=","
inoremap jj <ESC>

set backspace=2
set hidden
set nobackup
set noswapfile
set number
set laststatus=2
colorscheme desert

" tabs and indenting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smartindent
filetype indent on

" current line
set cursorline
hi CursorLine cterm=NONE

" ruler
set colorcolumn=80
set ruler

" splitting
set splitbelow
set splitright

" toggle paste
set pastetoggle=<F3>

" toggle search highlight
noremap <F4> :set hlsearch! hlsearch?<CR>

" nerdtree
map <F2> :NERDTreeToggle<CR>

" find file with CtrlP.Vim
nnoremap <silent> <leader>f :CtrlPCurWD<CR>

