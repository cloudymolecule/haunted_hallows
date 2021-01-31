Rails.application.routes.draw do
  root 'sessions#homepage', as: 'homepage'

  # resources :comments
  resources :rooms
  resources :boards
  resources :bookings
  resources :guests

  resources :guests, only: [:show, :index, :new] do
    resources :rooms
  end

  resources :boards, only: [:show, :index, :new] do
    resources :comments
  end

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
