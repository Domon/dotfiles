require 'pry'

def link_file(filename)
  `ln -sv ~/.dotfiles/#{filename} ~/.#{filename}`
end

task :default => [:install]

task :install do
  link_file 'gemrc'
  link_file 'gitconfig'
  link_file 'gitignore_global'
  link_file 'tmux.conf'
  link_file 'zshrc'
end
