require 'spec_helper'

module ContentBlock
  describe RichBlocksController do
    routes { ContentBlock::Engine.routes }

    describe 'GET index' do
      it 'assigns all rich_blocks as @rich_blocks' do
        rich_block = FactoryGirl.create(:content_block_rich_block)
        get :index
        assigns(:rich_blocks).should eq([rich_block])
      end
    end

    describe 'GET show' do
      it 'assigns the requested rich_block as @rich_block' do
        rich_block = FactoryGirl.create(:content_block_rich_block)
        get :show, {:id => rich_block.to_param}
        assigns(:rich_block).should eq(rich_block)
      end
    end

    describe 'GET new' do
      it 'assigns a new rich_block as @rich_block' do
        get :new
        assigns(:rich_block).should be_a_new(RichBlock)
      end
    end

    describe 'GET edit' do
      it 'assigns the requested rich_block as @rich_block' do
        rich_block = FactoryGirl.create(:content_block_rich_block)
        get :edit, {:id => rich_block.to_param}
        assigns(:rich_block).should eq(rich_block)
      end
    end

    describe 'POST create' do
      describe 'with valid params' do
        it 'creates a new RichBlock' do
          expect {
            post :create, {:rich_block => FactoryGirl.attributes_for(:content_block_rich_block)}
          }.to change(RichBlock, :count).by(1)
        end

        it 'assigns a newly created rich_block as @rich_block' do
          post :create, {:rich_block => FactoryGirl.attributes_for(:content_block_rich_block)}
          assigns(:rich_block).should be_a(RichBlock)
          assigns(:rich_block).should be_persisted
        end

        it 'redirects to the created rich_block' do
          post :create, {:rich_block => FactoryGirl.attributes_for(:content_block_rich_block)}
          response.should redirect_to(RichBlock.last)
        end
      end

      describe 'with invalid params' do
        it 'assigns a newly created but unsaved rich_block as @rich_block' do
          # Trigger the behavior that occurs when invalid params are submitted
          RichBlock.any_instance.stub(:save).and_return(false)
          post :create, {:rich_block => { 'name' => 'invalid value' }}
          assigns(:rich_block).should be_a_new(RichBlock)
        end

        it 're-renders the new template' do
          # Trigger the behavior that occurs when invalid params are submitted
          RichBlock.any_instance.stub(:save).and_return(false)
          post :create, {:rich_block => { 'name' => 'invalid value' }}
          response.should render_template('new')
        end
      end
    end

    describe 'PUT update' do
      describe 'with valid params' do
        it 'updates the requested rich_block' do
          rich_block = FactoryGirl.create(:content_block_rich_block)
          # Assuming there are no other rich_blocks in the database, this
          # specifies that the RichBlock created on the previous line
          # receives the :update_attributes message with whatever params are
          # submitted in the request.
          RichBlock.any_instance.should_receive(:update).with({ 'name' => 'MyString' })
          put :update, {:id => rich_block.to_param, :rich_block => { 'name' => 'MyString' }}
        end

        it 'assigns the requested rich_block as @rich_block' do
          rich_block = FactoryGirl.create(:content_block_rich_block)
          put :update, {:id => rich_block.to_param, :rich_block => FactoryGirl.attributes_for(:content_block_rich_block)}
          assigns(:rich_block).should eq(rich_block)
        end

        it 'redirects to the rich_block' do
          rich_block = FactoryGirl.create(:content_block_rich_block)
          put :update, {:id => rich_block.to_param, :rich_block => FactoryGirl.attributes_for(:content_block_rich_block)}
          response.should redirect_to(rich_block)
        end
      end

      describe 'with invalid params' do
        it 'assigns the rich_block as @rich_block' do
          rich_block = FactoryGirl.create(:content_block_rich_block)
          # Trigger the behavior that occurs when invalid params are submitted
          RichBlock.any_instance.stub(:save).and_return(false)
          put :update, {:id => rich_block.to_param, :rich_block => { 'name' => 'invalid value' }}
          assigns(:rich_block).should eq(rich_block)
        end

        it 're-renders the edit template' do
          rich_block = FactoryGirl.create(:content_block_rich_block)
          # Trigger the behavior that occurs when invalid params are submitted
          RichBlock.any_instance.stub(:save).and_return(false)
          put :update, {:id => rich_block.to_param, :rich_block => { 'name' => 'invalid value' }}
          response.should render_template('edit')
        end
      end
    end

    describe 'DELETE destroy' do
      it 'destroys the requested rich_block' do
        rich_block = FactoryGirl.create(:content_block_rich_block)
        expect {
          delete :destroy, {:id => rich_block.to_param}
        }.to change(RichBlock, :count).by(-1)
      end

      it 'redirects to the rich_blocks list' do
        rich_block = FactoryGirl.create(:content_block_rich_block)
        delete :destroy, {:id => rich_block.to_param}
        response.should redirect_to(rich_blocks_path)
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
