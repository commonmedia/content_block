module ContentBlock
  class ApplicationController < ActionController::Base
    def current_ability
      @current_ability ||= ContentBlock::Ability.new(current_user)
    end

    rescue_from CanCan::AccessDenied do |exception|
      redirect_to main_app.new_user_session_url, alert: exception.message
    end
  end
end
