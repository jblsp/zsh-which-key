# zsh-which-key

A Zsh plugin which provides a reference pop-up for active ZLE keybindings.

## Features

- [fzf](https://github.com/junegunn/fzf) integration

## Install

1. Load `zsh-which-key.plugin.zsh` with a Zsh plugin manager or source it
directly:

```zsh
source /path/to/zsh-which-key/zsh-which-key.plugin.zsh
```

2. Bind the widget:

```zsh
# Binds to alt+/
bindkey '^[/' show_mappings_widget
```
