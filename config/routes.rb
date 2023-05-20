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
  #resources: checkout, only: [:create]
  get '/guide', to: 'static_pages#guide', as: 'guide'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/analytics', to: 'static_pages#analytics', as: 'analytics'
  get '/cart', to: 'cart#show', as: 'cart'
  patch '/cart', to: 'cart#update', as: 'edit_cart'
  post '/orders', to: 'orders#create', as: 'orders'
  get '/orders/:id', to: 'orders#show', as: 'order'
  get '/orders', to: 'orders#index'
  get '/restaurants/:id/reviews', to: 'restaurants#restaurant_reviews', as: 'restaurant_reviews'
  get '/users/:id/orders', to: 'users#orders', as: 'user_orders'
  get '/users/:id/reviews', to: 'users#reviews', as: 'user_reviews'
  get 'guide/bagels', to: 'guides#bagels', as: 'bagel'
  get 'guide/chinese', to: 'guides#chinese', as: 'chinese'
  get 'guide/greek', to: 'guides#greek', as: 'greek'
  get 'guide/health', to: 'guides#health', as: 'health'
  get 'guide/italian', to: 'guides#italian', as: 'italian'
  get 'guide/mexican', to: 'guides#mexican', as: 'mexican'
  get 'guide/american', to: 'guides#american', as: 'american'
  get 'guide/thai', to: 'guides#thai', as: 'thai'
  get 'admin/export/:id', to: 'admin/user#export'
  get 'admin/export_json/:id', to: 'admin/user#export_json'
  namespace :admin do
    resources :user
  end
  resources :users do
    member do
      get :confirm_email
    end
  end
  post 'checkout/create', to: 'checkout#create'
      
    
end
