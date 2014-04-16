require 'spec_helper'
require 'content_block/helper'

class FakeView
  include ContentBlock::Helper
end

describe FakeView do
  describe '#rich_block' do
    it 'returns the block' do
      block = FakeView.new.rich_block('block name')
      expect(block).to eq('block name')
    end
  end
end
