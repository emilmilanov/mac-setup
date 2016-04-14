# Setting up new mac process

- install OS X
- Update OS X

## Os X defaults

`sh ~/Library/Mobile\ Documents/com~apple~CloudDocs/Mackup/shell/osx-bootstrap.sh`

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

`sh ~/Library/Mobile\ Documents/com~apple~CloudDocs/Mackup/shell/osx-apps-bootstrap.sh`


## mackup restore

`sh ~/Library/Mobile\ Documents/com~apple~CloudDocs/Mackup/shell/osx-mackup.sh`

- users & groups > login items > add launchbar
- users & groups > login items > add keyboard maestro
- users & groups > login items > betterTouchTool ???


## Launch apps for accessibility reasons

- launchbar
- km
- karabiner
- seil
- bartender
- security & privacy > privacy > accessibility > dropbox, bettertouch tool, karabiner, seil, keyboard maestro engine, launchbar applescript runner, launchbar


# App settings

- launch dropbox - login, run on startup set up
- launch google chrome, sign in and set up sync
- finder > settings > general > new window show dropbox folder
- bettertouchtool - import settings file from mackup
- launchbar - add folder to monitor: OPT with brew cask apps
- km - settings > general > Launch engine at login


## Install appstore apps

- Day One
- FoldingText
- Icon Slate
- Inboard - make images backup
- soulver
- Wunderlist
- Cloudapp
- codebox
- pages
- numbers
- Airmail
- Unclutter

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

