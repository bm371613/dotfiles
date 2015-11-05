imap ;; <Esc>

set backspace=2
set hidden
set nobackup
set noswapfile

" tabs and indenting
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smartindent
filetype indent on

" basic goodies
syntax on
set number
set laststatus=2
colorscheme desert

" current line
set cursorline
hi CursorLine cterm=NONE

" ruler
set colorcolumn=80
set ruler

" accept common typos
command WQ wq
command Wq wq
command W w
command Q q

" splitting
set splitbelow
set splitright

" toggle paste
set pastetoggle=<F3>

" toggle search highlight
noremap <F4> :set hlsearch! hlsearch?<CR>

