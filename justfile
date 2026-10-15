#!/usr/bin/env just --justfile

# Copy all dotfiles from home directory to this repo
update-all:
    @echo "Updating all dotfiles..."
    just update-aliases
    just update-vimrc
    just update-zprofile
    just update-zshrc
    just update-gitconfig

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

# Copy .gitconfig and the global ignore file it points at
update-gitconfig:
    sed 's|excludesfile = /Users/matt-jarrett/.gitignore_global|excludesfile = ~/.gitignore_global|' ~/.gitconfig > .gitconfig
    cp ~/.gitignore_global .gitignore_global
    @echo "✓ .gitconfig updated"
