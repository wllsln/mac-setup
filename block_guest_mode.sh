# NOT YET a script that is runnable, need to modify
# These don't work with existing group policies... :(
# https://www.techlockdown.com/guides/disable-incognito-mode

defaults write com.google.Chrome BrowserGuestModeEnabled -bool false
defaults write com.google.Chrome IncognitoModeAvailability -integer 1
defaults write com.google.Chrome BrowserAddPersonEnabled -bool false

defaults write com.microsoft.Edge.plist BrowserGuestModeEnabled -bool false
defaults write com.microsoft.Edge.plist InPrivateModeAvailability -int 1
defaults write com.microsoft.Edge.plist BrowserAddProfileEnabled -bool false

# https://connect.mozilla.org/t5/discussions/disable-private-browsing/m-p/78476
mkdir -p /Applications/Firefox.app/Contents/Resources/distribution
cd /Applications/Firefox.app/Contents/Resources/distribution
touch policies.json
cat << EOF >> policies.json
{
  "policies": {
    "DisablePrivateBrowsing": true
  }
}
EOF
