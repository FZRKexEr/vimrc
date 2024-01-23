"  基础设置

set nu ru et cin wrap hls hid scl=yes ignorecase
set ts=4 sts=4 sw=4 cb=unnamed acd enc=UTF-8 ffs=unix,dos,mac
set noeb novb tm=500 t_vb=
set guioptions-=T
set guioptions-=r
autocmd GUIEnter * set vb t_vb=


let $LANG='en'
syntax on
filetype plugin indent on


" buffer and windows
nnoremap <S-l> :call MoveBuffer(1)<CR>
nnoremap <S-h> :call MoveBuffer(0)<CR>
nnoremap <space>q :call CloseBuffer()<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

function! MoveBuffer(arg)
  if a:arg == 1
    bnext
    if &buftype ==# 'quickfix'
      bnext
    endif
  elseif a:arg == 0
    bprevious
    if &buftype ==# 'quickfix'
      bprevious
    endif
  endif
endfunction

function! CloseBuffer()
  let buffer_count = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
  let has_quickfix = 0

  for i in filter(range(1, bufnr('$')), 'buflisted(v:val)') " 判断 buffer 中有没有 quickfix
    if getbufvar(i, '&buftype') ==# 'quickfix'
      let has_quickfix = 1
    endif
  endfor

  if buffer_count == 1 || (buffer_count == 2 && has_quickfix == 1)
    qall
  endif
  bdelete

  if &buftype ==# 'quickfix'
    bnext
  endif
endfunction
