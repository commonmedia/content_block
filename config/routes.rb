ContentBlock::Engine.routes.draw do
  resources 'rich-blocks', controller: :rich_blocks, as: :rich_blocks
end
