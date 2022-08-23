eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Visual Studio Code (code)
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH

alias ll="ls -al" # List all files in current directory in long list format
alias la="ls -lha" # List all files colorized in long format, including dot files
alias ldir="ls -al | grep ^d" # List all directories in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias ut="uptime" # Computer uptime
alias resource="source ~/.zprofile"
alias gits="git status --porcelain"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# prompt definitions
# <purple>${userName}<reset> at <blue>${computerName}<reset> in <green>${filePath}<reset> [on ${branchName}] (if in git folder)
NEWLINE=$'\n'
autoload -U colors && colors
# Load version control information
autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true 
# zstyle ':vcs_info:git*' formats "on %{$fg[blue]%}%b%{$reset_color%}"
zstyle ':vcs_info:git*' formats "| %{$fg[blue]%}%s %{$reset_color%}%{$fg[cyan]%}%b%{$reset_color%} %{$fg[yellow]%}%m%u%c%{$reset_color%} "
precmd() {
  vcs_info
  setopt PROMPT_SUBST
  PS1='%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[blue]%}%m%{$reset_color%} in %{$fg[green]%}%d%{$reset_color%} ${vcs_info_msg_0_}${git_modified}${NEWLINE}% $ '
}


