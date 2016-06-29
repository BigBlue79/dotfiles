#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install alfred
brew cask install anki
brew cask install caffeine
brew cask install cheatsheet
brew cask install cyberduck
brew cask install dash
brew cask install dayone-cli
brew cask install dropbox
brew cask install evernote
brew cask install fantastical
brew cask install firefox-nightly
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install licecap
brew cask install macdown
brew cask install rescuetime
brew cask install slack
brew cask install spectacle
brew cask install sourcetree
brew cask install spotify
brew cask install sublime-text3
brew cask install the-unarchiver
brew cask install utorrent
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

ln -sf /opt/homebrew-cask/Caskroom/sublime-text3/3103/Sublime\ Text.app/Contents/SharedSupport/bin/subl  /usr/local/bin/subl

## Other installs to do manually - popclip, scapple
