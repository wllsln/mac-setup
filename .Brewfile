## Based on:
## https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
## https://danielmiessler.com/blog/first-10-things-new-mac/
## https://hackercodex.com/guide/python-development-environment-on-mac-osx/
## See homebrew-bundle:
## https://github.com/Homebrew/homebrew-bundle
## forked from gihub: pndurette/mac-setup

## Necessary
brew 'git'
brew 'mas'

## Command-Line Mac App Store
# Disable because Monterey has problems with mas
# NB: 'brew install mas && mas signin <email>'
# mas 'Amphetamine', id: 937984704
# mas 'Display Menu', id: 549083868
# mas 'Pages', id: 409201541
# mas 'Numbers', id: 409203825
# mas 'Keynote', id: 409183694
# mas "Xcode", id: 497799835

## Cask macOS apps
# cask 'adobe-creative-cloud'
# cask 'avira-antivirus'
cask 'arc'
# cask 'blackhole-2ch'
cask 'bitwarden'
# cask 'discord'
cask 'dropbox'
cask 'firefox'
cask 'google-chrome'
# cask 'idrive'
# cask 'inkscape'
cask 'microsoft-edge'
cask 'microsoft-office'
# cask 'obs'
cask 'rectangle'
cask 'slack'
cask 'spotify'
cask 'synologyassistant'
cask 'the-unarchiver'
cask 'via'
cask 'vlc'
cask 'zoom'

# Tap dev stuff
tap 'azure/kubelogin'
tap 'derailed/k9s'
tap 'microsoft/mssql-release'
tap 'homebrew/cask-fonts'

# Cask dev apps
cask '1password'
cask 'azure-data-studio'
cask 'db-browser-for-sqlite'
cask 'iterm2'
cask 'meld'
cask 'postman'
cask 'sourcetree'
cask 'sublime-text'
cask 'typora'
cask 'visual-studio-code'
cask 'vmware-fusion'

# Fonts
brew 'svn'  # dependency for font install
cask 'font-hack-nerd-font'
brew 'font-anton'
brew 'font-cormorant'
brew 'font-epilogue'
brew 'font-ibm-plex-mono'
brew 'font-lora'
brew 'font-manrope'
brew 'font-montserrat'
brew 'font-nunito-sans'
brew 'font-oswald'
brew 'font-oxygen'
brew 'font-playfair-display'
brew 'font-proza-libre'
brew 'font-raleway'
brew 'font-roboto-mono'
brew 'font-roboto-slab'
brew 'font-rubik'
brew 'font-sora'

# Make macOS more linux-y
brew 'binutils'
brew 'coreutils'
brew 'diffutils'
brew 'findutils'
brew 'ffmpeg'
brew 'gpg'
brew 'gnu-sed'
brew 'gnu-tar'
brew 'gnu-which'
brew 'gnutls'
brew 'grep'
brew 'gzip'
brew 'htop'
brew 'less'
brew 'nmap'
brew 'speedtest-cli'
brew 'telnet'
brew 'tmux'
brew 'watch'
brew 'wireshark'
brew 'youtube-dl'
brew 'wget'

# Dev
brew 'antidote'
brew 'automake'
brew 'bash'
brew 'bat'
brew 'exa'
brew 'fzf'
brew 'git'
brew 'go'
brew 'jq'
brew 'make'
brew 'nano'
brew 'nvm'
brew 'openssl'
brew 'peco'
brew 'rpm'
brew 'tcpdump'
brew 'whois'
brew 'vim'
brew 'zlib'
brew 'zsh'

# Dev/Cloud
brew 'awscli'
brew 'azure-cli'
brew 'terraform'
cask 'google-cloud-sdk'

# Dev/Containers
brew 'kubernetes-cli' # i.e. kubectl
brew 'kubernetes-helm'
cask 'docker'

# Dev/Python
# a) virtualenv way:
# PIP_REQUIRE_VIRTUALENV="false" pip install virtualenv
# PIP_REQUIRE_VIRTUALENV="false" pip3 install virtualenv
# virtualenv -p python <name> # or:
# virtualenv -p python3 <name>
# b) pyenv way:
# pyenv install <python version>
# pyenv virtualenv <python version> <name>
# brew 'python@2' # 2.7. <-- no longer supported
brew 'python' # 3
brew 'pyenv'
brew 'pyenv-virtualenv'

# Dev/Ruby
# https://github.com/rbenv/rbenv#command-reference
# rbenv init
# rbenv install <version>
# echo '<version>' > .ruby-version
# gem install bundler
# brew 'rbenv'

# Java 8 (JRE) <-- skip for now until needed
# cask 'homebrew/cask-versions/java8'
