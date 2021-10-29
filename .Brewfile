# Based on:
# https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
# https://danielmiessler.com/blog/first-10-things-new-mac/
# https://hackercodex.com/guide/python-development-environment-on-mac-osx/
# See homebrew-bundle:
# https://github.com/Homebrew/homebrew-bundle
# forked from gihub: pndurette/mac-setup

# Necessary
brew 'git'
brew 'mas'

# Command-Line Mac App Store
# NB: 'brew install mas && mas signin <email>'
mas 'Amphetamine', id: 937984704
mas 'Display Menu', id: 549083868
mas 'Pages', id: 409201541
mas 'Numbers', id: 409203825
mas 'Keynote', id: 409183694
mas "Xcode", id: 497799835

# Cask macOS apps
cask 'adobe-creative-cloud'
# cask 'avira-antivirus'
cask 'discord'
cask 'dropbox'
cask 'firefox'
cask 'google-chrome'
# cask 'idrive'
cask 'lastpass'
# cask 'microsoft-office'
# cask 'obs'
cask 'rectangle'
cask 'slack'
cask 'spotify'
cask 'vlc'
cask 'the-unarchiver'
cask 'via'
cask 'zoom'

# Cask dev apps
cask 'postman'
cask 'iterm2'
cask 'sublime-text'
cask 'typora'
cask 'visual-studio-code'

# Fonts
tap 'homebrew/cask-fonts'
cask 'font-hack-nerd-font'

# Make macOS more linux-y
brew 'binutils'
brew 'coreutils'
brew 'diffutils'
brew 'findutils'
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
brew 'bash'
brew 'git'
brew 'jq'
brew 'make'
brew 'automake'
brew 'nano'
brew 'openssl'
brew 'rpm'
brew 'tcpdump'
brew 'whois'
brew 'vim'
brew 'zlib'
brew 'zsh'
brew 'antibody'
brew 'peco'

# Dev/Cloud
brew 'awscli'
cask 'google-cloud-sdk'
brew 'azure-cli'
brew 'terraform'

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
brew 'rbenv'

# Java 8 (JRE) <-- skip for now until needed
# cask 'homebrew/cask-versions/java8'
