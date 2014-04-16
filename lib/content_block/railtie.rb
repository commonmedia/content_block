require 'rails'
require 'content_block/helper'

module ContentBlock
  class Railtie < Rails::Railtie
    initializer 'content_block.action_view' do
      ActiveSupport.on_load(:action_view) do
        include ContentBlock::Helper
      end
    end
  end
end
