Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'page', to: 'pages#show'
  patch 'page', to: 'pages#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pages, only: [:edit]

  resources :products, only: [:show, :new, :create, :index, :edit, :destroy,:update ]
  resources :journals, only: [:show, :new, :create, :index, :edit, :destroy,:update ]

  # get '/404', to: "errors#not_found"
  # get '/422', to: "errors#unacceptable"
  # get '/500', to: "errors#internal_error"
end
