# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content_block_rich_block, :class => 'ContentBlock::RichBlock' do
    name "Name"
    title "Title"
    content "Content"
  end
end
