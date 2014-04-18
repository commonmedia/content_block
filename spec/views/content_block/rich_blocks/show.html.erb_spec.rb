require 'spec_helper'

describe 'rich_blocks/show' do
  before(:each) do
    @rich_block = assign(:rich_block, stub_model(ContentBlock::RichBlock,
      name: 'Name',
      title: 'Title',
      content: 'Content'
    ))
  end

  it 'renders attributes in <p>' do
    render template: 'content_block/rich_blocks/index', layout: 'layouts/content_block/application'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Title/)
    rendered.should match(/Content/)
  end
end
