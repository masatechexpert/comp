Rails.application.routes.draw do
  resources :todos
  devise_for :users
  root to: 'events#index'
  resources :events
  resources :users, only: [:edit, :update]

end
