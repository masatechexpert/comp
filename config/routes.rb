Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events
  resources :users, only: [:index, :edit, :update]
  resources :todos
<<<<<<< HEAD
<<<<<<< Updated upstream
end
=======
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :bulletin_boards, only: [:index, :create]
  end
end
>>>>>>> Stashed changes
=======
  resources :groups, only: [:new, :create, :edit, :update] do
  end
end
>>>>>>> group
