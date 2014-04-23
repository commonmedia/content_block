require 'spec_helper'

describe 'rich-blocks/index' do
  before(:each) do
    assign(:rich_blocks, [stub_model(ContentBlock::RichBlock, name: 'Name',
                                                              title: 'Title',
                                                              content: 'Content'),
                          stub_model(ContentBlock::RichBlock, name: 'Name',
                                                              title: 'Title',
                                                              content: 'Content')])
  end

  it 'renders a list of rich_blocks' do
    render template: 'content_block/rich_blocks/index'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Content...', count: 2
  end
end
