" refer: https://github.com/skywind3000/vim-quickui/blob/master/MANUAL.md

" clear all the menus
call quickui#menu#reset()

call quickui#menu#install('C/C++', [
            \ [ '&Run', '!(g++ % -o %< -std=c++17 -O2 -Wall && ./%< && mv %< ~/.Trash)' ],
            \ ], '<auto>', 'c,cpp')

call quickui#menu#install('Colorscheme', [
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

" hit space twice to open menu
noremap <space> :call quickui#menu#open()<cr>

