brew update

brew install ack
brew install ag
brew install bash
brew install fzf
brew install git
brew install git-open
brew install imagemagick --with-webp
brew install lastpass-cli
brew install mitmproxy
brew install node
brew install pow
brew install rbenv
brew install redis
brew install ripgrep
brew install tmux
brew install trash
brew install tree
brew install v8
brew install wget --with-iri
brew install wifi-password
brew install z

brew tap homebrew/versions
brew install bash-completion2

## Install ruby-build as an rbenv plugin
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

## Standalone imgcat script
brew tap eddieantonio/eddieantonio
brew install imgcat

brew cleanup
