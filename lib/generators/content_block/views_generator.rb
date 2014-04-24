require 'rails/generators/base'

module ContentBlock
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      desc 'Copies ContentBlock views to your application.'
      source_root File.expand_path('../../../../app/views/content_block', __FILE__)

      def copy_views
        directory 'admin', 'app/views/content_block/admin'
        directory 'rich_blocks', 'app/views/content_block/rich_blocks'
      end
    end
  end
end
