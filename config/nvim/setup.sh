#!/usr/bin/env bash

set -e

echo "==> Installing dependencies..."

# Detect OS (basic)
if command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y git curl ripgrep fd-find nodejs npm
elif command -v apt >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y git curl ripgrep fd-find nodejs npm
fi

echo "==> Installing Neovim (latest)..."

cd /tmp
curl -LO https://github.com/neovim/neovim-releases/releases/latest/download/nvim-linux-x86_64.appimage
chmod +x nvim-linux-x86_64.appimage

sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

echo "==> Cloning config..."

rm -rf ~/.config/nvim
git clone git@github.com:hpalheta/nvim-hp.git ~/.config/nvim

echo "==> Starting Neovim (plugins will install)..."

nvim +qall

echo "==> Done!"
