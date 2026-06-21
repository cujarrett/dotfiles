# dotfiles

Personal shell/editor dotfiles for macOS.

## Files

- `.zshrc` - zsh config, oh-my-zsh plugins, prompt setup
- `.zprofile` - Homebrew shell environment init
- `.aliases` - shell aliases loaded by `.zshrc`
- `.vimrc` - Vim config

## Setup

### Initial Setup
```bash
# Backup current files first
mv ~/.zshrc ~/.zshrc.bak 2>/dev/null || true
mv ~/.zprofile ~/.zprofile.bak 2>/dev/null || true
mv ~/.aliases ~/.aliases.bak 2>/dev/null || true

# Copy dotfiles
cp .zshrc ~/.zshrc
cp .zprofile ~/.zprofile
cp .aliases ~/.aliases
cp .vimrc ~/.vimrc
source ~/.zshrc
```

### Updating Dotfiles
Use the `justfile` to sync current machine versions:

```bash
# Update all dotfiles from home directory
just update-all

# Or update specific files
just update-aliases
just update-zshrc
just update-vimrc
just update-zprofile
```

These commands copy files locally but don't commit them — review the changes and commit manually when ready.

## Note

`.zshrc` sources `~/.secrets` if present. Keep secrets there and out of git.
