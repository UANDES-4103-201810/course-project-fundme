Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :fundby_promises
  resources :categories
  resources :wishlist_projects
  get 'users/index'

  devise_for :users, :path_prefix => 'd',controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  resources :users, :only =>[:show,:edit, :update]
  match '/users',   to: 'users#index',   via: 'get'
  # match '/users/:id',   to: 'users#show',  via: 'get'
  # match '/users/:id', to: 'users#destroy', via: 'delete'
  match '/users/:id/edit', to: 'users#edit', via: 'get'

  root 'home#index'
  get 'home/index'

  get 'addproject' , to: 'wishlists#addproject'
  get 'myprojects' , to: 'projects#myprojects'


  resources :funds do
    member do
      get :confirm_email
    end
  end

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
