if empty(glob('~/.vim_runtime/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim_runtime/autoload/plug.vim --create-dirs https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC 
endif


call plug#begin('~/.vim_runtime/plugged')

  " bufferline
  Plug 'ap/vim-buftabline'

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Core Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocp

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set cindent
set clipboard=unnamed

set nu
set signcolumn=yes
set cursorline
set hlsearch


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

nnoremap <space>r :!g++ % -std=c++17 -o %< -Wall -O2 && ./%< && mv %< ~/.Trash<CR>
nnoremap <S-h> :bprev <CR>
nnoremap <S-l> :bnext <CR>
nnoremap <space>q :bdelet <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MacVim Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set guifont=FixedsysExcelsiorIIIb:h24

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

