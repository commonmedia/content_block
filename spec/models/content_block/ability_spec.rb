require 'spec_helper'
require 'cancan/matchers'

describe Ability do
  describe 'admin' do
    before :each do
      @user    = User.new(1, 'name', 'admin')
      @ability = Ability.new(@user)
    end
    subject { @ability }

    it 'can manage RichBlock' do
      should be_able_to(:manage, ContentBlock::RichBlock)
    end
  end


  describe 'anonymous' do
    before(:each) { @ability = Ability.new(nil) }
    subject { @ability }

    it 'cannot read RichBlock' do
      should_not be_able_to(:read, ContentBlock::RichBlock)
    end

    it 'cannot manage RichBlock' do
      should_not be_able_to(:manage, ContentBlock::RichBlock)
    end
  end
end
