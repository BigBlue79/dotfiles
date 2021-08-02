for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# init z https://github.com/rupa/z
. `brew --prefix`/etc/profile.d/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

#homebrew, etc
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME="/usr/local/opt/android-sdk"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_AVD_HOME="$HOME/.android/avd"

# More bash completion
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

 [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

#history
HISTIGNORE=ignoreboth
HISTIGNORE='\&:fg:bg:pwd:cd ..:cd ~-:cd -:cd:jobs:set -x'
HISTIGNORE=${HISTIGNORE}':%1:%2:shutdown*'
export HISTIGNORE

#rbenv shims
eval "$(rbenv init -)"

export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

#nodenv shims
eval "$(nodenv init -)"

# exercism autocomplete
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

# fuzzy-find + ripgrep
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'

# export GOPATH=$HOME/code/go
# export PATH=$PATH:$GO /bin

export KIOSK_HOST='adam-kiosk.honkdev.com'
export BANANA_KEYSTORE_PATH='~/code/honk/honkmobile.keystore'

# Add the following to your .bash_profile or .bashrc file in order to switch to a different iTerm profile during an ssh session.
# This same code could be re-purposed for any command, not just ssh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias dcd="docker-compose -f docker-compose.yml -f docker/environments/docker-compose.development.yml"

export VIMCONFIG=~/.vim
export VIMDATA=~/.vim

export PATH="$HOME/.cargo/bin:$PATH"

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
