#/bin/sh
set -e

rm -rf ~/.vim_runtime
git clone --depth=1 https://github.com/fzrkexer/vimrc ~/.vim_runtime

echo '
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/init.vim
' > ~/.vimrc

echo "Installation succeeded! ヾ(≧∇≦*)ゝ"
echo "The plugins are automatically installed the first time Vim starts."
