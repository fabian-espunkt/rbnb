Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :alpacas do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
