Rails.application.routes.draw do
  resources :sellers
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
