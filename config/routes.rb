Rails.application.routes.draw do
  resources :sellers
  get '/buyers/stats', to: 'buyers#stats', as: 'buyer_stats'
  resources :buyers
  resources :swipes
  resources :wishlists
  get 'sessions/new'
  resources :listings
  resources :clubs
  resources :products


  get   '/login', to: 'sessions#splash'
  patch  '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  patch '/carts', to: 'carts#update', as: 'add_listing_to_cart'
  get '/carts', to: 'carts#index', as: 'carts'
  delete '/carts', to: 'carts#destroy', as: 'clear_cart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
