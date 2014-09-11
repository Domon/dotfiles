# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
DISABLE_CORRECTION="true"
plugins=(bundler gem git heroku brew osx pow powder rails vagrant zeus zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Zsh
HISTSIZE=1000000
SAVEHIST=1000000
HIST_EXPIRE_DUPS_FIRST=true  # removes duplicates when history file fills up
REPORTTIME=1                 # report time for commands running longer than 1s

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias ducks='du -cks * | sort -rn | head -11'
alias vi="mvim"
alias vim="mvim -v"
alias gdf="git diff"
alias gds="git diff --staged"
alias gdfw="git diff --color-words"
alias gdsw="git diff --staged --color-words"
alias gg="git grep"
alias ggs="git-grep-sed"
alias ios-simulator="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport"

# Functions
unalias g
function g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status -s
  fi
}

# Editor
export EDITOR="mvim -v"

# PATH
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Postgres.app
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

# Racket executables
export PATH=/Applications/Racket/bin:$PATH

# Go workspace
export GOPATH=$HOME/.go

# Go-installed binaries
export PATH=$GOPATH/bin:$PATH

# Node.js modules
export NODE_PATH=/usr/local/lib/node_modules

# npm-installed binaries
export PATH=/usr/local/share/npm/bin:$PATH

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# My executables
export PATH=$HOME/bin:$PATH

# z
. `brew --prefix`/etc/profile.d/z.sh
