Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :fundby_promises
  resources :categories
  resources :wishlist_projects
  get 'users/index'

  devise_for :users, :path_prefix => 'd',controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  resources :users, :only =>[:show]
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',   to: 'users#show',  via: 'get'
  match '/users/:id', to: 'users#destroy', via: 'delete'

  root 'home#index'
  get 'home/index'

  get 'addproject' , to: 'wishlists#addproject'
  get 'myprojects' , to: 'projects#myprojects'
  resources :funds
  resources :wishlists
  resources :pay_methods
  resources :contact_informations
  resources :promises
  get 'projects/show'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
