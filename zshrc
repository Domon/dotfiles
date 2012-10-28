# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
plugins=(bundler gem git heroku brew pow powder rails3 ruby rvm)
source $ZSH/oh-my-zsh.sh

# PATH
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Homebrew
export PATH=/usr/local/bin:$PATH

# Zsh
export HISTSIZE=1000000
export SAVEHIST=1000000
export HIST_EXPIRE_DUPS_FIRST=true  # removes duplicates when history file fills up

# (Homebrew installed) Node.js
export NODE_PATH=/usr/local/lib/node_modules

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias ducks='du -cks * | sort -rn | head -11'
alias g="git status"
alias vi="mvim"

# z
. `brew --prefix`/etc/profile.d/z.sh
