" 自动安装插件
if empty(glob('~/.vim_runtime/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim_runtime/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source ~/.vimrc
endif

call plug#begin('~/.vim_runtime/plugged')

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
  " Plug 'zefei/vim-wintabs'

  " 强化终端 Vim 体验, 接近 Gui (Good!)
  Plug 'wincent/terminus'

  "不需要Lsp的 C/C++ 语法高亮
  Plug 'octol/vim-cpp-enhanced-highlight'

  " 自动保存
  Plug 'thaerkh/vim-workspace'

  " Lsp
  Plug 'dense-analysis/ale'

  " Vim 中文文档
  Plug 'yianwillis/vimcdoc'

  " Colors
  Plug 'sainnhe/everforest'
call plug#end()

" ale
let g:ale_linters = {'cpp': ['cc', 'cppcheck']}
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_cpp_cc_executable = 'gcc-11' 
let g:ale_cpp_cc_options = '-Wall -O2 -std=c++17'
let g:ale_cpp_cppcheck_options = '-Wall -O2 -std=c++17'


" vim-cpp-enhanced-highlight
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" vim-markdown
let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 0

" vim-workspace
let g:workspace_autosave_always = 1

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

