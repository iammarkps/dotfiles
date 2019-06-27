# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

export UPDATE_ZSH_DAYS=7

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# pure prompt
autoload -U promptinit
promptinit
prompt pure

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

eval "$(rbenv init -)"

export ZSH_CONFIG="$HOME/.dotfiles"

export GOPATH="$HOME/Go"

export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/mongodb/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

# export PATH="$HOME/anaconda3/bin:$PATH"  # commented out by conda initialize

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias cra='create-react-app'
alias resetaudio='sudo killall coreaudiod'
alias ssh='kitty +kitten ssh'
alias icat='kitty +kitten icat'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/iammark/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/iammark/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/iammark/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/iammark/google-cloud-sdk/completion.zsh.inc'; fi

source $ZSH_CONFIG/function.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/iammark/anaconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/iammark/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/iammark/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/iammark/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
