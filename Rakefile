#!/usr/bin/env ruby
#vim: set ft=ruby

require 'rake'
require 'fileutils'
Dir.glob("./tasks/*.rake").each { |r| load r}


desc 'Install'
task :install => [] do
  puts "=== Instalando 'paulopatto/.dotfiles' ===="
end



private
def run(cmd)
  puts "[Running] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end

def number_of_cores
  cores = mac? ? run(%{ sysctl -n hw.ncpu }) : run(%{ nproc })
  cores.to_i
end

def mac?
  RUBY_PLATFORM.downcase.include? 'darwin'
end

def linux?
  RUBY_PLATFORM.downcase.include? 'linux'
end

def clone(url, options)
  # Options
  #   source: %(github, bitbucket, url)
  #   target: default /tmp
  #   name:
  #   branch:
  #   depth:
  #
  run %{git clone https://github.com/#{github}.git}
end
