Rails.application.routes.draw do
  devise_for :users
  root 'logs#index'
  resources :users, only: [:edit, :update, :show]
  resources :logs, only: [:index, :new, :create, :show]
  resources :area, only: [:index, :create]

end