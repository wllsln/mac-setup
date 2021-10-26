# macOS setup

>  My macOS setup from scratch using [yadm](https://yadm.io).
> `GNU` utils, dev setup, app, configs & Mac App Store installs.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Pre-setup

### Install `homebrew`

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install `yadm`

```bash
brew install yadm
```

## Setup

### Note about mas

For App Store items, this will fail if trying to use an Apple ID that has not downloaded/installed the software previously. Instead, you will need to manually purchase each package first.
```bash
mas purchase 497799835  # Xcode
```

### Clone and bootstrap

```bash
yadm clone https://github.com/wllsln/mac-setup.git --bootstrap # https!
```

**NB:** Bootstraping updates the remote url to ssh, so an ssh key will have to be configured after this (see below).

**NB:** There might be some need to enter the sudo password.

**NB:** Mac App Store installs will ask for a login.

## Done!

----

## Extra

### Add ssh key

Configure (new or existing) [ssh key and add it to GitHub](https://help.github.com/articles/connecting-to-github-with-ssh/), then [add key to ssh-agent and `~/.ssh/config`](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#adding-your-ssh-key-to-the-ssh-agent). Then test:

```
ssh -T git@github.com
```

### Cheat sheet

```bash
# yadm wraps git, e.g.:
yadm status
yadm add <file>
yadm commit
yadm push
# etc

# List files under yadm control:
yadm list -a
```

See: https://yadm.io/docs/common_commands
