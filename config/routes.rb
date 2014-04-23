ContentBlock::Engine.routes.draw do
  resources 'rich-blocks', controller: :rich_blocks, as: :rich_blocks
  get '/admin' => 'admin#index', as: :content_block_admin
end
