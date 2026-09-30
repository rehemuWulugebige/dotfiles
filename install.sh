#!/usr/bin/env bash
set -e
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.local/bin

ln -sfn "$DOTFILES/tmux/.tmux.conf"      ~/.tmux.conf
ln -sfn "$DOTFILES/bin/tmux-sessionizer" ~/.local/bin/tmux-sessionizer
chmod +x "$DOTFILES/bin/tmux-sessionizer"

# Mac only: zsh and Ghostty (Omarchy manages its own)
if [[ "$(uname)" == "Darwin" ]]; then
  mkdir -p ~/.config/ghostty
  ln -sfn "$DOTFILES/ghostty/config" ~/.config/ghostty/config
  ln -sfn "$DOTFILES/zsh/.zshrc"     ~/.zshrc
fi

echo "linked:"
ls -l ~/.tmux.conf ~/.local/bin/tmux-sessionizer
