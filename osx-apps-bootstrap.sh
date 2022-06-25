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
  tidy-html5
  node
  reattach-to-user-namespace
  switchaudio-osx
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
  karabiner-elements
  hammerspoon
  google-chrome
  bartender
  appcleaner
  resolutionator
  iterm2
  figma
  zoom
  meetingbar

# development
  macvim
  firefox
  imageoptim

# non work
  utorrent
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

# Change zsh to default shell:
chsh -s /bin/zsh

# Base 16 shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
