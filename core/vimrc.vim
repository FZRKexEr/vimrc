set nocp
filetype plugin on
set encoding=UTF-8

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" 不喜欢
"set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

set cindent
set clipboard=unnamed

set nu
set signcolumn=yes
set cursorline
set hlsearch
set wrap

set termguicolors
syntax on

" Kitty's true color needs this
let &t_ut=''

set background=dark
colo desert

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"==> Map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

if has("gui_running")
  nnoremap <leader>r :!g++ % -std=c++17 -o %< -Wall -O2 && ./%< && mv %< ~/.Trash<CR>
else
  nnoremap <leader>r :!clear && g++ % -std=c++17 -o %< -Wall -O2 && ./%< && mv %< ~/.Trash<CR>
endif

nnoremap <S-h> :bprev <CR>
nnoremap <S-l> :bnext <CR>
nnoremap <leader>q :bdelet <CR>

if has("gui_running")
  set guifont=SourceCodePro-Regular:h18
endif

