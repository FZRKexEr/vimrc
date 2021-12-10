# Vimrc

This is the Vim configuration I'm using now. My need for vim is simply to write the code as quickly as possible. So I don't add some configurations which I think are useless.

## How to install

Running the following command in your terminal.

```sh
sh -c "$(wget -O- https://raw.githubusercontent.com/FZRKexEr/vimrc/main/install.sh)"
```

## Key Mappings
```vimscript
nnoremap <space>r :!g++ % -std=c++17 -o %< -Wall -O2 && ./%< && mv %< ~/.Trash<CR>
nnoremap <S-h> :bprev <CR>
nnoremap <S-l> :bnext <CR>
nnoremap <space>q :bdelet <CR>
```







 


