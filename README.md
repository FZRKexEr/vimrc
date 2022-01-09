# Vimrc

A beautiful and practical vim configuration used for daily XCPC training. This is my first generation vim configuration (although there is no second generation yet)

- Suitable for C/C++ (hightlight, auto-pair, compile and run).
- Beautiful and eye-protecting dark colorscheme.
- Markdown support
- Ready to use out of the box, no additional configuration required.
- No other unnecessary functions. (eg: status line & buffer line)

## Screenshot

![Preview](https://github.com/FZRKexEr/vimrc/raw/main/images/Preview.png)

## Requirements

- g++
- git
- curl
- wget

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

## Usage

The `leader` is `<Space>`.

| Command      | Description                                   |
| ------------ | --------------------------------------------- |
| `<leader>r`  | compile and run                               |
| `<leader>f`  | File searchf                                  |
| `<space>e`   | Try it in a markdown file                     |


