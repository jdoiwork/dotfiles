# echo .bashrc

eval "$(rbenv init -)"

# completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/.git-completion.bash

eval "$(stack --bash-completion-script stack)"

# alias
alias show-path="echo $PATH | gsed -e 's/:/\\n/g'"
