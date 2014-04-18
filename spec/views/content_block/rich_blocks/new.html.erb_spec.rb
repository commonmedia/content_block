require 'spec_helper'

describe 'rich_blocks/new' do
  before(:each) do
    assign(:rich_block, stub_model(ContentBlock::RichBlock,
      name: 'MyString',
      title: 'MyString',
      content: 'MyString'
    ).as_new_record)
  end

  it 'renders new rich_block form' do
    render template: 'content_block/rich_blocks/index', layout: 'layouts/content_block/application'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select 'form[action=?][method=?]', rich_blocks_path, 'post' do
      assert_select 'input#rich_block_name[name=?]', 'rich_block[name]'
      assert_select 'input#rich_block_title[name=?]', 'rich_block[title]'
      assert_select 'input#rich_block_content[name=?]', 'rich_block[content]'
    end
  end
end
