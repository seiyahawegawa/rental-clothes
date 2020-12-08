Rails.application.routes.draw do
  root 'topscreens#index'
  resources :topscreens, only: [:index]
  resources :mens, only: [:index]
end
