Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events
  resources :users, only: [:index, :edit, :update]
  resources :todos
  resources :groups
    resources :messages, only: [:index, :create]
end
