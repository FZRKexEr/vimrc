" refer: https://github.com/skywind3000/vim-quickui/blob/master/MANUAL.md

" clear all the menus
call quickui#menu#reset()

call quickui#menu#install('&C/C++', [
      \ [ '&Run', '!(g++ % -o %< -std=c++17 -O2 -Wall && ./%< && mv %< ~/.Trash)' ],
      \ ], '<auto>', 'c,cpp')

call quickui#menu#install('Con&test', [
      \ [ '&Test', '!cf test' ],
      \ [ '&Submit', '!cf submit' ],
      \ ], '<auto>', 'c,cpp')

call quickui#menu#install('Color&scheme', [
      \ ["&Nord", "colorscheme nord"], 
      \ ["&One", "colorscheme one"], 
      \ ["&Deus", "colorscheme deus"],
      \ ["&Palenight", "colorscheme palenight"],
      \ ["&Edge", 'colorscheme edge'],
      \ ['Ever&forest', 'colorscheme everforest'],
      \ ['&Sonokai', 'colorscheme sonokai'],
      \ ['&Gruvbox material', 'colorscheme gruvbox-material'],
      \ ])

" enable to display tips in the cmdline
let g:quickui_show_tip = 1
let g:quickui_color_scheme = 'gruvbox'

noremap m :call quickui#menu#open()<cr>

let g:quickui_color_scheme = 'solarized'
noremap <space><space> :call quickui#tools#list_buffer('e') <cr>


