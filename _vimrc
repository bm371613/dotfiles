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

set nocompatible
set backspace=indent,eol,start
set hidden
set laststatus=2
set linebreak
set nobackup
set noswapfile
set relativenumber
set number

" Quit window on <leader>q, save on <leader>w
nnoremap <leader>q :q<CR>
nnoremap <leader>s :w<CR>

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
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>W <C-w>s

" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" keep selection when changing indentation
vnoremap < <gv
vnoremap > >gv

" toggle paste
set pastetoggle=<F3>

" search
set hlsearch
set incsearch
nnoremap <leader>/ :nohlsearch<CR>

" nerdtree
map <F2> :NERDTreeToggle<CR>

" CtrlP.Vim
nnoremap <silent> <leader>f :CtrlPCurWD<CR>
nnoremap <silent> <leader>t :CtrlPTag<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

" makes git status for lines update faster
set updatetime=100

" disable markdown folding
let g:vim_markdown_folding_disabled = 1
