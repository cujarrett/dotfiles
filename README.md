# dotfiles

Personal shell/editor dotfiles for macOS.

## Files

- `.zshrc` - zsh config, oh-my-zsh plugins, prompt setup
- `.zprofile` - Homebrew shell environment init
- `.aliases` - shell aliases loaded by `.zshrc`
- `.vimrc` - Vim config
- `.gitconfig` - git config; `pull.rebase` + `rebase.autoStash` so a pull never stops on a dirty tree
- `.gitignore_global` - ignore rules applied to every repo, referenced by `.gitconfig`

## Setup

### Initial Setup
```bash
# Backup current files first
mv ~/.zshrc ~/.zshrc.bak 2>/dev/null || true
mv ~/.zprofile ~/.zprofile.bak 2>/dev/null || true
mv ~/.aliases ~/.aliases.bak 2>/dev/null || true
mv ~/.gitconfig ~/.gitconfig.bak 2>/dev/null || true

# Copy dotfiles
cp .zshrc ~/.zshrc
cp .zprofile ~/.zprofile
cp .aliases ~/.aliases
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
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
just update-gitconfig
```

These commands copy files locally but don't commit them - review the changes and commit manually when ready.

## Note

`.zshrc` sources `~/.secrets` if present. Keep secrets there and out of git.
