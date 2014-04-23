require 'spec_helper'

module ContentBlock
  describe BlockHelper do
    before :each do
      @rich_block = FactoryGirl.create(:content_block_rich_block)
    end

    describe '#rich_block' do
      it 'returns the block' do
        expect(helper.rich_block(@rich_block.name)).to eq(@rich_block.content)
      end
    end

    describe '#rich_block_with_title' do
      it 'returns the block with its title' do
        expect(helper.rich_block_with_title(@rich_block.name, 'h1')).to eq("<h1>#{@rich_block.title}</h1>#{@rich_block.content}")
      end
    end
  end
end
