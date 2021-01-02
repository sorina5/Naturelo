Rails.application.routes.draw do
  
  root 'static_pages#home'

  get '/home' => 'static_pages#home'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'

  get '/login' => 'user# login'
  get '/logout' => 'user#logout'

  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  resources :products
  # get 'static_pages/Home'
  # get 'static_pages/About'
  # get 'static_pages/Contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
