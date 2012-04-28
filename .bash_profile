

# Some common aliases for git.
alias gs="git status"
alias gd="git diff"
alias gdt="git difftool"

# Make common commands colorful!
export CLICOLOR=1
alias grep="grep --color"

# color shell prompt
# Also see http://jonisalonen.com/2012/your-bash-prompt-needs-this/
export PS1="\[\e[0;32m\]\w $ \[\e[m\]"
export PS1="\[\033[G\]$PS1"

# Make my terminal colorful.
set -o physical
export TERM=xterm-256color
shopt -s checkwinsize

# Use bash for shell.
export SHELL=/bin/bash

# export CDPATH=".:~"
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


