#!/usr/bin/env bash

source "utilities.sh"

# Link configurations
for config in zsh kitty; do
    link_config $config
done

# Link .gitconfig
link_file "git/gitconfig" ~/.gitconfig

# Link SSH config
mkdir -p ~/.ssh
link_file "ssh/config" ~/.ssh/config

# Link pygments themes for IPython
function link_pygments_theme() {
    echo "Linking Pygments Theme: $1"

    link_file "ipython/profile_default/$1.py" "/usr/local/lib/python3.7/site-packages/pygments/styles/"
}

link_pygments_theme awesome
link_pygments_theme dracula
