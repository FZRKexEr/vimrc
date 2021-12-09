 """""""""""""""""""""""""""""""""""""""""""""""
" 插件
call plug#begin('~/.vim_runtime/plugged')
  " c/cpp 语法高亮
  Plug 'octol/vim-cpp-enhanced-highlight'

  " skywind 大佬的菜单插件/ buffer 跳转
  Plug 'skywind3000/vim-quickui'

  " 自动保存
  Plug 'thaerkh/vim-workspace'

	" 显示缩进线 
	Plug 'Yggdroot/indentLine'

  " 不需要Lsp的语法检查 
  Plug 'dense-analysis/ale'

  " 下面是 Vim Colors
 
  " 经典 Nord 
  Plug 'arcticicestudio/nord-vim'

  " Deus
  Plug 'ajmwagar/vim-deus'

  " One  
	Plug 'rakr/vim-one' 

  " Palenight
  Plug 'drewtempelmeyer/palenight.vim'
  
  " sainnhe 的护眼插件系列 支持 Tree-sitter
  Plug 'sainnhe/gruvbox-material'
  Plug 'sainnhe/everforest'
  Plug 'sainnhe/sonokai'
  Plug 'sainnhe/edge'

call plug#end()

source ~/.vim_runtime/core/quickui.vim
source ~/.vim_runtime/core/workspace.vim

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

set background=dark


"colo nord
"colo one
colo deus
"colo palenight

""""""""""""""""""""""""""""""""""""""""""""""""
" Some maps(Make the experience of coding better.)

nnoremap <space>r :!g++ % -std=c++17 -o %< -Wall -O2 && ./%< && mv %< ~/.Trash<CR>

""""""""""""""""""""""""""""""""""""""""""""""""
" MacVim 配置

set guifont=FixedsysExcelsiorIIIb:h24

