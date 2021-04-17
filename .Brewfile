# Based on:
# https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
# https://danielmiessler.com/blog/first-10-things-new-mac/
# https://hackercodex.com/guide/python-development-environment-on-mac-osx/
# See homebrew-bundle:
# https://github.com/Homebrew/homebrew-bundle
# forked from gihub: pndurette/mac-setup

# Necessary
brew 'git'
brew '
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
cask 'avira-antivirus'
cask 'discord'
cask 'dropbox'
cask 'firefox'
cask 'google-chrome'
cask 'idrive'
cask 'microsoft-office'
cask 'obs'
cask 'onedrive'
cask 'rectangle'
cask 'slack'
cask 'spotify'
cask 'vlc'
cask 'zoom'

# Cask dev apps
cask 'postman'
cask 'iterm2'
cask 'sublime-text'
cask 'typora'

# Make macOS more linux-y
brew 'findutils'
brew 'gnu-sed'
brew 'gnu-tar'
brew 'gnu-which'
brew 'gnutls'
brew 'grep'
brew 'coreutils'
brew 'binutils'
brew 'diffutils'
brew 'gzip'
brew 'watch'
brew 'tmux'
brew 'wget'
brew 'nmap'
brew 'gpg'
brew 'htop'
brew 'less'
brew 'sed'
brew 'telnet'
brew 'youtube-dl'

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
brew 'getantibody/tap/antibody'

# Dev/Cloud
brew 'awscli'
cask 'google-cloud-sdk'
brew 'azure-cli'
brew 'terraform'

# Dev/Apps
cask 'visual-studio-code'

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
brew 'python@2' # 2.7
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

# Java 8 (JRE)
cask 'homebrew/cask-versions/java8'
