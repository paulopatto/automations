#!/usr/bin/env ruby
#vim: set ft=ruby

namespace :install do
  desc 'Install Vundle. The Vim plugin manager.'
  task :vundle => [] do
    unless File.exist?(File.join(ENV['HOME'], '.vim', 'bundle', 'vundle.vim'))
      puts 'Installing vundle from github ...'

      run %{mkdir -p $HOME/.vim/bundle} unless File.exist?(File.join(ENV['HOME'], '.vim', 'bundle'))
      run %{git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/vundle.vim}
    end

    puts "Vundle installed in #{ENV['HOME']}/.vim/bundle/vundle.vim\n\n"
  end
end
