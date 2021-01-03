Rails.application.routes.draw do

  get 'orderprods/index'
  get 'orderprods/show'
  get 'orderprods/new'
  get 'orderprods/edit'

  resources :orders do
    resources:orderprods
  end

  resources :categories

  devise_for :users do
    resources:orders 
  end 

  get '/checkout' => 'cart#createOrder'
  post '/search' => 'products#search'
  get '/payment' => 'orders#pay'
  get '/shipped/:id' => 'orders#shipped'
  get 'cart/index'

  resources :products
  root 'static_pages#home'

  get '/products', to: 'static_pages#products'

  get '/pay/:id' => 'static_pages#pay'

  get '/about', to: 'static_pages#about'

  get '/login', to:'user#login'
  get '/logout', to:'user#logout'

  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clear'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to:'cart#remove'


 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
