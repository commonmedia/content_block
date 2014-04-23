require 'spec_helper'

module ContentBlock
  describe RichBlock do
    it 'has a valid factory' do
      FactoryGirl.build(:content_block_rich_block).should be_valid
    end

    it { should respond_to(:name) }
    it { should respond_to(:title) }
    it { should respond_to(:content) }
  end
end
