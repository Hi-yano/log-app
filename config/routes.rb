Rails.application.routes.draw do
  devise_for :users
  root 'logs#index'
  resources :users, only: [:edit, :update, :show]
  resources :logs, only: [:new, :create, :show]
end
