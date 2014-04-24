require 'bundler'

module ContentBlock
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      source_root File.expand_path('../../../../config/initializers', __FILE__)

      desc "Installs ContentBlock:\n
        * Mounts routes\n
        * Copies initializer\n
        * Loads Migration\n
        * Runs Migration\n
        * Creates initial instances"

      def mount_engine
        # Must be in reverse order to keep priorities
        route "mount Ckeditor::Engine => '/ckeditor'"
        route "mount ContentBlock::Engine => '/content-block'"
      end

      def add_to_application_controller
        inject_into_file 'app/controllers/application_controller.rb', after: "class ApplicationController < ActionController::Base\n"  do <<-RUBY

  helper ContentBlock::Engine.helpers

  def content_block_user
    current_user
  end
  helper_method :content_block_user

        RUBY
        end
      end

      def run_migrations
        rake 'content_block:install:migrations'
        rake 'db:migrate'
      end

      def copy_ckeditor_initializer
        copy_file 'ckeditor.rb', "config/initializers/ckeditor.rb"
      end
    end
  end
end
