Rails.application.routes.draw do

  root to: "home#index"

  resources :clients
  devise_for :users
 

end
