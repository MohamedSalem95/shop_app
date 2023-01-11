Rails.application.routes.draw do

  # website root
  root to: 'products#index', as: 'root'

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
