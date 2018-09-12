Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/', to: 'static_pages#home', as: 'home'
  resources :menuorders
  # resources :orders
  resources :reviews
  resources :food_items
  resources :restaurants
  resources :users
  get '/about', to: 'static_pages#about', as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/cart', to: 'cart#show', as: 'cart'
  patch '/cart', to: 'cart#update', as: 'edit_cart'
  post '/orders', to: 'orders#create', as: 'orders'
  get '/orders/:id', to: 'orders#show', as: 'order'
  get '/orders', to: 'orders#index'
  get '/restaurants/:id/reviews', to: 'restaurants#restaurant_reviews', as: 'restaurant_reviews'
  get '/users/:id/orders', to: 'users#orders', as: 'user_orders'
  get '/users/:id/reviews', to: 'users#reviews', as: 'user_reviews'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
