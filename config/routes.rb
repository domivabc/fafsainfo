Rails.application.routes.draw do  

  resources :events
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'home#index'

  get 'home/index'
  get 'home/about'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
