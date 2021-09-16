Rails.application.routes.draw do
  resources :tweets
  devise_for :users
  resources :likes, only: [:create, :destroy]
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id/unfollow', to: 'follows#destroy', via: 'delete', :as => :unfollow #****
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweets#index"
end
