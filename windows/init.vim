" 防止重复加载
if get(s:, 'loaded', 0) != 0
  finish
else
  let s:loaded = 1
endif

" 取得本文件所在的目录
let g:init_home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.g:init_home.'/'.'<args>'

LoadScript basic.vim

LoadScript plugins.vim



