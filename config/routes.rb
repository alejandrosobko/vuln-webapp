Rails.application.routes.draw do
  root 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :comments

  get 'login', to: 'sessions#new', as: 'login'
  get 'signup', to: 'users#new', as: 'signup'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
