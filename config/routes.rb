Rails.application.routes.draw do
  devise_for :users
  resources :restaurants
  get 'pages/about'
  get 'pages/contact'
  root 'restaurants#index'
end
