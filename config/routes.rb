Rails.application.routes.draw do

  root to: "home#index"

  resources :clients
  resources :notify
  resources :notes

  get 'birthday', to: 'clients#birthday'
  devise_for :users


end
