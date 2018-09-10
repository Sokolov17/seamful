Rails.application.routes.draw do
  get '/', to: 'static_pages#home'
  resources :menuorders
  resources :orders
  resources :reviews
  resources :food_items
  resources :restaurants
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
