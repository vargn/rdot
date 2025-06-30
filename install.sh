#!/bin/bash

mkdir -p "$HOME/.local/bin"

# install riff
if ! command -v riff >/dev/null 2>&1; then
  echo "Installing riff..."
  curl -L https://github.com/walles/riff/releases/download/3.3.10/riff-3.3.10-x86_64-linux -o ~/.local/bin/riff
  sleep 0.1
  chmod +x ~/.local/bin/riff
else
  echo "riff is already installed."
fi

# install fzf
if ! command -v fzf >/dev/null 2>&1; then
  echo "Installing fzf..."
  curl -L https://github.com/junegunn/fzf/releases/download/v0.63.0/fzf-0.63.0-linux_amd64.tar.gz -o ~/.tmp/dotfiles/fzf.tar.gz
  tar -xzf ~/.tmp/dotfiles/fzf.tar.gz -C ~/.local/bin
  sleep 0.1
  chmod +x ~/.local/bin/fzf
else
  echo "fzf is already installed."
fi
