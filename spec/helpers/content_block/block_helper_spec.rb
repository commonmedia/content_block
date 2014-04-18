require 'spec_helper'

module ContentBlock
  describe BlockHelper do
    describe '#rich_block' do
      it 'returns the block' do
        expect(helper.rich_block('this')).to eq('content')
      end
    end

    describe '#rich_block_with_title' do
      it 'returns the block with its title' do
        expect(helper.rich_block_with_title('this', 'h1')).to eq('<h1>title</h1>content')
      end
    end
  end
end
