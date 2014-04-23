Rails.application.routes.draw do
  mount ContentBlock::Engine => '/content-block'

  get '/users/sign_in' => 'dummy#new_user_session', as: :new_user_session
end
