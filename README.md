# Vimrc

A beautiful and practical vim configuration used for daily XCPC training. This is my first generation vim configuration (although there is no second generation yet)

- Suitable for C/C++ (hightlight, auto-pair, compile and run).
- Beautiful and eye-protecting dark colorscheme.
- Markdown support
- Include vimwiki (Write problem solution)
- Ready to use out of the box, no additional configuration required.
- No other useless functions.

## Screenshot

![Preview](https://github.com/FZRKexEr/vimrc/raw/main/images/Preview.png)

## Requirements

- g++
- git
- curl
- wget
- Python2.7+ or Python3.1+
- Vim with python support
- ccls (not necessary, but recommended)

On macOS: Do not use macOS native vim. Use homebrew to install vim.

## How to install

Running the following command in your terminal.

```sh
sh -c "$(wget -O- https://raw.githubusercontent.com/FZRKexEr/vimrc/main/install.sh)"
```

国内网络（很）可能导致安装失败。可以尝试以下的方法解决：
1. 使用 Github 的镜像。
  在 `/etc/hosts` 中加入
  ```
  mirror.ghproxy.com github.com
  mirror.ghproxy.com raw.githubusercontent.com
  ```
2. 使用 [dev-sidercar](https://github.com/docmirror/dev-sidecar)(推荐)。
3. 换个时间试试。

## Colorscheme

Apart from the default colorscheme, several other colorschemes are built in.

- nord
- deus
- one
- palenight
- gruvbox-material
- everforest (Default)
- sonokai
- edge


## Usage

The `leader` is `<Space>`.

| Command      | Description                                   |
| ------------ | --------------------------------------------- |
| `<leader>r`  | compile and run                               |
| `<S-h>`      | move to the previous buffer                   |
| `<S-l>`      | move to the next buffer                       |
| `<leader>q`  | Exit the current buffer                       |
| `<leader>f`  | File searchf                                  |
| `<space>e`   | Try it in a markdown file                     |
| `<leader>ww` | Open index page of vimwiki                    |
| `<CR>`       | In the vimwiki: create/open another wiki      |
| `<leader>wf` | In the vimwiki: Change the form of connection |


