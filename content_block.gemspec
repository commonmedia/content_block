$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'content_block/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'content_block'
  s.version     = ContentBlock::VERSION
  s.authors     = ['James Chevalier']
  s.email       = ['james.chevalier@commonmediainc.com']
  s.homepage    = 'https://github.com/commonmedia/content_block'
  s.summary     = 'Provide users with editable content blocks throughout their Rails site.'
  s.description = 'Content blocks in Rails'
  s.license     = 'MIT'

  s.files      = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'cancancan', '~> 1.7'
  s.add_dependency 'ckeditor', '~> 4.0'
  s.add_dependency 'simple_form', '~> 3.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'devise', '~> 3.2'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
