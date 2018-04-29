Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'

  resources :funds
  resources :wishlists
  resources :pay_methods
  resources :contact_informations
  resources :users
  resources :promises
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
