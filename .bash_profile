
# Some common aliases for git.
alias gs="git status"
alias gd="git diff"

alias cdspark="cd /scratch/rxin/spark"

# editors
alias s="subl"

# switching Python 3
alias py3k="source activate py3k"

export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M"

# Make common commands colorful!
export CLICOLOR=1
alias grep="grep --color"

# color shell prompt (setup git branch information if on Mac OS X)
if [ "$(uname)" == "Darwin" ]; then
  #source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
  export PS1="\[\e[0;31m\]\u \[\e[0;37m\]@ \[\e[0;31m\]\h \[\e[0;37m\]: \[\e[0;36m\]\w\[\e[0m\]\$(__git_ps1) \n> "
else
  source /etc/bash_completion.d/git
  export PS1="\[\e[0;31m\]\u \[\e[0;37m\]@ \[\e[0;31m\]\h \[\e[0;37m\]: \[\e[0;36m\]\w \[\e[0m\]\n> "
fi

# Make my terminal colorful.
set -o physical
export TERM=xterm-256color
shopt -s checkwinsize

# Use bash for shell.
export SHELL=/bin/bash

fs() {
  subl $(find . -name "*$@*")
}

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
