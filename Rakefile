require 'bundler/gem_tasks'

task :console do
  require 'irb'
  require 'irb/completion'
  require 'content_block'
  ARGV.clear
  IRB.start
end

task :travis do
  system('bundle exec rspec')
end

task default: :travis
