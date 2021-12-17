Rails.application.routes.draw do
  get "/pages", to: 'pages#home'
  devise_for :users
  resources :customers
  resources :destinations
  resources :vehicles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homepages#index"
end
