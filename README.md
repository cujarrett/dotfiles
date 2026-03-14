# dotfiles

Personal shell/editor dotfiles for macOS.

## Files

- `.zshrc` - zsh config, oh-my-zsh plugins, prompt setup
- `.zprofile` - Homebrew shell environment init
- `.aliases` - shell aliases loaded by `.zshrc`
- `.vimrc` - Vim config
- `.npmrc` - npm defaults

## Setup

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
cp .npmrc ~/.npmrc
source ~/.zshrc
```

## Note

`.zshrc` sources `~/.secrets` if present. Keep secrets there and out of git.
