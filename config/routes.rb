Rails.application.routes.draw do
  resources :fundby_promises
  resources :categories
  resources :wishlist_projects
  get 'users/index'

  devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show, :edit]
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',   to: 'users#show',  via: 'get'
  match '/users/:id', to: 'users#destroy', via: 'delete'
  # match '/users/:id', to: 'users#edit', via: 'get'


  root 'home#index'
  get 'home/index'

  get 'addproject' , to: 'wishlists#addproject'
  get 'myprojects' , to: 'projects#myprojects'
  get 'outstandings' , to: 'projects#outstandings'
  resources :funds
  resources :wishlists
  resources :pay_methods
  resources :contact_informations
  resources :promises
  get 'projects/show'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
