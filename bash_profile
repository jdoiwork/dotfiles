echo .bash_profile
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PATH="$HOME/.rbenv/shims:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.composer/vendor/bin:$PATH"

export PATH

eval "$(rbenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/.git-completion.bash


eval "$(stack --bash-completion-script stack)"

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then
  . $HOME/.nix-profile/etc/profile.d/nix.sh;
fi # added by Nix installer

alias show-path="echo $PATH | gsed -e 's/:/\\n/g'"
