# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```
#### Clone the repository

```shell
git clone https://github.com/ldoo22/ldoo_astro_config ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

#### Other stuff
astronvim background color: #1E222A
##### Possible .tmux.conf
```
set-option -ga terminal-overrides ",xterm-256color:Tc"
set -g default-terminal "tmux-256color"
set -ag terminal-overrides ",xterm-256color:RGB"

set -g status-style bg="#1E222A"
```
