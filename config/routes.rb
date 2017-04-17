Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#login', as: 'login'
  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#delete'
  resources :users, only: [:index, :show]
  post 'friendships/:friend_id', to: 'friendships#create'
end
