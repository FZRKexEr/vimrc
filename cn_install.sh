#!/bin/sh
set -e

pos=$(pwd)

git clone --depth=1 https://github.com.cnpmjs.org/fzrkexer/vimrc ~/.vim_runtime

cd ~/.vim_runtime/plugged

echo '
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/init.vim
' > ~/.vimrc

git clone --depth=1 https://github.com.cnpmjs.org/rakr/vim-one 
git clone --depth=1 https://github.com.cnpmjs.org/Yggdroot/indentLine 
git clone --depth=1 https://github.com.cnpmjs.org/dense-analysis/ale 
git clone --depth=1 https://github.com.cnpmjs.org/arcticicestudio/nord-vim 
git clone --depth=1 https://github.com.cnpmjs.org/ajmwagar/vim-deus
git clone --depth=1 https://github.com.cnpmjs.org/drewtempelmeyer/palenight.vim
git clone --depth=1 https://hub.fastgit.org/sainnhe/everforest
git clone --depth=1 https://hub.fastgit.org/sainnhe/gruvbox-material
git clone --depth=1 https://hub.fastgit.org/sainnhe/edge
git clone --depth=1 https://hub.fastgit.org/sainnhe/sonokai
git clone --depth=1 https://hub.fastgit.org/skywind3000/vim-quickui

cd ~/.vim_runtime/

cd $pos
echo "Installation succeeded! ヾ(≧∇≦*)ゝ"


