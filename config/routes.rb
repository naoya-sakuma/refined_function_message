Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  resources :blogs do
    resources :comments
  end
  resources :users
  resources :sessions
  resources :relationships, only: [:create, :destroy]
end
