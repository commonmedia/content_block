require_dependency 'content_block/application_controller'

module ContentBlock
  class AdminController < ContentBlock::ApplicationController
    authorize_resource class: ContentBlock::RichBlock

    def index
    end
  end
end
