Rails.application.routes.draw do
  
  resources :weddings
  resources :comments
  
  root 'weddings#index'

  #devise_for :users
end
