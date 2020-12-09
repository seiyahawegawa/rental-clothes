Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  # get 'users/index'
  root 'topscreens#index'
  resources :topscreens, only: [:index]
  resources :mens, only: [:index]
  resources :users, only: [:index]
end
