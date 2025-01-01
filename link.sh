#!/bin/bash
DOTFILES="$HOME/.dotfiles"

rm() {
  if [ -e "$1" ]; then
    echo "removing $1"
    rm -rf "$1"
  else
    echo "$1 does not exist, skipping removal"
  fi
}

sm() {
  mkdir -p "$(dirname "$2")"
  ln -sf "$1" "$2"
  echo "symlinked $1 to $2"
}

rm "$HOME/.zshrc"
sm "$DOTFILES/.zshrc" "$HOME/.zshrc"

rm "$HOME/.config/zed/keymap.json"
sm "$DOTFILES/.zed/keymap.json" "$HOME/.config/zed/keymap.json"

rm "$HOME/.config/zed/settings.json"
sm "$DOTFILES/.zed/settings.json" "$HOME/.config/zed/settings.json"

rm "$HOME/.config/zed/themes"
sm "$DOTFILES/.zed/themes" "$HOME/.config/zed/themes"

rm "$HOME/.config/nvim"
sm "$DOTFILES/nvim" "$HOME/.config/nvim"

rm "$HOME/.config/ghostty"
sm "$DOTFILES/ghostty" "$HOME/.config/ghostty/config"

