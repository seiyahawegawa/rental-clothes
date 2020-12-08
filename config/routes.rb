Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  root 'topscreens#index'
  resources :topscreens, only: [:index]
  resources :mens, only: [:index]
end
