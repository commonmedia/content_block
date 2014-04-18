Rails.application.routes.draw do
  mount ContentBlock::Engine => '/content-block'
end
