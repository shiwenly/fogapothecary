Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [:show, :new, :create, :index, :edit, :destroy,:update ]
  resources :pages, only: [:new, :create]
end
