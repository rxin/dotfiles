
alias updatectags="/usr/local/bin/ctags -f ~/tags -R ~/stuff/distributed-aligner/src/"

export PATH=$PATH:~/bin/

export PS1="\[\e[0;32m\]\w $ \[\e[m\]"

export CDPATH=".:~:~/stuff"
if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Load private bash file (for storing private keys, machine specific variables,
# etc)
if [ -f ~/.bash_profile_private ]; then
  source ~/.bash_profile_private
fi


