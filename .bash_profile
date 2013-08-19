
# Some common aliases for git.
alias gs="git status"
alias gd="git diff"
alias gdt="git difftool"
alias gdw="git whatchanged -p --word-diff --color=always | less -r"

# editors
alias s="subl"
alias m="mvim"
alias v="vim"

export MAVEN_OPTS="-Xmx1g -XX:MaxPermSize=200m"

# Make common commands colorful!
export CLICOLOR=1
alias grep="grep --color"

# color shell prompt
export PS1="\[\e[0;31m\]\u \[\e[0;37m\]@ \[\e[0;31m\]\h \[\e[0;37m\]: \[\e[0;36m\]\w \[\e[0m\]\n> "

# Make my terminal colorful.
set -o physical
export TERM=xterm-256color
shopt -s checkwinsize

# Use bash for shell.
export SHELL=/bin/bash

# Find file that matches the name and open it with (mac) vim.
mfv() {
  mvim -O $(find . -name "*$@*")
}
fv() {
  vim -O $(find . -name "*$@*")
}
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


function cds {
  if [ -d ./core ]; then
    cd ./core/src/main/scala/spark
  else
    cd ./src/main/scala/shark
  fi
}

function cdt {
  if [ -d ./core ]; then
    cd ./core/src/test/scala/spark
  else
    cd ./src/test/scala/shark
  fi
}

function cdg {
  if [ -d ./graph/src/main/scala/spark/graph ]; then
    cd ./graph/src/main/scala/spark/graph
  else
    cd /scratch/rxin/spark-graph
  fi
}

function setuplocalhosts {
  sudo ifconfig lo0 alias 127.100.0.1
  sudo ifconfig lo0 alias 127.100.0.2
  sudo ifconfig lo0 alias 127.100.0.3
  sudo ifconfig lo0 alias 127.100.0.4
}

