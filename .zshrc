#!/usr/bin/env zsh

#-----------------------------------------
# ** Environment variables
#-----------------------------------------

# History
HISTFILE=${ZDOTDIR:-~}/.zsh_history
HISTSIZE=10000  # The maximum number of events to save in the internal history.
SAVEHIST=10000  # The maximum number of events to save in the history file.1

# Terminal
export TERM=xterm-256color

# PATH
BREW_PREFIX=$(/usr/local/bin/brew --prefix)
pupdate() { case ":${PATH:=$1}:" in *:"$1":*) ;; *) PATH="$PATH:$1" ;; esac; }  # pathupdate
PATHS=(
    # PATHs for gnu brew binaries
    $BREW_PREFIX/opt/coreutils/libexec/gnubin
    $BREW_PREFIX/opt/findutils/libexec/gnubin
    $BREW_PREFIX/opt/gnu-sed/libexec/gnubin
    $BREW_PREFIX/opt/gnu-tar/libexec/gnubin
    $BREW_PREFIX/opt/gnu-which/libexec/gnubin
    $BREW_PREFIX/opt/grep/libexec/gnubin
    # PATH for other brew binaries
    $BREW_PREFIX/bin
    $BREW_PREFIX/sbin
    # PATH for pipsi
    # https://github.com/mitsuhiko/pipsi
    $HOME/.local/bin
    $HOME/.jenv/bin
)
# NB: 'j' flag: join PATHS by ':'' (see: man zshexpn)
export PATH=${(j[:])PATHS}:$PATH 

# gpg
# https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309848851
export GPG_TTY=$(tty)

# Go
export GOBIN=/usr/local/Cellar/go
export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/go
pupdate $GOPATH/bin
pupdate $GOROOT/bin
# manual:  mkdir -p $HOME/go/{bin,src,pkg}

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# alias npx="npx --no-install"

# Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# jenv
eval "$(jenv init -)"

#-----------------------------------------
# ** Zsh options
#-----------------------------------------

# http://zsh.sourceforge.net/Doc/Release/Options.html
setopt AUTO_CD
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt NOTIFY
setopt CHECK_JOBS
setopt INTERACTIVE_COMMENTS
setopt ALWAYS_TO_END
unsetopt CORRECT_ALL
setopt CORRECT

#-----------------------------------------
# ** Completion styling
#-----------------------------------------

# https://unix.stackexchange.com/a/214699
# Do menu-driven completion.
zstyle ':completion:*' menu select
# Color completion for some things.
# http://linuxshellaccount.blogspot.com/2008/12/color-completion-using-zsh-modules-on.html
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# Formatting and messages
# http://www.masterzen.fr/2009/04/19/in-love-with-zsh-part-one/
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format "$fg[yellow]%B--- %d%b"
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format "$fg[red]No matches for:$reset_color %d"
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''
# Enable approximate matches for completion
# https://blog.callstack.io/supercharge-your-terminal-with-zsh-8b369d689770
zstyle ':completion:::::' completer _expand _complete _ignored _approximate

#-----------------------------------------
# ** Pyenv init
#-----------------------------------------

# This is plain faster than most pyenv plugins..
eval "$(pyenv init -)"

#-----------------------------------------
# ** Zsh plugins
#-----------------------------------------

# 1. Antidote plugin manager init
# https://getantidote.github.io/
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# 1.1. OMZ sets ZSH_CACHE and some of its plugins expect it
# (set it to Antidote's home which is a cache)
export ZSH_CACHE_DIR="$(antidote home)"

# 2. Theme: PowerLevel10k
# Need to go into iterm2 Settings > Profile > Text, and change both font options to Meslo

# 3. Load plugins from ~/.zsh_plugins.txt
antidote load

# 4. PowerLevel10k Prompt
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

#-----------------------------------------
# ** Key bindings
#-----------------------------------------

# # Up/down bindings for zsh-history-substring-search plugin
# # https://github.com/zsh-users/zsh-history-substring-search#usage
# bindkey '^[[A' history-substring-search-up      # Arrow up
# bindkey '^[[B' history-substring-search-down    # Arrow down

#-----------------------------------------
# ** Aliases and abbreviations
#-----------------------------------------

### Disable autocorrect, shouldn't be needed now that we set CORRECT instead of CORRECT_ALL
##alias mv='nocorrect mv'
##alias cp='nocorrect cp'
##alias rm='nocorrect rm'
##alias mkdir='nocorrect mkdir'
# Color commands
alias ls='ls --color=auto'
alias ll='ls --color=auto -lah'
alias grep='grep --colour=auto'
# Human readable
alias df='df -h'
alias du='du -h'

#-----------------------------------------
# pyenv virtualenvs
#-----------------------------------------
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
