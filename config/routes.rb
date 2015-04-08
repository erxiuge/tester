Rails.application.routes.draw do
  
  resources :weddings
  
  root 'weddings#new'

  #devise_for :users
end
