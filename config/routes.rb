Rails.application.routes.draw do
  devise_for :users
  resources :restaurants do
    resources :reviews, except: [:show, :index]
  end
  get 'pages/about'
  get 'pages/contact'
  devise_scope :user do
    authenticated :user do
      root 'restaurants#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
