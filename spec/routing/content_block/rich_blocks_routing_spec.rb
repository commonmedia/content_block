require 'spec_helper'

module ContentBlock
  describe RichBlocksController do
    describe 'routing' do
      routes { ContentBlock::Engine.routes }

      it 'routes to #index' do
        get('/rich-blocks').should route_to('content_block/rich_blocks#index')
      end

      it 'routes to #new' do
        get('/rich-blocks/new').should route_to('content_block/rich_blocks#new')
      end

      it 'routes to #show' do
        get('/rich-blocks/1').should route_to('content_block/rich_blocks#show', id: '1')
      end

      it 'routes to #edit' do
        get('/rich-blocks/1/edit').should route_to('content_block/rich_blocks#edit', id: '1')
      end

      it 'routes to #create' do
        post('/rich-blocks').should route_to('content_block/rich_blocks#create')
      end

      it 'routes to #update' do
        put('/rich-blocks/1').should route_to('content_block/rich_blocks#update', id: '1')
      end

      it 'routes to #destroy' do
        delete('/rich-blocks/1').should route_to('content_block/rich_blocks#destroy', id: '1')
      end
    end
  end
end
