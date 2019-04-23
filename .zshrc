# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/iammark/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=7

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# pure prompt
autoload -U promptinit; promptinit
prompt pure

eval "$(rbenv init -)"

export PATH="/Users/iammark/.deno/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/Users/iammark/mongodb/bin:$PATH"
export PATH="/Users/iammark/anaconda3/bin:$PATH"

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

export GOPATH="$HOME/Go"

export LC_CTYPE=en_US.UTF-8

alias cra='create-react-app'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/iammark/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/iammark/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/iammark/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/iammark/google-cloud-sdk/completion.zsh.inc'; fi

function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}
