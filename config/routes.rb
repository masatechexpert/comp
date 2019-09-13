Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events
  resources :users, only: [:edit, :update]
  resources :todos
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
