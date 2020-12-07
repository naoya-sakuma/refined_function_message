Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  resources :users
  resources :sessions
  resources :relationships, only: [:create, :destroy]
end
