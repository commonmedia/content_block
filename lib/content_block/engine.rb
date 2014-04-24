module ContentBlock
  class Engine < ::Rails::Engine
    isolate_namespace ContentBlock

    config.generators do |g|
      g.test_framework      :rspec,        fixture: false
      g.integration_tool    :rspec
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
