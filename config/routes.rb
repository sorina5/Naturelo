Rails.application.routes.draw do

  resources :products
  get 'static_pages/Home'
  get 'static_pages/About'
  get 'static_pages/Contact'


  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
