Rails.application.routes.draw do
  resources :categories
  resources :wishlist_projects
  get 'users/index'

  devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',   to: 'users#show',  via: 'get'
  root 'home#index'
  get 'home/index'

  get 'addproject' , to: 'wishlists#addproject'
  get 'myprojects' , to: 'projects#myprojects'
  resources :funds
  resources :wishlists
  resources :pay_methods
  resources :contact_informations
  resources :promises
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
