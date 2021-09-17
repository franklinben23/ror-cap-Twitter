Rails.application.routes.draw do
  resources :tweets
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :likes, only: [:create, :destroy]
  resources :follows, only: [:create, :destroy]
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get', :as => :show_user
  match '/users/:id/unfollow', to: 'follows#destroy', via: 'delete', :as => :unfollow #****
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweets#index"
end
