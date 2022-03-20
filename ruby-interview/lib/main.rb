require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

loader = Zeitwerk::Loader.new
loader.push_dir(__dir__)
loader.setup

def add(a, b)
  a + b
end
