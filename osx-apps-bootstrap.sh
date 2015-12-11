# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# brew
binaries=(
  caskroom/cask/brew-cask
  mackup
  tmux
  ack
  vim
)

echo "installing binaries..."
brew install ${binaries[@]}
brew cleanup

# Brew which has tap so I'm typing it separately
brew tap caskroom/versions
brew tap caskroom/fonts

# Brew cask Apps
apps=(

# System
  1password
  launchbar
  keyboard-maestro
  totalfinder
  dropbox
  bettertouchtool
  karabiner
  seil
  google-chrome
  the-unarchiver
  bartender
  appcleaner
  easyfind

# development
  iterm2-nightly
  macvim
  codekit
  firefox
  transmit
  imageoptim
  sketch-toolbox

# communication
  slack
  gmail-notifier
  skype

# services
  harvest

# toys
  keyboardcleantool
  caffeine
  tunnelbear

# non work
  utorrent
  airfoil
  vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}


# fonts
fonts=(
  font-input
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# cleanup
brew cleanup && brew cask cleanup

# After all this:
# - open dropbox and sync
# - copy Dropbox/Apps/Mackup/.mackup.cfg to user folder
# -  mackup restore
# Change zsh to default shell:
chsh -s /bin/zsh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
# - install appstore apps
# - run bettertouchtool
# - system settings > keyboard > modifier keys > set caps lock to no action
# - run sail
# - open km and select macros to sync
# - Settings > keyboard > shortcuts > Mission control > switch to desktop 1
# - Set dock to the right
# - 20) Change finder home to dropbox folder ???

# 21) Alfred
#	b) enter password for alfred
#	c) Set up color scheme
#	d) Sync - enable to sync to app folder:
#		1) quit alfred
#		2) in iterm type:
	defaults write com.runningwithcrayons.Alfred-Preferences dropbox.allowappsfolder -bool TRUE
#		3) Launch alfred
#		4) Set up sync
