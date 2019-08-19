
Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'alpacas/index'
  get 'alpacas/show'
  get 'alpacas/new'
  get 'alpacas/create'
  get 'alpacas/edit'
  get 'alpacas/update'
  get 'alpacas/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
