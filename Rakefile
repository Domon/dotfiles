def link_file(filename, destination_filename = ".#{filename}")
  `ln -sv ~/.dotfiles/#{filename} ~/#{destination_filename}`
end

task :default => [:install]

task :install do
  link_file 'Brewfile', 'Brewfile'
  link_file 'ctags'
  link_file 'config.fish', '.config/fish/config.fish'
  link_file 'editrc'
  link_file 'fish_plugins', '.config/fish/fish_plugins'
  link_file 'gemrc'
  link_file 'gitattributes'
  link_file 'gitconfig'
  link_file 'gitignore_global'
  link_file 'inputrc'
  link_file 'my.cnf', '.my.cnf'
  link_file 'powconfig'
  link_file 'pryrc'
  link_file 'default-gems', '.rbenv/default-gems'
  link_file 'default-gems', '.default-gems'
  link_file 'rubocop.yml'
  link_file 'spacemacs'
  link_file 'tmux.conf'
  link_file 'zshrc'
end
