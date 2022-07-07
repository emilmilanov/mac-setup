# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# brew
binaries=(
  mackup
  vim
  node
  tmux
  ack
  tidy-html5
  reattach-to-user-namespace
)

echo "installing binaries..."
brew install ${binaries[@]}
brew cleanup

# Brew which has tap so I'm typing it separately
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

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
  raycast
  notion

# development
  macvim
  firefox
  imageoptim
  visual-studio-code

# non work
  transmission
  vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install --appdir="/Applications" --cask ${apps[@]}


# fonts
fonts=(
  font-input
)

# install fonts
echo "installing fonts..."
brew install ${fonts[@]} --cask

# cleanup
brew cleanup && brew cleanup

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Change zsh to default shell:
chsh -s /bin/zsh

# Base 16 shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
