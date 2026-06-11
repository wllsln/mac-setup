# macOS setup

> My macOS setup from scratch using [yadm](https://yadm.io).
> GNU utils, dev tools, apps, and configs — fully bootstrapped.

## What's included

| Tool | Purpose |
|---|---|
| [Homebrew](https://brew.sh) | Package manager — see `.Brewfile` for full app list |
| [antidote](https://getantidote.github.io) | Zsh plugin manager (see `.zsh_plugins.txt`) |
| [mise](https://mise.jdx.dev) | Runtime version manager (node, kubectl, etc.) |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder with full shell integration |
| [zsh-abbr](https://github.com/olets/zsh-abbr) | Zsh abbreviations (see `.config/zsh-abbr/user-abbreviations`) |
| [Powerlevel10k](https://github.com/romkatv/powerlevel10k) | Zsh prompt theme |
| [tmux](https://github.com/tmux/tmux) | Terminal multiplexer with session persistence |
| [vim](https://www.vim.org) | Text editor with vim-plug plugin manager |
| [iTerm2](https://iterm2.com) | Terminal — prefs synced via `.iterm2/` |

## Pre-setup

### Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install yadm

```bash
brew install yadm
```

### Configure SSH

Set up an SSH key and add it to GitHub before cloning, so yadm can switch
the remote to SSH after bootstrap.

```
~/.ssh/config template:

Host github.com
    AddKeysToAgent yes
    IdentityFile ~/.ssh/<your_key>

Host *
    AddKeysToAgent yes
```

See: [Connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

## Setup

### Clone and bootstrap

```bash
yadm clone https://github.com/wllsln/mac-setup.git --bootstrap
```

> Uses HTTPS for the initial clone. Bootstrap switches the remote to SSH
> automatically at the end.

The bootstrap will:
- Install Homebrew packages (`brew bundle --global`)
- Configure iTerm2 to load prefs from `~/.iterm2/`
- Install vim-plug and vim plugins
- Install tmux plugin manager (TPM) and tmux plugins
- Switch the yadm remote to SSH

**You may be prompted for your sudo password.**

### App Store apps (optional)

`mas` is included but App Store installs are disabled by default. To install
manually, sign into the App Store first, then use:

```bash
mas install <app_id>
```

An app must have been previously purchased/downloaded under your Apple ID.

## Cheat sheet

```bash
# yadm wraps git:
yadm status
yadm add <file>
yadm commit
yadm push

# List all files under yadm control:
yadm list -a
```

See: https://yadm.io/docs/common_commands

## Extra

### iTerm2 navigation

To enable word/line navigation shortcuts:
- Open iTerm2 → Preferences → Profiles → Keys → Key Mappings
- Click Presets → select **Natural Text Editing**

### tmux session persistence

Sessions are automatically saved every 15 minutes and restored on tmux
server start via `tmux-continuum`. To manually save: `prefix + Ctrl-s`.
To restore: `prefix + Ctrl-r`.
