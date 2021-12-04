""""""""""""""""""""""""""""""""""""""""""""""""
" 插件
call plug#begin('~/.vim_runtime/plugged')

	" One 主题
	Plug 'rakr/vim-one' 

	" 显示缩进线 
	Plug 'Yggdroot/indentLine'

  " 不需要Lsp的语法检查 
  Plug 'dense-analysis/ale'

  " 经典 Nord 
  Plug 'arcticicestudio/nord-vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""
" Editing experience(The soul of the vimrc.)
set nocp

" tab 四件套
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set cindent
set clipboard=unnamed

set nu
set signcolumn=yes
set cursorline

""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Colors(Good color matching makes people like coding more.) " True color must be loaded before the theme!)
set termguicolors
syntax on

" Kitty's true color needs this 
let &t_ut='' 

" The color of the cursor is not controlled by terminal vim and needs to be configured in the terminal.

set background=dark" or light if you prefer the light version

"colo nord
colo one

""""""""""""""""""""""""""""""""""""""""""""""""
" Some maps(Make the experience of coding better.)

" leader is space
let mapleader="\<space>"

" space + r: run cpp
nnoremap <leader>r :call Run()<CR>

function! Run()
  silent execute "w"
  silent execute "!g++ % -std=c++17 -o %< -Wall -O2" 
  execute "!time ./%<"
  silent execute "!mv %< ~/.trash"
endfunction

