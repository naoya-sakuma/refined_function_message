Rails.application.routes.draw do
  get '/', to: 'blogs#index'
  resources :blogs do
    resources :comments
  end
  resources :users
  resources :sessions
  resources :relationships, only: [:create, :destroy]
end
