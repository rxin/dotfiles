
# Enable the default zsh completions
autoload -Uz compinit && compinit

# Some common aliases
alias ll="ls -ltrha" # all files, list, sort by last modified time, size by unit
alias ls='ls -F' # / for dir, * executable, ... see man ls
alias gs="git status"
alias gd="git diff"

# Sublime Text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin":$PATH
alias s="subl"
export EDITOR='subl -w'

# Shortcut for opening all files whose names include the first parameter
fs() {
  subl $(find . -name "*$@*")
}


export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M"

# Make common commands colorful!
export CLICOLOR=1
# export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
alias grep="grep --color"

# Chase symlinks
set symlinks = chase

############################## prompt setting begin ##############################
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt
setopt PROMPT_SUBST
HOSTNAME=$(hostname)

# username in red @ hostname in red : current dir (git info)\n
PROMPT='%F{red}%n%f @ %F{red}$HOSTNAME%f : %F{cyan}${PWD/#$HOME/~}%f ${vcs_info_msg_0_}'$'\n''> '

##############################  prompt setting end  ##############################

[ -f .zshrc_private ] && source .zshrc_private
