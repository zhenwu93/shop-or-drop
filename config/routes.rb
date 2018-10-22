Rails.application.routes.draw do
  resources :listings
  resources :clubs
  resources :products
  resources :sellers
  resources :buyers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
