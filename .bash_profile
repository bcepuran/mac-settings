export ANDROID_HOME="/Users/bcepuran/Library/Android/sdk"

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
PATH=$PATH:/usr/local/WordNet-3.0/bin
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias clr="clear" # Clear your terminal screen
alias flush="sudo discoveryutil udnsflushcaches" # Flush DNS (Yosemite)
alias flush="killall -HUP mDNSResponder" # Flush DNS (Mavericks, Mountain Lion, Lion)
alias flush="dscacheutil -flushcache" # Flush DNS (Snow Leopard, Leopard)
alias ip="curl icanhazip.com" # Your public IP address
alias ll="ls -al" # List all files in current directory in long list format
alias ldir="ls -al | grep ^d" # List all directories in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias ut="uptime" # Computer uptime
alias resource="source ~/.bash_profile"
alias geth="./bin/geth"
alias gits="git status --porcelain"

alias subl="/Applications/Sublime\ Text\.app/Contents/SharedSupport/bin/subl"

alias mono="/Library/Frameworks/Mono.framework/Versions/Current/bin/mono"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
