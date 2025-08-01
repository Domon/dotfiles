# vi: filetype=fish

# Aliases
alias claude  "$HOME/.claude/local/claude"
alias cp      'cp -i'
alias mv      'mv -i'
alias rm      'rm -i'
alias ducks   'du -cks * | sort -rn | head -11'
alias vi      'mvim'
alias vim     'mvim -v'
alias vimdiff 'mvimdiff -v'

# Abbreviations
abbr be     'bundle exec'
abbr bi     'bundle install --jobs 8 --verbose'
abbr bil    'bundle install --jobs 8 --verbose --local'
abbr bu     'bundle update --jobs 8'
abbr bru    'brew update --verbose'
abbr brs    'brew search'
abbr bri    'brew install'
abbr brci   'brew cask install'
abbr c      'claude --verbose --dangerously-skip-permissions'
abbr cs     'claude --verbose --dangerously-skip-permissions --model sonnet'
abbr co     'claude --verbose --dangerously-skip-permissions --model opus'
abbr cr     'claude --verbose --dangerously-skip-permissions --resume'
abbr cld    'claude --verbose --dangerously-skip-permissions --debug'
abbr dc     'docker-compose'
abbr dcb    'docker-compose build'
abbr dcr    'docker-compose run'
abbr dcu    'docker-compose up'
abbr ga     'git add'
abbr gb     'git branch'
abbr gc     'git commit -v'
abbr gca    'git commit -av'
abbr gco    'git checkout'
abbr gcm    'git checkout (git_default_branch_name)'
abbr gcl    'git clone'
abbr gcli   'gemini --yolo --show_memory_usage'
abbr gd     'git diff'
abbr gdf    'git diff'
abbr gds    'git diff --staged'
abbr gdfw   'git diff --color-words'
abbr gdsw   'git diff --staged --color-words'
abbr gg     'git grep'
abbr ggpush 'git push origin (git_current_branch_name)'
abbr ggs    'git-grep-sed'
abbr gl     'git pull'
abbr grbm   'git rebase -i (git_default_branch_name)'
abbr grbc   'git rebase --continue'
abbr grt    'cd (git_repository_root)'
abbr nv     'neovide --fork'
abbr rc     'bin/rails console'
abbr rs     'bin/rails server'
abbr rsp    'bundle exec rspec'
# abbr trash  'command trash -v'
abbr yt     'yt-dlp --output "%(channel,uploader)s/%(release_date>%Y-%m-%d,upload_date>%Y-%m-%d)s %(title).100s/%(title).100s-%(id)s.%(ext)s" --compat-options filename,format-spec,multistreams --console-title --verbose --all-subs --write-annotations --write-comments --write-description --write-info-json --write-thumbnail'

# Functions
function eg --description 'Convert images to HEIC and open them with Eagle'
  for original_path in $argv
    set --local heic_path (path change-extension heic $original_path)

    magick $original_path $heic_path
    open -a /Applications/Eagle.app $heic_path
  end
end

function g --wraps git --description 'git or git status'
  if count $argv > /dev/null
    git $argv
  else
    git status -s
  end
end

function git_default_branch_name --description 'Get the default branch name of the current git repository'
  # Run `git remote set-head origin --auto` if the output is incorrect
  git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'
end

function git_current_branch_name --description 'Get the current branch name'
  git symbolic-ref --short HEAD 2>/dev/null
end

function git_repository_root --description 'Get the root path of the current git repository'
  git rev-parse --show-toplevel
end

function txz --description 'Create a txz file from a directory'
  if test (count $argv) -eq 1
    set -l dir (string replace --regex '/+$' '' $argv[1])

    tar -cf - $dir | pv --size (math (env BLOCKSIZE=1024 du -s $dir | cut -f1) '*' 1024) --progress --timer --rate --bytes | xz --threads=0 > $dir.txz
  else
    echo 'Usage: txz DIRECTORY'
  end
end

# Editor
export EDITOR="mvim -m"

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# My executables
set -x PATH $HOME/bin $PATH

# AWS Vault
export AWS_VAULT_BACKEND=pass

# Doom Emacs
set -x PATH $HOME/.emacs.d/bin $PATH

# Go workspace
export GOPATH=$HOME/.go

# Go-installed binaries
set -x PATH $GOPATH/bin $PATH

# Homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# iTerm2 shell integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# mise
test -e {$HOME}/.local/bin/mise; and {$HOME}/.local/bin/mise activate fish | source

# MySQL 5.6
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths
