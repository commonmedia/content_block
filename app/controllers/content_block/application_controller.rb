module ContentBlock
  class ApplicationController < ::ApplicationController
    rescue_from CanCan::AccessDenied do |exception|
      redirect_to main_app.new_user_session_url, alert: exception.message
    end

    def current_ability
      # ContentBlock::Ability.new(content_block_user)
      @current_ability ||= ContentBlock::Ability.new(content_block_user)
    end
  end
end
