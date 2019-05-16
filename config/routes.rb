Rails.application.routes.draw do

  root to: "home#index"

  resources :clients
  resources :notifications
  resources :notes

  get 'birthday', to: 'clients#birthday'
  devise_for :users


end
