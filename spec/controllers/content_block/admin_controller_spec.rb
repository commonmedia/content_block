require 'spec_helper'

module ContentBlock
  describe AdminController do
    routes { ContentBlock::Engine.routes }

    describe 'GET index' do
      it 'gets index' do
        get :index
        response.should be_success
      end
    end

    describe 'rescue_from exceptions' do
      it 'rescues from CanCan::AccessDenied' do
        controller.stub(:authorize!) { raise CanCan::AccessDenied }
        get :index
        response.should redirect_to('/users/sign_in')
      end
    end
  end
end
