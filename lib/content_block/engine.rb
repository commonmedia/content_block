module ContentBlock
  class Engine < ::Rails::Engine
    isolate_namespace ContentBlock

    config.generators do |g|
      g.test_framework      :rspec,        fixture: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.assets false
      g.helper false
    end

    # initializer 'content_block.action_controller' do |app|
    #   ActiveSupport.on_load :action_controller do
    #     helper ContentBlock::ApplicationHelper
    #   end
    # end
  end
end
