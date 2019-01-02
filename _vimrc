" source vimrc on write
autocmd! bufwritepost .vimrc source %

" basics
set shell=/bin/sh
source ~/.vimrc_vundle

filetype plugin on
syntax on
colorscheme molokai

let mapleader=" "
inoremap jj <ESC>

set backspace=2
set hidden
set laststatus=2
set linebreak
set nobackup
set noswapfile
set relativenumber
set number

" pasting
set clipboard=unnamed
set clipboard=unnamedplus
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

" tabs and indenting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smartindent
filetype indent on

" cursorline and ruler
set colorcolumn=80
set cursorline
set ruler

" splitting
set splitbelow
set splitright

" keep selection when changing indentation
vnoremap < <gv
vnoremap > >gv

" toggle paste
set pastetoggle=<F3>

" toggle search highlight
noremap <F4> :set hlsearch! hlsearch?<CR>

" nerdtree
map <F2> :NERDTreeToggle<CR>

" find file with CtrlP.Vim
nnoremap <silent> <leader>f :CtrlPCurWD<CR>
" find tag with CtrlP.Vim
nnoremap <silent> <leader>t :CtrlPTag<CR>

" makes git status for lines update faster
set updatetime=100
