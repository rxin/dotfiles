
alias updatectags="/usr/local/bin/ctags -f ~/tags -R ~/stuff/shark/src/"
alias grep="grep --color"

alias gs="git status"
alias gd="git diff"
alias gdt="git difftool"

export CLICOLOR=1
export PS1="\[\e[0;32m\]\w $ \[\e[m\]"

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"
export HADOOP_INSTALL="/Users/rxin/Documents/shark/hadoop-0.20.204.0"
export HADOOP_HOME="/Users/rxin/Documents/shark/hadoop-0.20.204.0"
export PATH=$HIVE_HOME/bin:$PATH:~/bin

alias cdspark="cd ~/Documents/shark/spark"
alias cdshark="cd ~/Documents/shark/shark"
alias cds="cd ~/Documents/shark/shark"
alias cssharksrc="cd ~/Documents/shark/shark/src/main/scala/shark"
alias cdss="cd ~/Documents/shark/shark/src/main/scala/shark"
alias cdhive="cd /Users/rxin/Documents/shark/hive"

set -o physical  
export TERM=xterm-256color
shopt -s checkwinsize

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


