# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.bash"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Bind ctrl-p on command-line to open fzf and open the selected file in vim
bind -x '"\C-p": vim $(fzf);'
