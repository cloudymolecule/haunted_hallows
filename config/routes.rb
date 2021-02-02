Rails.application.routes.draw do
  root 'sessions#homepage', as: 'homepage'
  
  # match '/auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]
  # get "/auth/:provider/callback" => "sessions#omniauth"
  get "/auth/:provider/callback", to: 'sessions#omniauth'

  resources :boards
  resources :bookings
  resources :guests
  resources :rooms
  

  resources :guests, only: [:show, :index, :new] do
    resources :rooms
  end

  

  resources :boards, only: [:show, :index, :new] do
    resources :comments, shallow: true
  end
  resources :comments
  

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'



end
