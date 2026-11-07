# dotfiles

Personal shell/editor dotfiles for macOS.

## Files

- `.zshrc` - zsh config, oh-my-zsh plugins, prompt setup
- `.zprofile` - Homebrew shell environment init
- `.aliases` - shell aliases loaded by `.zshrc`
- `.vimrc` - Vim config
- `.gitconfig` - git config; `pull.rebase` + `rebase.autoStash` so a pull never stops on a dirty tree
- `.gitignore_global` - ignore rules applied to every repo, referenced by `.gitconfig`

## Dotfiles setup

Paste this into a terminal. Old files are kept as `.bak`.

```bash
git clone https://github.com/cujarrett/dotfiles.git ~/Developer/dotfiles
cd ~/Developer/dotfiles
for f in .zshrc .zprofile .aliases .vimrc .gitconfig .gitignore_global; do
  [ -f ~/$f ] && mv ~/$f ~/$f.bak
  cp $f ~/$f
done
```

## Terminal setup

Ghostty is the terminal app and Starship is the prompt. Their settings are in `terminal/`. Do the dotfiles setup first, because `.zshrc` starts the prompt.

1. Install [Homebrew](https://brew.sh).
2. Paste this into a terminal. An old Ghostty config is kept as `.bak`.

```bash
brew install starship
brew install --cask ghostty font-jetbrains-mono-nerd-font
mkdir -p ~/.config/ghostty
[ -f ~/.config/ghostty/config ] && mv ~/.config/ghostty/config ~/.config/ghostty/config.bak
echo "config-file = $HOME/Developer/dotfiles/terminal/ghostty.conf" > ~/.config/ghostty/config
```

3. Open Ghostty.

The prompt shows your git branch and kube cluster. This repo is public, so keep work cluster names out of `terminal/starship.toml`.

## Updating dotfiles
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
