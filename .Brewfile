## Based on:
## https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
## https://danielmiessler.com/blog/first-10-things-new-mac/
## https://hackercodex.com/guide/python-development-environment-on-mac-osx/
## See homebrew-bundle:
## https://github.com/Homebrew/homebrew-bundle
## forked from gihub: pndurette/mac-setup
##
## Workstation-default packages: installed on every machine via bootstrap.
## Dev-only packages live in ~/.Brewfile.dev and are installed only when
## $INSTALL_DEV is set (see ~/.config/yadm/bootstrap).

## Cask macOS apps
# cask 'adobe-creative-cloud'
cask 'arc'
# cask 'blackhole-2ch'
cask 'bitwarden'
cask 'cryptomator'
# cask 'discord'
# cask 'dropbox'
cask 'firefox'
cask 'fluidvoice'
cask 'google-chrome'
# cask 'inkscape'
cask 'notion'
# cask 'obs'
cask 'rectangle'
cask 'slack'
cask 'spotify'
cask 'synologyassistant'
cask 'the-unarchiver'
# cask 'via' — deprecated by Homebrew (fails macOS Gatekeeper check, unsigned);
# will be fully disabled 2026-09-01. If you use a VIA-configurable keyboard,
# install manually from https://www.caniusevia.com/ instead.
cask 'vlc'
cask 'zoom'

## Editors & apps (general-purpose, not dev-exclusive)
cask 'sublime-text'
cask 'typora'
cask 'claude'
cask 'claude-code'
cask 'iterm2'

## Fonts
cask 'font-hack-nerd-font'
cask 'font-anton'
cask 'font-cormorant'
cask 'font-epilogue'
cask 'font-ibm-plex-mono'
cask 'font-lora'
cask 'font-manrope'
cask 'font-montserrat'
cask 'font-nunito-sans'
cask 'font-oswald'
cask 'font-oxygen'
cask 'font-playfair-display'
cask 'font-proza-libre'
cask 'font-raleway'
cask 'font-roboto-mono'
cask 'font-roboto-slab'
cask 'font-rubik'
cask 'font-sora'

## Make macOS more linux-y (everyday shell utilities)
brew 'binutils'
brew 'coreutils'
brew 'diffutils'
brew 'findutils'
brew 'ffmpeg'
brew 'gpg'
brew 'gnu-sed'
brew 'gnu-tar'
brew 'gnu-which'
brew 'grep'
brew 'gzip'
brew 'htop'
brew 'less'
brew 'speedtest-cli'
brew 'tmux'
brew 'watch'
brew 'wget'
brew 'yt-dlp'

## Zsh shell customization
brew 'antidote'
brew 'fzf'
brew 'mise'
brew 'vim'
brew 'zsh'

## FUSE-T (for Cryptomator)
## trusted: true avoids "refusing to load cask ... from untrusted tap" —
## Homebrew 6+ requires third-party taps to be explicitly trusted.
tap 'macos-fuse-t/homebrew-cask', trusted: true
cask 'fuse-t'
cask 'fuse-t-sshfs'
