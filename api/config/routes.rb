Rails.application.routes.draw do
  get 'messages/create'
  get 'rooms/index'
  post 'rooms/create'
  get 'rooms/:id' => 'rooms#show'
  post 'messages/create'
  get 'users/index'
  get 'users/history'
  get 'test/index'
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
