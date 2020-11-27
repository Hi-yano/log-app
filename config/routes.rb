Rails.application.routes.draw do
  devise_for :users
  root 'logs#index'
  resources :users, only: [:edit, :update, :show]
  resources :logs, only: [:index, :new, :create, :show]
  resources :areas, only: [:new, :create]
end