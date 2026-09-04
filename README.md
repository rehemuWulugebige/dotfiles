# dotfiles

tmux, tmux-sessionizer, and Ghostty config. Neovim lives separately
at https://github.com/rehemuWulugebige/nvim

## Install

```bash
git clone https://github.com/rehemuWulugebige/dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh
```

Then add `~/.local/bin` to PATH and edit `SEARCH_PATHS` in
`bin/tmux-sessionizer` to match where projects live on that machine.

## Requires

```bash
brew install tmux fzf
```

## tmux

Prefix is `Ctrl+a`. `prefix f` opens the project switcher.
