# Aliases
alias cp     'cp -i'
alias mv     'mv -i'
alias rm     'rm -i'
alias rename 'rename -i'
alias ducks  'du -cks * | sort -rn | head -11'
alias vi     'mvim'
alias vim    'mvim -v'

# Abbreviations
abbr be     'bundle exec'
abbr bi     'bundle install --verbose'
abbr bil    'bundle install --verbose --local'
abbr ga     'git add'
abbr gc     'git commit -v'
abbr gca    'git commit --amend'
abbr gco    'git checkout'
abbr gcm    'git checkout master'
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

# Functions
function g --wraps git --description 'git or git status'
  if count $argv > /dev/null
    git $argv
  else
    git status -s
  end
end

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# My executables
set -x PATH $HOME/bin $PATH

# iTerm2 shell integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
