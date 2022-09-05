Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'products#index'
  get '/products', to: 'products#index'
  get '/categories', to: 'categories#index'
end
