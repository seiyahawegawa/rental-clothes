Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  # root 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end

  devise_scope :user do
    get "complete", :to => "users/registrations#complete"
  end

  # get 'users/index'
  root 'topscreens#index'
  resources :topscreens, only: [:index]
  resources :mens, only: [:index]
  resources :users, only: [:index]
end
