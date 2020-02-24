# Setting up new mac process

- install OS X
- Update OS X

## Os X defaults

Download: https://github.com/emilmilanov/mac-setup/archive/master.zip

`sh ~/Downloads/mac-setup-master/osx-bootstrap.sh`


- logout
- login


## Manual setting up of os X preferences

- general > appearance > graphite
- dock > size > small
- keyboard > key repeat > fastest
- keyboard > delay until repeat > slow
- keyboard > modifier keys > caps lock > no action
- keyboard > shortcuts > spotlight > none
- keyboard > shortcuts > mission control > switch to desktop 1 check
- sharing > computer name > Machinery
- accessibility > mouse & trackpad > trackpad > enable dragging > three finger drag
- trackpad > tracking speed to 80%
- mouse > tracking speed > 80%
- mouse > secondary click > check
- security & privacy > general > allow apps from anywhere


## Installing mac apps

`sh ~/Downloads/mac-setup-master/osx-apps-bootstrap.sh`

## mackup restore

`sh ~/Downloads/mac-setup-master/osx-mackup.sh`

- users & groups > login items > add launchbar
- users & groups > login items > add keyboard maestro
- users & groups > login items > betterTouchTool


## Launch apps for accessibility reasons

- launchbar
- km
- karabiner
- seil
- bartender
- security & privacy > privacy > accessibility > bettertouch tool, karabiner, seil, keyboard maestro engine, launchbar applescript runner, launchbar


# App settings

- launch google chrome, sign in and set up sync
- finder > settings > general > new window show google drive folder
- bettertouchtool - import settings file from mackup
- launchbar - add folder to monitor: OPT with brew cask apps
- km - settings > general > Launch engine at login


## Install appstore apps

- Icon Slate
- Inboard - make images backup
- soulver
- codebox

Launch apps above which require login.

- 1password > advanced > enable integration with third party apps


## Setting up sketch plugins

Run sketch toolbox.

Install:

- Sync plugins
- Cemre Sketch plugins
- Sketch dynamic button
- sketch upload to cloudApp

## Set up default open with app
.txt, .md - FoldingText
.avi, .mp4 -vlc


## Install adobe

- cs6
- lightroom


### Set up finder sidebar:

![Finder screenshot](http://cl.ly/dvO5/Image%202015-11-26%20at%202.29.30%20PM.png)


# Mackup restore on secondary computers

`sh ~/Library/Mobile\ Documents/com~apple~CloudDocs/Mackup/shell/mackup-restore-on-secondary-computers.sh`

# Periodic updates

## Update zsh
`cd .oh-my-zsh && git stash && upgrade_oh_my_zsh`

## Vundle plugins update
`vim -c VundleUpdate -c quitall`



## Open questions:

- ssh data is not covered by syncing
- periodicaly: brew update && brew upgrade && brew cask update && brew cleanup && brew cask cleanup
This is candidate for periodic maintennce script.

- Key repeat bug for vim mode in folding text
`defaults write com.foldingtext.FoldingText ApplePressAndHoldEnabled -bool false`


