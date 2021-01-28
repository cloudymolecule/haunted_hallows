Rails.application.routes.draw do
  resources :comments
  resources :rooms
  resources :boards
  resources :bookings
  resources :guests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
