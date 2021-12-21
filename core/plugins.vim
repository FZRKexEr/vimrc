" 自动安装插件
if empty(glob('~/.vim_runtime/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim_runtime/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source ~/.vimrc
endif

call plug#begin('~/.vim_runtime/plugged')

  " 开箱即用的 Lsp 代码补全
  Plug 'jayli/vim-easycomplete'

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

  " 不需要安装 Lsp 的语法检查(非常好的一个插件，但是我怎么也配置不好 completion,
  " 只能专用 easycomplete, easycomplete 也很好，以后再研究一下)
  " Plug 'dense-analysis/ale'

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

" vim-cpp-enhanced-highlight
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" vim-markdown
let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 0

" vim-workspace
let g:workspace_autosave_always = 1

" vimwiki

let g:vimwiki_list = [{
      \ 'path': '~/desktop/wiki/',
      \ 'syntax': 'markdown',
      \ 'ext': '.md'
      \ }]

" color
if empty(glob('~/.vim_runtime/plugged/everforest/README.md'))
else
  colo everforest
endif

" pear-tree
let g:pear_tree_repeatable_expand = 0
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1

" rainbow
let g:rainbow_active = 1
