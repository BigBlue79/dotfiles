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

#git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#git flow bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

#history
HISTIGNORE='\&:fg:bg:pwd:cd ..:cd ~-:cd -:cd:jobs:set -x'
HISTIGNORE=${HISTIGNORE}':%1:%2:shutdown*'
export HISTIGNORE

#rbenv shimmy
eval "$(rbenv init -)"

# exercism autocomplete
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

# added by Anaconda3 4.4.0 installer
export PATH="/Users/adam/anaconda/bin:$PATH"

# fuzzy-find + ripgrep
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
