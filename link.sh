#!/bin/sh
BASEDIR=$( cd $(dirname $0) ; pwd -P )

if [ -z "$HOME" ]; then
    echo 'ERROR: Could not find $HOME'
    exit
fi

# Rename the existing configs
if grep -Fqi "ENVFILE" "$HOME/.zshrc"; then
    echo "WARN: Environment specific configs already configured"
else
    # Backup
    #cp $HOME/.zshrc $HOME/old.zshrc.$(date +%y%m%d-%H%m)
    #ZSH_ALIAS_PATH="$BASEDIR/zsh_alias"
    
    echo "\n# Environment specific configs" >> "$HOME/.zshrc"
    echo 'ENVFILE='"$BASEDIR"'/os.`uname`.sh' >> "$HOME/.zshrc"
    echo 'test -r "$ENVFILE" && source "$ENVFILE"' >> "$HOME/.zshrc"
    
    echo "Added environment specific configs to .zshrc"
fi

# Copy custom themes
ZSH_THEME_PATH="$HOME/.oh-my-zsh/custom/mkko.zsh-theme"
if [ -r $ZSH_THEME_PATH ]; then
    echo 'WARN: ZSH theme already linked'
else
    if [ -z "$HOME/.oh-my-zsh/custom" ]; then
        echo 'ERROR: could not find zsh themes'
    else
        ln -s $BASEDIR/mkko.zsh-theme $HOME/.oh-my-zsh/custom/mkko.zsh-theme && \
        echo "Linked custom theme to oh-my-zsh"
    fi
fi

# Set up git aliases
# TODO: We could do much better here.
if grep -Fxqi "[include]" "$HOME/.gitconfig"
then
    echo "WARN: Skipping .gitconfig; was it already linked?"
else
    echo "[include]" >> "$HOME/.gitconfig"
    echo "\tpath = $BASEDIR/gitconfig_alias" >> "$HOME/.gitconfig"

    echo "Included Git aliases to .gitconfig"
fi

if [ -r "$HOME/.emacs" ]; then
    echo 'WARN: .emacs exists, skipping'
else
    ln -s $BASEDIR/emacs $HOME/.emacs
    echo "Linked .emacs"
fi
    
