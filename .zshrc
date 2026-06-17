# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#!/usr/bin/env zsh

#-----------------------------------------
# ** Environment variables
#-----------------------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"

# History
HISTFILE=${ZDOTDIR:-~}/.zsh_history
HISTSIZE=10000  # The maximum number of events to save in the internal history.
SAVEHIST=10000  # The maximum number of events to save in the history file.1

# Terminal
export TERM=xterm-256color

# Brew
HOMEBREW_FORBIDDEN_CASKS=tor-browser
HOMEBREW_FORBIDDEN_FORMULAE=tor-browser

# PATH
pupdate() { case ":${PATH:=$1}:" in *:"$1":*) ;; *) PATH="$PATH:$1" ;; esac; }  # pathupdate
PATHS=(
    # PATHs for gnu brew binaries
    $HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin
    $HOMEBREW_PREFIX/opt/findutils/libexec/gnubin
    $HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin
    $HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin
    $HOMEBREW_PREFIX/opt/gnu-which/libexec/gnubin
    $HOMEBREW_PREFIX/opt/grep/libexec/gnubin
    # PATH for other brew binaries
    $HOMEBREW_PREFIX/bin
    $HOMEBREW_PREFIX/sbin
    # PATH for pipx
    $HOME/.local/bin
    ${GOPATH}/bin
    $HOME/.jenv/bin
)

# NB: 'j' flag: join PATHS by ':'' (see: man zshexpn)
export PATH=${(j[:])PATHS}:$PATH 

# gpg
# https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309848851
export GPG_TTY=$(tty)

# Go
export GOPATH=$HOME/go
pupdate $GOPATH/bin
# manual:  mkdir -p $HOME/go/{bin,src,pkg}

# mise
eval "$(mise activate zsh)"

#-----------------------------------------
# ** tanium-eng rc
#-----------------------------------------
export PATH="/Users/willis.lin/.local/bin:$PATH"
eval "$(tanium-eng eval zsh)"

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
# ** Zsh plugins
#-----------------------------------------

# 1. Antidote plugin manager init
# https://getantidote.github.io/
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# 1.1. OMZ sets ZSH_CACHE and some of its plugins expect it
# (set it to Antidote's home which is a cache)
export ZSH_CACHE_DIR="$(antidote home)"

# 2. Initialize completion system before loading plugins
autoload -Uz compinit && compinit

# 3. Load plugins from ~/.zsh_plugins.txt (includes romkatv/powerlevel10k)
antidote load

# 4. PowerLevel10k Prompt
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

# Enable fzf shell integration (reverse search, file completion)
eval "$(fzf --zsh)"

#-----------------------------------------
# ** Key bindings
#-----------------------------------------

# # Up/down bindings for zsh-history-substring-search plugin
# # https://github.com/zsh-users/zsh-history-substring-search#usage
# bindkey '^[[A' history-substring-search-up      # Arrow up
# bindkey '^[[B' history-substring-search-down    # Arrow down
