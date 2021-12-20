"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 自动安装插件
if empty(glob('~/.vim_runtime/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim_runtime/autoload/plug.vim --create-dirs https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source ~/.vimrc
endif

source ~/.vim_runtime/core/ale.vim
call plug#begin('~/.vim_runtime/plugged')

  "vim wiki
  Plug 'vimwiki/vimwiki'
  " 括号匹配(注意<CR> 冲突)
  Plug 'tmsvg/pear-tree'
  " Markdown
  Plug 'godlygeek/tabular'
  Plug 'gabrielelana/vim-markdown'
  " 文件搜索
  Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
  " 彩虹括号
  Plug 'luochen1990/rainbow'
  " 支持 tab 的 buffer 栏
  Plug 'zefei/vim-wintabs'
  " 强化终端 Vim 体验, 接近 Gui (Good!)
  Plug 'wincent/terminus'
  "不需要Lsp的 C/C++ 语法高亮
  Plug 'octol/vim-cpp-enhanced-highlight'
  " 自动保存
  Plug 'thaerkh/vim-workspace'
	" 显示缩进线

  Plug 'Yggdroot/indentLine'
  " 不需要Lsp的语法检查
  Plug 'dense-analysis/ale'

  " Colors
  Plug 'arcticicestudio/nord-vim'
  Plug 'ajmwagar/vim-deus'
  Plug 'rakr/vim-one'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'sainnhe/gruvbox-material'
  Plug 'sainnhe/everforest'
  Plug 'sainnhe/sonokai'
  Plug 'sainnhe/edge'

call plug#end()
source ~/.vim_runtime/core/workspace.vim
source ~/.vim_runtime/core/rainbow.vim
source ~/.vim_runtime/core/markdown.vim
source ~/.vim_runtime/core/indentLine.vim
source ~/.vim_runtime/core/vimwiki.vim
source ~/.vim_runtime/core/pear-tree.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Core Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set termguicolors
syntax on

" Kitty's true color needs this
let &t_ut=''

set background=dark

if empty(glob('~/.vim_runtime/plugged/everforest/README.md'))
else
  colo everforest
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Some Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

if has("gui_running")
  nnoremap <leader>r :!g++ % -std=c++17 -o %< -Wall -O2 && ./%< && mv %< ~/.Trash<CR>
else
  nnoremap <leader>r :!clear && g++ % -std=c++17 -o %< -Wall -O2 && ./%< && mv %< ~/.Trash<CR>
endif

nnoremap <S-h> :bprev <CR>
nnoremap <S-l> :bnext <CR>
nnoremap <leader>q :bdelet <CR>

" 括号匹配系列


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MacVim Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running")
  set guifont=FixedsysExcelsiorIIIb:h24
endif

