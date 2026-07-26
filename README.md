# macOS setup

> My macOS setup from scratch using [yadm](https://yadm.io).
> GNU utils, dev tools, apps, and configs — fully bootstrapped.

## What's included

| Tool | Purpose |
|---|---|
| [Homebrew](https://brew.sh) | Package manager — see `.Brewfile` (workstation) and `.Brewfile.dev` (dev-only, opt-in) |
| [antidote](https://getantidote.github.io) | Zsh plugin manager (see `.zsh_plugins.txt`) |
| [mise](https://mise.jdx.dev) | Runtime version manager (node, kubectl, etc.) |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder with full shell integration |
| [zsh-abbr](https://github.com/olets/zsh-abbr) | Zsh abbreviations (see `.config/zsh-abbr/user-abbreviations`) |
| [Powerlevel10k](https://github.com/romkatv/powerlevel10k) | Zsh prompt theme |
| [tmux](https://github.com/tmux/tmux) | Terminal multiplexer with session persistence |
| [vim](https://www.vim.org) | Text editor with vim-plug plugin manager |
| [iTerm2](https://iterm2.com) | Terminal — prefs synced via `.iterm2/` |

## Highlights

### antidote

Replaces oh-my-zsh with a faster, composable plugin manager. Plugins are declared
one per line in [`.zsh_plugins.txt`](.zsh_plugins.txt) and loaded automatically on
shell start via `antidote load`.

Current plugins: autosuggestions, completions, fast-syntax-highlighting, peco history
search, OMZ plugins for aws/azure/kubectl/pip, zsh-abbr, and Powerlevel10k.

To add a plugin, append the repo slug to `.zsh_plugins.txt` and restart your shell.

### fzf

Shell integration enabled via `eval "$(fzf --zsh)"` in `.zshrc`. Adds three
key bindings:

| Shortcut | Action |
|---|---|
| `Ctrl+R` | Fuzzy history search |
| `Ctrl+T` | Fuzzy-insert a file path at the cursor |
| `Alt+C` | Fuzzy `cd` into a directory |

### zsh-abbr

Like aliases, but abbreviations expand in-line when you press space — you see
the full command before it runs. Useful for long flags or multi-part commands.

Abbreviations live in [`.config/zsh-abbr/user-abbreviations`](.config/zsh-abbr/user-abbreviations).
To add one interactively:

```zsh
abbr myabbr="the full command"
```

To add one with a trailing space (so the cursor lands after the expansion ready
for an argument):

```zsh
abbr "myabbr"="the full command "
```

### tmux

Session persistence via [TPM](https://github.com/tmux-plugins/tpm) plugins:

- **tmux-continuum**: auto-saves session every 15 minutes
- **tmux-resurrect**: manual save and restore

| Shortcut | Action |
|---|---|
| `prefix + Ctrl-s` | Save session manually |
| `prefix + Ctrl-r` | Restore session manually |

Sessions restore automatically on `tmux` start. No action needed after a reboot.

---

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
- Install Homebrew packages from `~/.Brewfile` (`brew bundle --global`) — always runs
- Install Homebrew packages from `~/.Brewfile.dev` — only if `$INSTALL_DEV` is set (see below)
- Configure iTerm2 to load prefs from `~/.iterm2/`
- Install vim-plug and vim plugins
- Install tmux plugin manager (TPM) and tmux plugins
- Switch the yadm remote to SSH

**You may be prompted for your sudo password.**

### Dev tooling (optional)

[`.Brewfile`](.Brewfile) covers a normal workstation install. Dev-only
packages — languages/CLI tooling, cloud/container CLIs (aws, azure-cli,
kubectl, helm, docker), network/security tools (nmap, wireshark, telnet),
1Password, and anything needing a work license this machine may not have
(Microsoft Office/Teams/Edge/OneDrive, `mas`) — live in
[`.Brewfile.dev`](.Brewfile.dev) instead, and are skipped by default.

To install them too, set `$INSTALL_DEV` before bootstrapping:

```bash
INSTALL_DEV=1 yadm clone https://github.com/wllsln/mac-setup.git --bootstrap
```

Or, on a machine you already bootstrapped:

```bash
INSTALL_DEV=1 ~/.config/yadm/bootstrap
```

To pick a different subset, edit `.Brewfile` / `.Brewfile.dev` directly and
re-run `brew bundle --global` / `brew bundle --file=~/.Brewfile.dev`.

**Note:** `brew bundle` resolves the entire Brewfile into a dependency graph
before installing anything — if any single entry can't be resolved (an
untrusted third-party tap, or a cask that's been removed upstream), the whole
run aborts with nothing installed, rather than skipping just that entry.
There's no flag to make it continue past a bad entry — if a bundle run fails,
find and fix/remove the offending line in `.Brewfile`/`.Brewfile.dev` first.
Third-party taps (e.g. FUSE-T) need `trusted: true` in the Brewfile since
Homebrew 6 refuses to load casks from untrusted taps otherwise.

### App Store apps (optional)

`mas` (in `.Brewfile.dev`, see above) is included but App Store installs are
disabled by default. To install manually, sign into the App Store first, then
use:

```bash
mas install <app_id>
```

An app must have been previously purchased/downloaded under your Apple ID.

---

## Workflows

### Edited a dotfile — commit and push

```bash
yadm add ~/.zshrc
yadm commit -m "update zshrc"
yadm push
```

### Repo was updated — pull to your machine

```bash
yadm pull
```

If yadm reports untracked files blocking the pull, add them first:

```bash
yadm add ~/.config/some/file
yadm pull
```

### Add a new dotfile to yadm

```bash
yadm add ~/.config/some/new-file
yadm commit -m "track new config"
yadm push
```

### Check state

```bash
yadm status          # uncommitted changes
yadm diff            # diff of changes
yadm list -a         # all files under yadm control
```

See: https://yadm.io/docs/common_commands

---

## Extra

### iTerm2 navigation

To enable word/line navigation shortcuts:
- Open iTerm2 → Preferences → Profiles → Keys → Key Mappings
- Click Presets → select **Natural Text Editing**
