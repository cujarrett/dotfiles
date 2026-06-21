#!/usr/bin/env just --justfile

# Copy all dotfiles from home directory to this repo
update-all:
    @echo "Updating all dotfiles..."
    just update-aliases
    just update-vimrc
    just update-zprofile
    just update-zshrc

# Copy .aliases
update-aliases:
    cp ~/.aliases .aliases
    @echo "✓ .aliases updated"

# Copy .vimrc
update-vimrc:
    cp ~/.vimrc .vimrc
    @echo "✓ .vimrc updated"

# Copy .zprofile
update-zprofile:
    cp ~/.zprofile .zprofile
    @echo "✓ .zprofile updated"

# Copy .zshrc
update-zshrc:
    cp ~/.zshrc .zshrc
    @echo "✓ .zshrc updated"
