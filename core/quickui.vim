" refer: https://github.com/skywind3000/vim-quickui/blob/master/MANUAL.md

" clear all the menus
call quickui#menu#reset()

" install a 'File' menu, use [text, command] to represent an item.
" items containing tips, tips will display in the cmdline
" script inside %{...} will be evaluated and expanded in the string
"call quickui#menu#install("&Option", [
"			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
"			\ ['Set &Cursor Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
"			\ ['Set &Paste %{&paste? "Off":"On"}', 'set paste!'],
"			\ ])

" & 可以按照首字母添加快捷键
call quickui#menu#install('&Colorscheme', [
      \ ["&Nord", "colorscheme nord"], 
      \ ["&One", "colorscheme one"], 
      \ ["&Deus", "colorscheme deus"],
      \ ["&Palenight", "colorscheme palenight"],
      \ ])
" 第四个参数限定只能在 c 或者 cpp 文件可视
call quickui#menu#install('&C/C++', [
            \ [ '&Run', '!(g++ % -o %< -std=c++17 -O2 -Wall && ./%< && mv %< ~/.Trash)' ],
            \ ], '<auto>', 'c,cpp')

" enable to display tips in the cmdline
let g:quickui_show_tip = 1
let g:quickui_color_scheme = 'gruvbox'

" hit space twice to open menu
noremap <space> :call quickui#menu#open()<cr>
