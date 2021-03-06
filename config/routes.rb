Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :categories
  resources :products

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"

  get 'home' => 'pages#home'
end
