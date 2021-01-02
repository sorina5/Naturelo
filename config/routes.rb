Rails.application.routes.draw do

  get 'cart/index'
  
  resources :products
  root 'static_pages#home'
# get '/home' => 'static_pages#home'
  get '/products', to: 'static_pages#products'
  get '/about', to: 'static_pages#about'
  get '/contact', to:'static_pages#contact'

  get '/login', to:'user# login'
  get '/logout', to:'user#logout'

  get '/cart/clear', to: 'cart#clear'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to:'cart#remove'
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
