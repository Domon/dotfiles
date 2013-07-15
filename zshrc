# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
plugins=(bundler gem git heroku brew osx pow powder rails3 ruby zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Zsh
export HISTSIZE=1000000
export SAVEHIST=1000000
export HIST_EXPIRE_DUPS_FIRST=true  # removes duplicates when history file fills up

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias ducks='du -cks * | sort -rn | head -11'
alias vi="mvim"
alias g="git status -s"
alias gdf="git diff"
alias gds="git diff --staged"
alias gg="git grep"
alias ios-simulator="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"

# PATH
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Postgres.app
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH

# Node.js modules
export NODE_PATH=/usr/local/lib/node_modules

# npm-installed binaries
export PATH=/usr/local/share/npm/bin:$PATH

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# My executables
export PATH=$HOME/bin:$PATH

# z
. `brew --prefix`/etc/profile.d/z.sh
