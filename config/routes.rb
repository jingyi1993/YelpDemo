Rails.application.routes.draw do
  resources :restaurants
  get 'pages/about'
  get 'pages/contact'
  root 'restaurants#index'
end
