echo .bash_profile
# 
# PATH=/usr/local/bin:/usr/local/sbin:"$PATH"

export PATH="$HOME/.rbenv/shims:$HOME/.local/bin:$PATH"
# export PATH="$HOME/.rbenv/shims:$HOME/.local/bin:$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"

eval "$(rbenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/.git-completion.bash

export PATH="/usr/local/sbin:$PATH"

eval "$(stack --bash-completion-script stack)"

if [ -e /Users/jun/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jun/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

. /Users/jun/.nix-profile/etc/profile.d/nix.sh

