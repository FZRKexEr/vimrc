#!/bin/sh
set -e

cd ~/.vim_runtime/plugged

echo '
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/init.vim
' > ~/.vimrc

git clone --depth=1 https://github.com/rakr/vim-one 
git clone --depth=1 https://github.com/Yggdroot/indentLine 
git clone --depth=1 https://github.com/dense-analysis/ale 
git clone --depth=1 https://github.com/arcticicestudio/nord-vim 

#vim -c PlugInstall

