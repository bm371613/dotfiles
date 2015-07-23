" make backspace work
set backspace=2

" the annoying files
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

" tab navigation
nnoremap <silent> <C-J> :tabprevious<CR>
nnoremap <silent> <C-K> :tabnext<CR>

" splitting
set splitbelow
set splitright

nnoremap <silent> <C-H> <C-W><C-H>
nnoremap <silent> <C-L> <C-W><C-L>

