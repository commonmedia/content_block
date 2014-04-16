require 'content_block/railtie' if defined?(Rails::Railtie)
require 'content_block/version'

begin
  require 'pry'
rescue LoadError
end

module ContentBlock
end
