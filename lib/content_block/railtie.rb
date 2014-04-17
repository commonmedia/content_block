require 'rails'
require 'content_block/helper'

module ContentBlock
  class Railtie < Rails::Railtie
    initializer 'content_block' do
      ActiveSupport.on_load(:action_view) do
        include ContentBlock::Helper
      end

      # Make ContentBlock available in all controllers
      ActiveSupport.on_load(:action_controller) do
        include ContentBlock::Helper
      end
    end
  end
end
