
# Some common aliases for git
alias gs="git status"
alias gd="git diff"

# Shortcut for VS Code
alias s="code"

# Shortcut for opening all files whose names include the first parameter
fs() {
  code $(find . -name "*$@*")
}

export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M"

# Make common commands colorful!
export CLICOLOR=1
alias grep="grep --color"

# Make my terminal colorful.
set -o physical
export TERM=xterm-256color

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
