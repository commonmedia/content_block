# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'content_block/version'

Gem::Specification.new do |spec|
  spec.name          = "content_block"
  spec.version       = ContentBlock::VERSION
  spec.authors       = ["James Chevalier"]
  spec.email         = ["james.chevalier@commonmediainc.com"]
  spec.summary       = %q{Provide users with editable content blocks throughout their Rails site.}
  spec.description   = %q{Content blocks in Rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'coveralls'
end
