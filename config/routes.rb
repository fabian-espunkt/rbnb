Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: "pages#dashboard"

  resources :alpacas do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:destroy] do
    # resources :reviews, only: [:new, :create]
  end
end

