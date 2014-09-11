# vim: set ft=ruby:

Pry.config.editor = "mvim -v"

# Fix for loading rails console methods in zues console
# (See https://github.com/burke/zeus/issues/466.)
if Kernel.const_defined?(:Rails) && Rails.env
  require File.join(Rails.root,"config","environment")
  require 'rails/console/app'
  require 'rails/console/helpers'

  extend Rails::ConsoleMethods
end
