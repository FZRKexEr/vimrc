" auto install plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
  Plug 'skywind3000/vim-auto-popmenu'
  Plug 'skywind3000/vim-dict'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'skywind3000/asynctasks.vim'
  Plug 'thaerkh/vim-workspace'
  Plug 'sainnhe/sonokai'
  Plug 'ap/vim-buftabline'
  Plug 'bfrg/vim-cpp-modern', { 'for' : 'cpp' }
  Plug 'yianwillis/vimcdoc'
call plug#end()

" auto popmenu
let g:apc_enable_ft = {'markdown':1, 'cpp':1, 'python':1, 'vim':1}
set complete=.,k,w,b
set completeopt=menu,menuone,noselect
set shortmess+=c

" auto save
let g:workspace_autosave_always = 1

" colorscheme
let g:sonokai_style = 'maia'
let g:sonokai_better_performance = 1
colorscheme sonokai

"  asyncrun
let g:asyncrun_open = 6

" asynctasks
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f6> :AsyncTask project-run<cr>
noremap <silent><f7> :AsyncTask project-build<cr>
noremap <silent><f8> :AsyncTask project-init<cr>
noremap <silent><f9> :AsyncTask file-build<cr>
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_confirm = 0
let g:asynctasks_extra_config = [
    \ g:init_home.'/tasks.ini',
    \ ]
