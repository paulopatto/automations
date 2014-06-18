#!/usr/bin/env ruby
#vim: set ft=ruby

namespace :install do
  desc 'Install nodejs'
  task :nodejs => [] do
    puts 'install node'

    clone('joyent/node')
  end
end
