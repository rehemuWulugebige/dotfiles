#!/usr/bin/env bash
set -e
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.local/bin ~/.config/ghostty

ln -sfn "$DOTFILES/tmux/.tmux.conf"      ~/.tmux.conf
ln -sfn "$DOTFILES/bin/tmux-sessionizer" ~/.local/bin/tmux-sessionizer
ln -sfn "$DOTFILES/ghostty/config"       ~/.config/ghostty/config

chmod +x "$DOTFILES/bin/tmux-sessionizer"

echo "linked:"
ls -l ~/.tmux.conf ~/.local/bin/tmux-sessionizer ~/.config/ghostty/config
