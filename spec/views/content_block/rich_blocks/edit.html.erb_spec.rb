require 'spec_helper'

describe 'rich_blocks/edit' do
  before(:each) do
    @rich_block = assign(:rich_block, stub_model(ContentBlock::RichBlock,
      name: 'MyString',
      title: 'MyString',
      content: 'MyString'
    ))
  end

  it 'renders the edit rich_block form' do
    render template: 'content_block/rich_blocks/edit', layout: 'layouts/content_block/application'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select 'form[action=?][method=?]', content_block.rich_block_path(@rich_block), 'post' do
      assert_select 'input#rich_block_name[name=?]', 'rich_block[name]'
      assert_select 'input#rich_block_title[name=?]', 'rich_block[title]'
      assert_select 'textarea#rich_block_content[name=?]', 'rich_block[content]'
    end
  end
end
