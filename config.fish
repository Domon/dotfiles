# vi: filetype=fish

# Aliases
alias cp      'cp -i'
alias mv      'mv -i'
alias rm      'rm -i'
alias ducks   'du -cks * | sort -rn | head -11'
alias vi      'mvim'
alias vim     'mvim -v'
alias vimdiff 'mvimdiff -v'

# Abbreviations
abbr be     'bundle exec'
abbr bi     'bundle install --jobs 4 --verbose'
abbr bil    'bundle install --jobs 4 --verbose --local'
abbr bu     'bundle update --jobs 4'
abbr bru    'brew update --verbose'
abbr dc     'docker-compose'
abbr dcb    'docker-compose build'
abbr dcr    'docker-compose run'
abbr dcu    'docker-compose up'
abbr ga     'git add'
abbr gb     'git branch'
abbr gc     'git commit -v'
abbr gca    'git commit -av'
abbr gco    'git checkout'
abbr gcm    'git checkout master'
abbr gcl    'git clone'
abbr gd     'git diff'
abbr gdf    'git diff'
abbr gds    'git diff --staged'
abbr gdfw   'git diff --color-words'
abbr gdsw   'git diff --staged --color-words'
abbr gg     'git grep'
abbr ggpush 'git push origin (git_branch_name)'
abbr ggs    'git-grep-sed'
abbr gl     'git pull'
abbr grbm   'git rebase -i master'
abbr grbc   'git rebase --continue'
abbr grt    'cd (git_repository_root)'
abbr rc     'bin/rails console'
abbr rs     'bin/rails server'

# Functions
function g --wraps git --description 'git or git status'
  if count $argv > /dev/null
    git $argv
  else
    git status -s
  end
end

# Editor
export EDITOR="mvim -m"

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# My executables
set -x PATH $HOME/bin $PATH

# Go workspace
export GOPATH=$HOME/.go

# Go-installed binaries
set -x PATH $GOPATH/bin $PATH

# iTerm2 shell integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# MySQL 5.6
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths
