#!/bin/sh

ln -sfv "$PWD/vim" "$HOME/.vim";

cd symlink
for f in *; do ln -sfv "$PWD/$f" "$HOME/.$f"; done

mkdir -p "$HOME/Library/Application Support/Code/User"
ln -sfv "$PWD/../vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
