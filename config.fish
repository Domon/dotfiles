# Aliases
alias cp     'cp -i'
alias mv     'mv -i'
alias rm     'rm -i'
alias rename 'rename -i'
alias ducks  'du -cks * | sort -rn | head -11'
alias vi     'mvim'
alias vim    'mvim -v'

# Abbreviations
abbr ga     'git add'
abbr gc     'git commit -v'
abbr gco    'git checkout'
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

# My executables
set -x PATH $HOME/bin $PATH
